package com.example.libgodot

import android.view.Surface

/**
 * Thin JNI wrapper around godot_offscreen_renderer.cpp, which imports the AHardwareBuffer frames
 * produced by Godot's "offscreen" Android display driver into a [Surface] via EGL, and drives the
 * shared native/godot_core/godot_core.h init-func-combining/resize/frame-callback-registration
 * logic via the companion functions below.
 *
 * Unlike every other platform, resize goes through here (from
 * [LibgodotPlugin.handleResizeInstance]) rather than Dart calling `godot_core_resize` directly via
 * FFI: Flutter's `TextureRegistry.SurfaceProducer` needs an explicit `setSize()` call to match, and
 * only Kotlin owns that producer, so driving both from the same call keeps them from racing.
 *
 * Not thread-safe on its own; callers are responsible for not calling [setGodotInstance] or the
 * surface lifecycle methods concurrently. See [LibgodotPlugin] for how these are coordinated.
 */
class GodotOffscreenRenderer {
    private var nativeHandle: Long = nativeCreate()

    val isValid: Boolean
        get() = nativeHandle != 0L

    fun setSurface(surface: Surface) {
        if (isValid) {
            nativeSetSurface(nativeHandle, surface)
        }
    }

    fun clearSurface() {
        if (isValid) {
            nativeClearSurface(nativeHandle)
        }
    }

    /**
     * Registers this renderer to receive frames from the Godot instance at [godotInstanceHandle]
     * (see [getInstanceHandle]), replacing any previously-registered instance. Frames are
     * delivered straight from native code (via godot_core_set_frame_callback) with no further
     * JNI/Kotlin involvement -- see godot_offscreen_renderer.cpp's file comment.
     */
    fun setGodotInstance(godotInstanceHandle: Long) {
        if (isValid) {
            nativeSetGodotInstance(nativeHandle, godotInstanceHandle)
        }
    }

    fun destroy() {
        if (isValid) {
            nativeDestroy(nativeHandle)
            nativeHandle = 0L
        }
    }

    private external fun nativeCreate(): Long
    private external fun nativeSetSurface(handle: Long, surface: Surface)
    private external fun nativeClearSurface(handle: Long)
    private external fun nativeSetGodotInstance(handle: Long, godotInstanceHandle: Long)
    private external fun nativeDestroy(handle: Long)

    companion object {
        init {
            System.loadLibrary("godot_offscreen_renderer")
        }

        /**
         * Combines [delegateInitFunc] (0 for none, e.g. no package:godot_dart entry point) with
         * this plugin's own init logic (see native/godot_core/godot_core.h's
         * godot_core_prepare_init_func), returning the address of the resulting function. Must
         * be called before [Godot.initEngine]/`GodotLib.setup()`, and its result passed as
         * `initEngine`'s `initFunc` argument.
         */
        @JvmStatic
        external fun prepareInitFunc(delegateInitFunc: Long): Long

        /**
         * The native handle for the Godot instance [Godot.initEngine] just started (see
         * platform/android/libgodot_android.cpp's libgodot_android_get_godot_instance()), or 0 if
         * [Godot.initEngine] wasn't called with a non-zero `initFunc` from [prepareInitFunc].
         * Only meaningful after `initEngine` returns true.
         */
        @JvmStatic
        external fun getInstanceHandle(): Long

        /**
         * Requests the Godot instance at [godotInstanceHandle] resize its offscreen surface to
         * [width]x[height] (see native/godot_core/godot_core.h's godot_core_resize). Not
         * immediate: the engine reallocates its surface ring over the next few rendered frames.
         * Returns false if the resize API isn't available yet.
         */
        @JvmStatic
        external fun resize(godotInstanceHandle: Long, width: Int, height: Int): Boolean
    }
}
