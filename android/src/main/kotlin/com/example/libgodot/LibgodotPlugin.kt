package com.example.libgodot

import android.app.Activity
import android.os.Handler
import android.os.Looper
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
 * as AHardwareBuffers, forwarded straight from native code via native/godot_core/godot_core.h's
 * frame-callback registration -- see [GodotOffscreenRenderer]) into a Flutter texture.
 *
 * Unlike the Linux/macOS plugin, Godot is not booted via the desktop
 * libgodot_create_godot_instance() C API here: Android's OS_Android is tightly coupled to the
 * Java-side Godot/GodotJavaWrapper (file access, JNI callbacks, etc.), so there is no headless
 * equivalent. Instead this uses the same Java/Kotlin embedding path a normal Godot Android app
 * uses, passing [GodotOffscreenRenderer.prepareInitFunc]'s result as [Godot.initEngine]'s
 * `initFunc` argument so the engine's own libgodot_android_get_godot_instance() (see
 * platform/android/libgodot_android.cpp upstream) has something non-null to hand back -- once
 * that handle is in hand, resize/frame-callback registration reuse the exact same
 * native/godot_core/godot_core.h logic every other platform uses.
 *
 * `initEngine()`/`onInitRenderView()`/`onStart()`/`onResume()` only *start* bringing the engine
 * up: `DisplayServer::create()` (which is what actually makes the "offscreen" driver -- and
 * therefore libgodot_android_get_godot_instance() -- live) doesn't run until `Main::setup2()`,
 * which happens asynchronously on the engine's own thread via `GodotLib.step()`, not synchronously
 * on the calling thread the way it does on every other platform. So the handle fetch/frame-callback
 * registration/texture creation can't happen right after `onResume()` returns -- it's deferred to
 * [onGodotMainLoopStarted], the `GodotHost` callback for "the engine's main loop has actually
 * started," with `createInstance`'s `Result` stashed until then.
 *
 * Because the boot sequence itself is Android-specific (there's no equivalent of
 * godot_core_create()/_start() for this platform -- see godot_core_desktop.cpp's header comment),
 * this plugin keeps its own `createInstance`/`destroyInstance` MethodChannel calls rather than
 * the `registerTexture`/`unregisterTexture` pair macOS/Linux use: those platforms have Dart create
 * the instance directly via FFI and only need a channel call to register the resulting handle as
 * a texture, but Android has to do both steps together, natively. `createInstance` returns both
 * the texture id and the instance's native handle address for reference, but resize is a
 * `resizeInstance` channel call too (see [handleResizeInstance]), not FFI: Flutter's
 * `TextureRegistry.SurfaceProducer` needs an explicit `setSize()` alongside `godot_core_resize`,
 * and only this plugin owns that producer.
 *
 * Only one Godot instance may be created per process: [Godot] is a process-wide singleton and,
 * same as the other platforms' libgodot_create_godot_instance(), does not support
 * reinitialization. [destroyInstance] tears down the engine via [Godot.onDestroy], which will
 * force-quit the process if the render thread doesn't exit promptly -- this matches the
 * lifecycle Godot's Android embedding is designed for (an app that owns the whole process),
 * rather than a cleanly restartable plugin instance.
 *
 * Unlike the other platforms, the `projectPath` argument to `createInstance` is NOT honored here:
 * Godot's Android build always resolves `res://` against the APK's own bundled assets
 * (AAssetManager), regardless of `--path` -- this is by design and matches how every real
 * exported Godot Android game works, so it isn't something to work around by patching the
 * engine. Concretely, this means the Godot project must be placed under this app module's own
 * `src/main/assets/` (see example/android/app/src/main/assets/ for this plugin's example) at
 * build time, rather than supplied as a runtime path like on Linux/macOS.
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
    private val mainHandler = Handler(Looper.getMainLooper())

    // Non-null once createInstance() has succeeded; single-instance-per-process, see class doc.
    private var containerLayout: FrameLayout? = null
    private var surfaceProducer: TextureRegistry.SurfaceProducer? = null
    private var offscreenRenderer: GodotOffscreenRenderer? = null
    private var godotInstanceHandle: Long = 0L

    // Set by handleCreateInstance while waiting for onGodotMainLoopStarted(); cleared once that
    // fires (or the instance is torn down before it does).
    private var pendingResult: Result? = null
    private var pendingWidth = 0
    private var pendingHeight = 0

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
            "resizeInstance" -> handleResizeInstance(call, result)
            else -> result.notImplemented()
        }
    }

    private fun handleCreateInstance(call: MethodCall, result: Result) {
        if (containerLayout != null) {
            result.error("create_instance_failed", "Only one Godot Instance may be created.", null)
            return
        }

        // Unlike the other platforms, `projectPath` is not forwarded to the engine here: Android
        // only ever loads a project bundled into the APK's own assets (res://), the same way
        // every real exported Godot Android game does -- see the class doc for why `--path`
        // pointing at an arbitrary runtime directory doesn't work here. Still required/validated
        // for API consistency with the other platforms' method channel calls.
        if (call.argument<String>("projectPath") == null) {
            result.error("invalid_args", "createInstance requires a string \"projectPath\" argument.", null)
            return
        }
        val width = call.argument<Int>("width") ?: 480
        val height = call.argument<Int>("height") ?: 270
        val initFunctionAddress = call.argument<Number>("initFunctionAddress")?.toLong() ?: 0L

        val host = activity
        val engine = godot
        if (host == null || engine == null) {
            result.error("create_instance_failed", "No Activity is currently attached.", null)
            return
        }

        val commandLine = listOf(
            "--offscreen",
            "--resolution", "${width}x${height}",
            "--rendering-driver", "vulkan",
        )

        // Combines initFunctionAddress (e.g. a Dart-supplied
        // GodotDartEntryPoint.nativeFunctionPointer.address from package:godot_dart, or 0 for
        // none) with this plugin's own init logic -- see native/godot_core/godot_core.h's
        // godot_core_prepare_init_func. Must happen before initEngine()/GodotLib.setup(), and the
        // result is what makes libgodot_android_get_godot_instance() return non-null once the
        // engine's main loop actually starts (see onGodotMainLoopStarted below).
        val preparedInitFunc = GodotOffscreenRenderer.prepareInitFunc(initFunctionAddress)

        try {
            if (!engine.initEngine(this, commandLine, initFunc = preparedInitFunc)) {
                result.error("create_instance_failed", "Godot engine initialization failed; see logcat for the engine log.", null)
                return
            }

            // onInitRenderView() unconditionally creates a real (Vulkan-backed) SurfaceView and
            // starts its render thread; the offscreen display driver never draws into it, but the
            // render thread's lifecycle is gated on that SurfaceView actually receiving a Surface
            // from the window (see VkThread.readyToDraw), so it must be attached to the activity's
            // window to ever start ticking. It's kept to a single pixel and tucked in a corner so
            // nothing is visibly drawn from it; the actual output is delivered separately via
            // the frame callback registered on offscreenRenderer in onGodotMainLoopStarted below.
            val layout = engine.onInitRenderView(this)
            if (layout == null) {
                result.error("create_instance_failed", "Godot render view initialization failed.", null)
                return
            }
            val contentRoot = host.findViewById<ViewGroup>(android.R.id.content)
            contentRoot.addView(layout, ViewGroup.LayoutParams(1, 1))
            containerLayout = layout

            pendingResult = result
            pendingWidth = width
            pendingHeight = height

            engine.onStart(this)
            engine.onResume(this)
        } catch (e: Exception) {
            pendingResult = null
            containerLayout?.let { contentRoot -> (contentRoot.parent as? ViewGroup)?.removeView(contentRoot) }
            containerLayout = null
            result.error("create_instance_failed", e.message, null)
            return
        }
        // result is completed from onGodotMainLoopStarted() once DisplayServer::create() has
        // actually run, not here.
    }

    private fun handleDestroyInstance(call: MethodCall, result: Result) {
        val engine = godot
        if (containerLayout == null || engine == null) {
            result.success(null)
            return
        }

        pendingResult = null

        offscreenRenderer?.destroy()
        offscreenRenderer = null

        surfaceProducer?.release()
        surfaceProducer = null

        containerLayout?.let { layout -> (layout.parent as? ViewGroup)?.removeView(layout) }
        containerLayout = null

        godotInstanceHandle = 0L

        engine.onDestroy(this)

        result.success(null)
    }

    private fun handleResizeInstance(call: MethodCall, result: Result) {
        val producer = surfaceProducer
        val handle = godotInstanceHandle
        val engine = godot
        if (producer == null || handle == 0L || engine == null) {
            result.error("invalid_texture_id", "No instance is currently registered.", null)
            return
        }

        val width = call.argument<Int>("width") ?: 0
        val height = call.argument<Int>("height") ?: 0
        if (width <= 0 || height <= 0) {
            result.error("invalid_args", "resizeInstance requires positive \"width\"/\"height\" arguments.", null)
            return
        }

        // Update Flutter's own consumer-side expectation first, then kick off the engine's
        // reallocation -- see GodotOffscreenRenderer's class doc for why this can't just be a
        // direct FFI call into godot_core_resize from Dart the way every other platform does it.
        //
        // producer.setSize() alone isn't enough: EGL_WIDTH/EGL_HEIGHT on the EGLSurface
        // nativeSetSurface() created are fixed at eglCreateWindowSurface() time on this device/
        // driver, not tracked live off the underlying ANativeWindow -- confirmed by
        // eglQuerySurface() still reporting the old size frames after producer.setSize() and
        // godot_core_resize() both succeeded. Re-fetching the Surface and calling setSurface()
        // again forces the renderer to tear down and recreate its EGLSurface at the new size.
        producer.setSize(width, height)
        offscreenRenderer?.setSurface(producer.surface)

        // GodotOffscreenRenderer.resize() calls godot_core_resize(), which reaches
        // DisplayServer.window_set_size() via a ClassDB reflection call -- not thread-safe, and
        // only ever meant to run on the same thread that drives Main::iteration() (Godot's own
        // Vulkan render thread, see VkThread.kt's GodotLib.step() loop), not whatever thread
        // Flutter happens to dispatch this MethodChannel call on (the main thread). Calling it
        // directly from here raced the render thread's own concurrent use of Window/Viewport
        // state and left the Viewport's render target stuck at its pre-resize size -- visible as
        // the new, correctly-sized buffer only having content drawn into a corner matching the
        // old size, the rest left black. Godot.runOnRenderThread() queues the call onto that
        // thread instead (mirrors how VkThread.onSurfaceChanged()/queueEvent already handle
        // every other cross-thread call into engine state).
        engine.runOnRenderThread {
            val resized = GodotOffscreenRenderer.resize(handle, width, height)
            mainHandler.post { result.success(resized) }
        }
    }

    // MARK: - GodotHost

    override fun getActivity(): Activity? = activity

    override fun getGodot(): Godot = godot ?: Godot.getInstance(requireNotNull(activity) { "No Activity is currently attached." })

    override fun onGodotMainLoopStarted() {
        val result = pendingResult ?: return
        pendingResult = null

        val width = pendingWidth
        val height = pendingHeight

        // Called on the render thread; TextureRegistry/MethodChannel.Result are main-thread APIs.
        mainHandler.post {
            val registry = textureRegistry
            if (registry == null) {
                result.error("create_instance_failed", "Plugin detached before the engine finished starting.", null)
                return@post
            }

            val handle = GodotOffscreenRenderer.getInstanceHandle()
            if (handle == 0L) {
                result.error(
                    "create_instance_failed",
                    "libgodot_android_get_godot_instance() returned null after the engine's main loop started.",
                    null,
                )
                return@post
            }
            godotInstanceHandle = handle

            val renderer = GodotOffscreenRenderer()
            if (!renderer.isValid) {
                result.error("create_instance_failed", "Failed to initialize the EGL renderer.", null)
                return@post
            }
            renderer.setGodotInstance(handle)
            offscreenRenderer = renderer

            val producer = registry.createSurfaceProducer()
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

            result.success(mapOf("textureId" to producer.id(), "handleAddress" to godotInstanceHandle))
        }
    }
}
