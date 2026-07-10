#ifndef FLUTTER_PLUGIN_GODOT_TEXTURE_H_
#define FLUTTER_PLUGIN_GODOT_TEXTURE_H_

#include <flutter_linux/flutter_linux.h>

#include <cstdint>

G_BEGIN_DECLS

#define LIBGODOT_TYPE_TEXTURE (libgodot_texture_get_type())
G_DECLARE_FINAL_TYPE(LibgodotTexture, libgodot_texture, LIBGODOT, TEXTURE, FlTextureGL)

// Wraps an already-created-and-started libgodot instance (see native/godot_core/godot_core.h),
// streaming its rendered frames (delivered as dma-buf handles) into a GL texture each time
// Flutter asks for a new frame. Returns NULL (with `error` set) on failure.
//
// `godot_core_create`/`_start`/`_resize` are called directly by Dart via the `ffigen`-generated
// bindings in lib/src/godot_core_bindings.g.dart -- this only takes ownership of a handle Dart
// already created, driving its iteration and bridging its frames into a GL texture.
//
// The caller owns the returned reference and is responsible for calling
// `fl_texture_registrar_register_texture()` on it and, eventually,
// `libgodot_texture_stop()` followed by `g_object_unref()`.
LibgodotTexture *libgodot_texture_new(FlTextureRegistrar *registrar,
                                       void *handle,
                                       GError **error);

// Stops the underlying Godot instance (via godot_core_destroy) and releases its resources. Safe
// to call more than once; safe to call before unregistering/unreffing the texture.
void libgodot_texture_stop(LibgodotTexture *self);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_GODOT_TEXTURE_H_
