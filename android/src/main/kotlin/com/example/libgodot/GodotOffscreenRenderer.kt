package com.example.libgodot

import android.hardware.HardwareBuffer
import android.view.Surface

/**
 * Thin JNI wrapper around godot_offscreen_renderer.cpp, which imports the AHardwareBuffer frames
 * produced by Godot's "offscreen" Android display driver into a [Surface] via EGL.
 *
 * Not thread-safe on its own; callers are responsible for not calling [submitFrame] concurrently
 * with [setSurface]/[clearSurface]/[destroy]. In practice [submitFrame] is called from
 * [org.godotengine.godot.GodotHost.onOffscreenFrameAvailable] (Godot's render thread) while the
 * surface lifecycle calls happen in response to Flutter's
 * [io.flutter.view.TextureRegistry.SurfaceProducer.Callback], so a real implementation may need to
 * synchronize the two; see [LibgodotPlugin] for how these are coordinated.
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

    fun submitFrame(buffer: HardwareBuffer, width: Int, height: Int) {
        if (isValid) {
            nativeSubmitFrame(nativeHandle, buffer, width, height)
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
    private external fun nativeSubmitFrame(handle: Long, buffer: HardwareBuffer, width: Int, height: Int)
    private external fun nativeDestroy(handle: Long)

    companion object {
        init {
            System.loadLibrary("godot_offscreen_renderer")
        }
    }
}
