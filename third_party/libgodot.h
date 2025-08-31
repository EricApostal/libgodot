/**************************************************************************/
/*  libgodot.h                                                            */
/**************************************************************************/
/*                         This file is part of:                          */
/*                             GODOT ENGINE                               */
/*                        https://godotengine.org                         */
/**************************************************************************/
/* Copyright (c) 2014-present Godot Engine contributors (see AUTHORS.md). */
/* Copyright (c) 2007-2014 Juan Linietsky, Ariel Manzur.                  */
/*                                                                        */
/* Permission is hereby granted, free of charge, to any person obtaining  */
/* a copy of this software and associated documentation files (the        */
/* "Software"), to deal in the Software without restriction, including    */
/* without limitation the rights to use, copy, modify, merge, publish,    */
/* distribute, sublicense, and/or sell copies of the Software, and to     */
/* permit persons to whom the Software is furnished to do so, subject to  */
/* the following conditions:                                              */
/*                                                                        */
/* The above copyright notice and this permission notice shall be         */
/* included in all copies or substantial portions of the Software.        */
/*                                                                        */
/* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,        */
/* EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF     */
/* MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. */
/* IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY   */
/* CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,   */
/* TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE      */
/* SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.                 */
/**************************************************************************/

#ifndef LIBGODOT_H
#define LIBGODOT_H

#include "gdextension_interface.h"

#ifdef __cplusplus
extern "C" {
#endif

// Export macros for DLL visibility
#if defined(_MSC_VER) || defined(__MINGW32__)
#define LIBGODOT_API __declspec(dllexport)
#elif defined(__GNUC__) || defined(__clang__)
#define LIBGODOT_API __attribute__((visibility("default")))
#endif // if defined(_MSC_VER)

typedef void *CallbackData;
typedef void *ExecutorData;
typedef void (*InvokeCallback)(CallbackData p_data);
typedef void (*InvokeCallbackFunction)(InvokeCallback p_callback, CallbackData p_callback_data, ExecutorData p_executor_data);

/**
 * @name libgodot_create_godot_instance
 * @since 4.4
 *
 * Creates a new Godot instance.
 *
 * @param p_argc The number of command line arguments.
 * @param p_argv The C-style array of command line arguments.
 * @param p_init_func GDExtension initialization function of the host application.
 *
 * @return A pointer to created \ref GodotInstance GDExtension object or nullptr if there was an error.
 */
LIBGODOT_API GDExtensionObjectPtr libgodot_create_godot_instance(int p_argc, char *p_argv[], GDExtensionInitializationFunction p_init_func, InvokeCallbackFunction p_async_func, ExecutorData p_async_data, InvokeCallbackFunction p_sync_func, ExecutorData p_sync_data);

/**
 * @name libgodot_destroy_godot_instance
 * @since 4.4
 *
 * Destroys an existing Godot instance.
 *
 * @param p_godot_instance The reference to the GodotInstance object to destroy.
 *
 */
LIBGODOT_API void libgodot_destroy_godot_instance(GDExtensionObjectPtr p_godot_instance);

/**
 * @name DisplayServerEmbedded C bindings
 * @since 4.4
 *
 * Lightweight C wrappers around a subset of DisplayServerEmbedded functionality
 * for host applications embedding Godot. All functions are no-ops (or return
 * an error code) if the embedded display server singleton is not available.
 */

// Returns 1 if the DisplayServerEmbedded singleton exists, 0 otherwise.
LIBGODOT_API int libgodot_display_server_embedded_is_available();

// Processes pending window & input events.
LIBGODOT_API void libgodot_display_server_embedded_process_events();

// Window management helpers (return 0 on success, -1 on failure / unavailable singleton).
LIBGODOT_API int libgodot_display_server_embedded_resize_window(int p_width, int p_height, int p_window_id /*=0*/);
LIBGODOT_API int libgodot_display_server_embedded_get_window_size(int p_window_id /*=0*/, int *r_width, int *r_height);

// Content scale factor (e.g. backing scale / DPI). Returns 0 on success.
LIBGODOT_API int libgodot_display_server_embedded_set_content_scale(float p_scale);

// Touch input.
LIBGODOT_API int libgodot_display_server_embedded_touch_press(int p_index, int p_x, int p_y, int p_pressed, int p_double_click, int p_window_id /*=0*/);
LIBGODOT_API int libgodot_display_server_embedded_touch_drag(int p_index, int p_prev_x, int p_prev_y, int p_x, int p_y, float p_pressure, float p_tilt_x, float p_tilt_y, int p_window_id /*=0*/);
LIBGODOT_API int libgodot_display_server_embedded_touches_canceled(int p_index, int p_window_id /*=0*/);

// Keyboard input. Modifiers is a bitfield of KeyModifierMask, see core enums. char_code is UTF-32 scalar value.
LIBGODOT_API int libgodot_display_server_embedded_key(int p_key, unsigned int p_char_code, int p_unshifted_key, int p_physical_key, unsigned int p_modifiers, int p_pressed, int p_window_id /*=0*/);

// Mouse mode control (uses DisplayServer::MouseMode enum values).
LIBGODOT_API int libgodot_display_server_embedded_mouse_set_mode(int p_mouse_mode);
LIBGODOT_API int libgodot_display_server_embedded_mouse_get_mode(int *r_mouse_mode);

// Mouse position & buttons.
LIBGODOT_API int libgodot_display_server_embedded_mouse_get_position(int *r_x, int *r_y);
LIBGODOT_API unsigned int libgodot_display_server_embedded_mouse_get_button_state();

// Window flags & mode / vsync.
LIBGODOT_API int libgodot_display_server_embedded_window_set_mode(int p_mode, int p_window_id /*=0*/);
LIBGODOT_API int libgodot_display_server_embedded_window_get_mode(int p_window_id /*=0*/, int *r_mode);
LIBGODOT_API int libgodot_display_server_embedded_window_set_vsync_mode(int p_vsync_mode, int p_window_id /*=0*/);
LIBGODOT_API int libgodot_display_server_embedded_window_get_vsync_mode(int p_window_id /*=0*/, int *r_vsync_mode);
LIBGODOT_API int libgodot_display_server_embedded_window_set_flag(int p_flag, int p_enabled, int p_window_id /*=0*/);
LIBGODOT_API int libgodot_display_server_embedded_window_get_flag(int p_flag, int p_window_id /*=0*/, int *r_enabled);

// Attach a script/instance id to a window (ObjectID is 64-bit). Provide -1 to clear.
LIBGODOT_API int libgodot_display_server_embedded_window_attach_instance_id(long long p_object_id, int p_window_id /*=0*/);
LIBGODOT_API long long libgodot_display_server_embedded_window_get_attached_instance_id(int p_window_id /*=0*/);

// Native surface binding: pass a GDExtensionObjectPtr assumed to be a RenderingNativeSurface* (RefCounted).
LIBGODOT_API int libgodot_display_server_embedded_set_native_surface(GDExtensionObjectPtr p_native_surface_ref);

// Native window creation (wraps create_native_window / delete_native_window). Returns 0 on success.
LIBGODOT_API int libgodot_display_server_embedded_create_native_window(GDExtensionObjectPtr p_native_surface_ref, int *r_window_id);
LIBGODOT_API int libgodot_display_server_embedded_delete_window(int p_window_id);

// Window native handle (HandleType enum value) or 0 on failure.
LIBGODOT_API long long libgodot_display_server_embedded_window_get_native_handle(int p_handle_type, int p_window_id /*=0*/);

// Title
LIBGODOT_API int libgodot_display_server_embedded_window_set_title(const char *p_title_utf8, int p_window_id /*=0*/);

// Position
LIBGODOT_API int libgodot_display_server_embedded_window_get_position(int p_window_id /*=0*/, int *r_x, int *r_y);
LIBGODOT_API int libgodot_display_server_embedded_window_set_position(int p_window_id /*=0*/, int p_x, int p_y);

// Buffer / GL helpers
LIBGODOT_API int libgodot_display_server_embedded_swap_buffers();
LIBGODOT_API int libgodot_display_server_embedded_gl_window_make_current(int p_window_id /*=0*/);

// Register the embedded display server driver (must be called before creating a Godot instance if you plan to use it).
LIBGODOT_API void libgodot_display_server_embedded_register_embedded_driver();

/**
 * @name RenderingNativeSurfaceApple bindings
 * @since 4.4
 *
 * Lightweight creation / query / destruction helpers for the Apple specific
 * RenderingNativeSurface implementation. These wrap the RefCounted object so
 * that host applications embedding Godot can create a surface backed by a
 * native CALayer pointer.
 *
 * All functions return 0 on success (or a non-null pointer for create) and -1
 * on failure unless otherwise documented.
 */

// Create a RenderingNativeSurfaceApple from a layer pointer (e.g. CAMetalLayer* or CAEAGLLayer* cast to uint64_t).
LIBGODOT_API GDExtensionObjectPtr libgodot_rendering_native_surface_apple_create(uint64_t p_layer);

// Get the layer pointer (as an opaque 64-bit value) from a RenderingNativeSurfaceApple.
LIBGODOT_API int libgodot_rendering_native_surface_apple_get_layer(GDExtensionObjectPtr p_surface, uint64_t *r_layer);

// Destroy (unreference) a previously created RenderingNativeSurfaceApple.
LIBGODOT_API int libgodot_rendering_native_surface_apple_destroy(GDExtensionObjectPtr p_surface);

#ifdef __cplusplus
}
#endif

#endif // LIBGODOT_H
