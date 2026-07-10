#include "include/libgodot/libgodot_plugin.h"

#include <flutter_linux/flutter_linux.h>
#include <gtk/gtk.h>
#include <sys/utsname.h>

#include <cstdint>
#include <cstring>

#include "godot_texture.h"
#include "libgodot_plugin_private.h"

// createInstance/resizeInstance/destroyInstance used to live here, calling into libgodot
// directly; that control-plane logic is now called by Dart directly via the ffigen-generated
// bindings in lib/src/godot_core_bindings.g.dart (see lib/godot_controller.dart), since none of
// it actually needs native platform APIs. All that's left here is registerTexture/
// unregisterTexture, which genuinely do need native code: only this plugin has an
// FlTextureRegistrar to register a LibgodotTexture against.

#define LIBGODOT_PLUGIN(obj) \
  (G_TYPE_CHECK_INSTANCE_CAST((obj), libgodot_plugin_get_type(), \
                              LibgodotPlugin))

struct _LibgodotPlugin {
  GObject parent_instance;

  FlTextureRegistrar *texture_registrar;
  // int64_t texture id -> owned LibgodotTexture* ref.
  GHashTable *textures;
};

G_DEFINE_TYPE(LibgodotPlugin, libgodot_plugin, g_object_get_type())

// Called when a method call is received from Flutter.
static void libgodot_plugin_handle_method_call(
    LibgodotPlugin* self,
    FlMethodCall* method_call) {
  g_autoptr(FlMethodResponse) response = nullptr;

  const gchar* method = fl_method_call_get_name(method_call);

  if (strcmp(method, "getPlatformVersion") == 0) {
    response = get_platform_version();
  } else if (strcmp(method, "registerTexture") == 0) {
    response = handle_register_texture(self, method_call);
  } else if (strcmp(method, "unregisterTexture") == 0) {
    response = handle_unregister_texture(self, method_call);
  } else {
    response = FL_METHOD_RESPONSE(fl_method_not_implemented_response_new());
  }

  fl_method_call_respond(method_call, response, nullptr);
}

FlMethodResponse* get_platform_version() {
  struct utsname uname_data = {};
  uname(&uname_data);
  g_autofree gchar *version = g_strdup_printf("Linux %s", uname_data.version);
  g_autoptr(FlValue) result = fl_value_new_string(version);
  return FL_METHOD_RESPONSE(fl_method_success_response_new(result));
}

FlMethodResponse* handle_register_texture(LibgodotPlugin* self, FlMethodCall* method_call) {
  FlValue* args = fl_method_call_get_args(method_call);
  if (args == nullptr || fl_value_get_type(args) != FL_VALUE_TYPE_INT) {
    return FL_METHOD_RESPONSE(fl_method_error_response_new(
        "invalid_args", "registerTexture requires the int handle address as its argument.", nullptr));
  }

  void* handle = (void*)(intptr_t)fl_value_get_int(args);

  GError* error = nullptr;
  LibgodotTexture* texture = libgodot_texture_new(self->texture_registrar, handle, &error);
  if (texture == nullptr) {
    FlMethodResponse* response = FL_METHOD_RESPONSE(fl_method_error_response_new(
        "register_texture_failed", error != nullptr ? error->message : "unknown error", nullptr));
    g_clear_error(&error);
    return response;
  }

  if (!fl_texture_registrar_register_texture(self->texture_registrar, FL_TEXTURE(texture))) {
    libgodot_texture_stop(texture);
    g_object_unref(texture);
    return FL_METHOD_RESPONSE(fl_method_error_response_new(
        "register_texture_failed", "Failed to register the Godot texture with Flutter.", nullptr));
  }

  int64_t texture_id = fl_texture_get_id(FL_TEXTURE(texture));
  g_hash_table_insert(self->textures, (gpointer)(intptr_t)texture_id, texture);

  g_autoptr(FlValue) result = fl_value_new_int(texture_id);
  return FL_METHOD_RESPONSE(fl_method_success_response_new(result));
}

FlMethodResponse* handle_unregister_texture(LibgodotPlugin* self, FlMethodCall* method_call) {
  FlValue* args = fl_method_call_get_args(method_call);
  if (args == nullptr || fl_value_get_type(args) != FL_VALUE_TYPE_INT) {
    return FL_METHOD_RESPONSE(fl_method_error_response_new(
        "invalid_args", "unregisterTexture requires the int textureId as its argument.", nullptr));
  }

  int64_t texture_id = fl_value_get_int(args);
  gpointer key = (gpointer)(intptr_t)texture_id;
  LibgodotTexture* texture = LIBGODOT_TEXTURE(g_hash_table_lookup(self->textures, key));
  if (texture != nullptr) {
    fl_texture_registrar_unregister_texture(self->texture_registrar, FL_TEXTURE(texture));
    libgodot_texture_stop(texture);
    g_hash_table_remove(self->textures, key);
    g_object_unref(texture);
  }

  return FL_METHOD_RESPONSE(fl_method_success_response_new(nullptr));
}

static void libgodot_plugin_dispose(GObject* object) {
  LibgodotPlugin* self = LIBGODOT_PLUGIN(object);

  GHashTableIter iter;
  gpointer key, value;
  g_hash_table_iter_init(&iter, self->textures);
  while (g_hash_table_iter_next(&iter, &key, &value)) {
    LibgodotTexture* texture = LIBGODOT_TEXTURE(value);
    fl_texture_registrar_unregister_texture(self->texture_registrar, FL_TEXTURE(texture));
    libgodot_texture_stop(texture);
    g_object_unref(texture);
  }
  g_hash_table_remove_all(self->textures);

  G_OBJECT_CLASS(libgodot_plugin_parent_class)->dispose(object);
}

static void libgodot_plugin_finalize(GObject* object) {
  LibgodotPlugin* self = LIBGODOT_PLUGIN(object);
  g_hash_table_unref(self->textures);
  G_OBJECT_CLASS(libgodot_plugin_parent_class)->finalize(object);
}

static void libgodot_plugin_class_init(LibgodotPluginClass* klass) {
  G_OBJECT_CLASS(klass)->dispose = libgodot_plugin_dispose;
  G_OBJECT_CLASS(klass)->finalize = libgodot_plugin_finalize;
}

static void libgodot_plugin_init(LibgodotPlugin* self) {
  self->textures = g_hash_table_new(g_direct_hash, g_direct_equal);
}

static void method_call_cb(FlMethodChannel* channel, FlMethodCall* method_call,
                           gpointer user_data) {
  LibgodotPlugin* plugin = LIBGODOT_PLUGIN(user_data);
  libgodot_plugin_handle_method_call(plugin, method_call);
}

void libgodot_plugin_register_with_registrar(FlPluginRegistrar* registrar) {
  LibgodotPlugin* plugin = LIBGODOT_PLUGIN(
      g_object_new(libgodot_plugin_get_type(), nullptr));

  plugin->texture_registrar = fl_plugin_registrar_get_texture_registrar(registrar);

  g_autoptr(FlStandardMethodCodec) codec = fl_standard_method_codec_new();
  g_autoptr(FlMethodChannel) channel =
      fl_method_channel_new(fl_plugin_registrar_get_messenger(registrar),
                            "libgodot",
                            FL_METHOD_CODEC(codec));
  fl_method_channel_set_method_call_handler(channel, method_call_cb,
                                            g_object_ref(plugin),
                                            g_object_unref);

  g_object_unref(plugin);
}
