package com.example.libgodot

import android.app.Activity
import android.hardware.HardwareBuffer
import android.view.ViewGroup
import android.widget.FrameLayout
import io.flutter.embedding.engine.plugins.FlutterPlugin
import io.flutter.embedding.engine.plugins.activity.ActivityAware
import io.flutter.embedding.engine.plugins.activity.ActivityPluginBinding
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel
import io.flutter.plugin.common.MethodChannel.MethodCallHandler
import io.flutter.plugin.common.MethodChannel.Result
import io.flutter.view.TextureRegistry
import org.godotengine.godot.Godot
import org.godotengine.godot.GodotHost

/**
 * LibgodotPlugin
 *
 * Boots a Godot instance using the engine's own Android embedding (org.godotengine.godot.Godot /
 * GodotLib), running the "offscreen" display driver, and streams its rendered frames (delivered
 * as AHardwareBuffers via [onOffscreenFrameAvailable]) into a Flutter texture.
 *
 * Unlike the Linux plugin, Godot is not booted via the desktop libgodot_create_godot_instance() C
 * API here: Android's OS_Android is tightly coupled to the Java-side Godot/GodotJavaWrapper (file
 * access, JNI callbacks, etc.), so there is no headless equivalent. Instead this uses the same
 * Java/Kotlin embedding path a normal Godot Android app uses, which the engine already supports
 * for offscreen embedding (see display_server_android_offscreen.h upstream).
 *
 * Only one Godot instance may be created per process: [Godot] is a process-wide singleton and,
 * same as the other platforms' libgodot_create_godot_instance(), does not support
 * reinitialization. [destroyInstance] tears down the engine via [Godot.onDestroy], which will
 * force-quit the process if the render thread doesn't exit promptly -- this matches the
 * lifecycle Godot's Android embedding is designed for (an app that owns the whole process),
 * rather than a cleanly restartable plugin instance.
 */
class LibgodotPlugin :
    FlutterPlugin,
    MethodCallHandler,
    ActivityAware,
    GodotHost {
    private lateinit var channel: MethodChannel
    private var textureRegistry: TextureRegistry? = null
    private var activity: Activity? = null
    private var godot: Godot? = null

    // Non-null once createInstance() has succeeded; single-instance-per-process, see class doc.
    private var containerLayout: FrameLayout? = null
    private var surfaceProducer: TextureRegistry.SurfaceProducer? = null
    private var offscreenRenderer: GodotOffscreenRenderer? = null

    override fun onAttachedToEngine(flutterPluginBinding: FlutterPlugin.FlutterPluginBinding) {
        channel = MethodChannel(flutterPluginBinding.binaryMessenger, "libgodot")
        channel.setMethodCallHandler(this)
        textureRegistry = flutterPluginBinding.textureRegistry
    }

    override fun onDetachedFromEngine(binding: FlutterPlugin.FlutterPluginBinding) {
        channel.setMethodCallHandler(null)
        textureRegistry = null
    }

    override fun onAttachedToActivity(binding: ActivityPluginBinding) {
        activity = binding.activity
        godot = Godot.getInstance(binding.activity)
    }

    override fun onDetachedFromActivityForConfigChanges() {
        activity = null
    }

    override fun onReattachedToActivityForConfigChanges(binding: ActivityPluginBinding) {
        activity = binding.activity
    }

    override fun onDetachedFromActivity() {
        activity = null
    }

    override fun onMethodCall(call: MethodCall, result: Result) {
        when (call.method) {
            "getPlatformVersion" -> result.success("Android ${android.os.Build.VERSION.RELEASE}")
            "createInstance" -> handleCreateInstance(call, result)
            "destroyInstance" -> handleDestroyInstance(call, result)
            else -> result.notImplemented()
        }
    }

    private fun handleCreateInstance(call: MethodCall, result: Result) {
        if (containerLayout != null) {
            result.error("create_instance_failed", "Only one Godot Instance may be created.", null)
            return
        }

        val projectPath = call.argument<String>("projectPath")
        if (projectPath == null) {
            result.error("invalid_args", "createInstance requires a string \"projectPath\" argument.", null)
            return
        }
        val width = call.argument<Int>("width") ?: 480
        val height = call.argument<Int>("height") ?: 270

        val host = activity
        val engine = godot
        if (host == null || engine == null) {
            result.error("create_instance_failed", "No Activity is currently attached.", null)
            return
        }

        val commandLine = listOf(
            "--path", projectPath,
            "--offscreen",
            "--resolution", "${width}x${height}",
            "--rendering-driver", "vulkan",
        )

        try {
            if (!engine.initEngine(this, commandLine)) {
                result.error("create_instance_failed", "Godot engine initialization failed; see logcat for the engine log.", null)
                return
            }

            // onInitRenderView() unconditionally creates a real (Vulkan-backed) SurfaceView and
            // starts its render thread; the offscreen display driver never draws into it, but the
            // render thread's lifecycle is gated on that SurfaceView actually receiving a Surface
            // from the window (see VkThread.readyToDraw), so it must be attached to the activity's
            // window to ever start ticking. It's kept to a single pixel and tucked in a corner so
            // nothing is visibly drawn from it; the actual output is delivered separately via
            // onOffscreenFrameAvailable() below.
            val layout = engine.onInitRenderView(this)
            if (layout == null) {
                result.error("create_instance_failed", "Godot render view initialization failed.", null)
                return
            }
            val contentRoot = host.findViewById<ViewGroup>(android.R.id.content)
            contentRoot.addView(layout, ViewGroup.LayoutParams(1, 1))
            containerLayout = layout

            engine.onStart(this)
            engine.onResume(this)
        } catch (e: Exception) {
            containerLayout?.let { contentRoot -> (contentRoot.parent as? ViewGroup)?.removeView(contentRoot) }
            containerLayout = null
            result.error("create_instance_failed", e.message, null)
            return
        }

        val renderer = GodotOffscreenRenderer()
        if (!renderer.isValid) {
            result.error("create_instance_failed", "Failed to initialize the EGL renderer.", null)
            return
        }
        offscreenRenderer = renderer

        val producer = textureRegistry!!.createSurfaceProducer()
        producer.setSize(width, height)
        renderer.setSurface(producer.surface)
        producer.setCallback(object : TextureRegistry.SurfaceProducer.Callback {
            override fun onSurfaceAvailable() {
                renderer.setSurface(producer.surface)
            }

            override fun onSurfaceDestroyed() {
                renderer.clearSurface()
            }
        })
        surfaceProducer = producer

        result.success(producer.id())
    }

    private fun handleDestroyInstance(call: MethodCall, result: Result) {
        val engine = godot
        if (containerLayout == null || engine == null) {
            result.success(null)
            return
        }

        offscreenRenderer?.destroy()
        offscreenRenderer = null

        surfaceProducer?.release()
        surfaceProducer = null

        containerLayout?.let { layout -> (layout.parent as? ViewGroup)?.removeView(layout) }
        containerLayout = null

        engine.onDestroy(this)

        result.success(null)
    }

    // MARK: - GodotHost

    override fun getActivity(): Activity? = activity

    override fun getGodot(): Godot = godot ?: Godot.getInstance(requireNotNull(activity) { "No Activity is currently attached." })

    override fun onOffscreenFrameAvailable(buffer: HardwareBuffer, width: Int, height: Int) {
        offscreenRenderer?.submitFrame(buffer, width, height)
    }
}
