#ifndef FLUTTER_PLUGIN_GODOT_TEXTURE_H_
#define FLUTTER_PLUGIN_GODOT_TEXTURE_H_

#include <flutter_linux/flutter_linux.h>

G_BEGIN_DECLS

#define LIBGODOT_TYPE_TEXTURE (libgodot_texture_get_type())
G_DECLARE_FINAL_TYPE(LibgodotTexture, libgodot_texture, LIBGODOT, TEXTURE, FlTextureGL)

// Boots a Godot instance running the project at `project_path` with the
// "offscreen" display driver, and returns a texture that streams its
// rendered frames (delivered as dma-buf handles) into a GL texture each time
// Flutter asks for a new frame. Returns NULL (with `error` set) on failure.
//
// The caller owns the returned reference and is responsible for calling
// `fl_texture_registrar_register_texture()` on it and, eventually,
// `libgodot_texture_stop()` followed by `g_object_unref()`.
LibgodotTexture *libgodot_texture_new(FlTextureRegistrar *registrar,
                                       const char *project_path,
                                       int width,
                                       int height,
                                       GError **error);

// Stops the underlying Godot instance and releases its resources. Safe to
// call more than once; safe to call before unregistering/unreffing the
// texture.
void libgodot_texture_stop(LibgodotTexture *self);

G_END_DECLS

#endif  // FLUTTER_PLUGIN_GODOT_TEXTURE_H_
