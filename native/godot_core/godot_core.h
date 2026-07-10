#ifndef LIBGODOT_NATIVE_GODOT_CORE_H_
#define LIBGODOT_NATIVE_GODOT_CORE_H_

// Shared, platform-agnostic core for this plugin's per-platform native code (macos/Classes,
// linux/, android/). Every desktop-style platform's offscreen embedding wraps the exact same
// sequence of libgodot.h calls plus two pieces of logic that have nothing platform-specific about
// them and were, until now, hand-duplicated verbatim in each platform's own source file:
//
//   - Combining a host-supplied GDExtension init function (e.g. package:godot_dart's) with this
//     plugin's own trivial one, and capturing GDExtensionInterfaceGetProcAddress as a side effect
//     so the resize hack below has something to resolve against.
//   - DisplayServer.window_set_size() has no dedicated libgodot.h C API, so resizing the
//     offscreen surface at runtime means reaching into ClassDB via the raw GDExtension ABI by
//     hand (see godot_core_resize below).
//
// Implemented across two .cpp files, compiled selectively per platform:
//   - godot_core.cpp: everything above, plus godot_core_resize/godot_core_set_frame_callback.
//     Needs only libgodot_godot_instance_set_offscreen_frame_callback, which every platform's
//     libgodot.h surface exports (including Android's, via platform/android/libgodot_android.cpp
//     upstream) -- macOS, Linux, AND Android all compile this file.
//   - godot_core_desktop.cpp: godot_core_create/_start/_destroy/_iteration, which wrap
//     libgodot_create_godot_instance/_start/_destroy_godot_instance/_iteration. Android's
//     bootstrap doesn't go through these at all (its engine .so doesn't even export
//     libgodot_create_godot_instance/_destroy_godot_instance -- see that file's own header
//     comment upstream) -- only macOS and Linux compile this file.
//
// This header is also fed directly to `ffigen` to generate Dart FFI bindings, so Dart can call
// create/start/resize/destroy directly instead of round-tripping through a MethodChannel (mac/
// Linux only; Android's bootstrap stays behind a MethodChannel -- see lib/godot_controller.dart).
// Texture registration (associating a GodotCoreHandle with a Flutter Texture id) also always
// needs a platform channel call on every platform, since only native platform code has a
// FlutterTextureRegistrar/FlTextureRegistrar to register against.

// stdbool.h so `bool` resolves when this header is parsed as plain C (e.g. by ffigen); a no-op
// under C++, where bool is already a keyword.
#include <stdbool.h>

#include "core/extension/gdextension_interface.gen.h"
#include "core/extension/libgodot.h"

#ifdef __cplusplus
extern "C" {
#endif

#if defined(_MSC_VER) || defined(__MINGW32__)
#define GODOT_CORE_API __declspec(dllexport)
#elif defined(__GNUC__) || defined(__clang__)
#define GODOT_CORE_API __attribute__((visibility("default")))
#else
#define GODOT_CORE_API
#endif

typedef void *GodotCoreHandle;

// Combines `p_delegate_init_func` (may be null, e.g. a package:godot_dart entry point) with this
// plugin's own no-op init function, so both this plugin and the caller's GDExtension classes get
// registered, and captures GDExtensionInterfaceGetProcAddress as a side effect so
// godot_core_resize has something to resolve against. Returns the address of the resulting
// combined init function, implemented in godot_core.cpp (unlike godot_core_create/_start/
// _destroy/_iteration below, implemented in godot_core_desktop.cpp -- see that file's header
// comment for why the split, and why this half is the one Android can also use).
//
// godot_core_create() below already calls this internally; the only reason to call it directly
// is a bootstrap that doesn't go through godot_core_create() at all, i.e. Android's
// GodotLib.setup(), which takes an init function pointer of its own (see
// android/src/main/cpp/godot_offscreen_renderer.cpp).
GODOT_CORE_API GDExtensionInitializationFunction godot_core_prepare_init_func(GDExtensionInitializationFunction p_delegate_init_func);

#if defined(__ANDROID__)
// Must be called once, on the Android main thread (e.g. from LibgodotPlugin.handleCreateInstance,
// which Flutter always dispatches there), before GodotLib.setup(). Lets combined_init_func (see
// godot_core_prepare_init_func) safely invoke a Dart-backed delegate init function (e.g.
// package:godot_dart's GodotDartEntryPoint) even though it actually runs on Android's VkThread --
// see godot_core.cpp's "Android main-thread dispatch for Dart callbacks" section for why that's
// otherwise unsafe. A no-op if called more than once, or from a thread that can't host a Looper.
GODOT_CORE_API void godot_core_android_init_main_thread_dispatch(void);
#endif

// Creates and starts a Godot instance running the "offscreen" display driver (see
// godot_core_prepare_init_func for the init-func-combining this does internally). `p_argv[0]` is
// conventionally an argv0-style program name; the caller is expected to have already included
// `--offscreen`/`--path`/`--resolution` etc. in `p_argv`, same as libgodot_create_godot_instance
// itself.
//
// Returns NULL on failure (see stderr for the engine's own log). Only one instance may exist at
// a time (enforced by libgodot itself). Not available on Android -- see godot_core_desktop.cpp.
GODOT_CORE_API GodotCoreHandle godot_core_create(int p_argc, char **p_argv, GDExtensionInitializationFunction p_init_func);

// Starts an instance created by godot_core_create. Returns false on failure.
GODOT_CORE_API bool godot_core_start(GodotCoreHandle p_handle);

// Stops this handle's pump thread (if running; see godot_core_run_pump) and destroys the
// underlying Godot instance. Safe to call more than once; a no-op if already destroyed.
GODOT_CORE_API void godot_core_destroy(GodotCoreHandle p_handle);

// Requests the engine resize its offscreen surface to `p_width`x`p_height` via
// DisplayServer.window_set_size(). Not immediate: the engine reallocates its surface ring over
// the next few rendered frames. Returns false (harmlessly) if the resize API couldn't be
// resolved yet, e.g. called before the instance finished starting.
GODOT_CORE_API bool godot_core_resize(GodotCoreHandle p_handle, int p_width, int p_height);

// Registers `p_callback` to be invoked (on whatever thread the engine's renderer/completion
// handler uses) each time a new offscreen frame is ready. Pass a null callback to unregister.
// See GodotOffscreenFrame in libgodot.h for the frame data's shape.
GODOT_CORE_API void godot_core_set_frame_callback(GodotCoreHandle p_handle, GodotOffscreenFrameCallback p_callback, void *p_userdata);

// Runs a single iteration of the engine's main loop. Despite this driver being headless/
// offscreen, RenderingServer::draw() still asserts it's being called from the same thread the
// instance was created/started on (see servers/rendering/rendering_server_default.cpp) - so,
// unlike the rest of this header, this is NOT something a shared background thread can drive on
// every platform's behalf. Each platform plugin is expected to call this repeatedly (~60Hz) from
// its own main-thread-affine run loop primitive (an NSTimer on macOS, a GLib timeout on Linux,
// ...). Returns true if the engine requested exit (the caller should stop calling this and call
// godot_core_destroy()). Not available on Android, whose own GodotLib.step() already drives this
// -- see godot_core_desktop.cpp.
GODOT_CORE_API bool godot_core_iteration(GodotCoreHandle p_handle);

#ifdef __cplusplus
}
#endif

#endif // LIBGODOT_NATIVE_GODOT_CORE_H_
