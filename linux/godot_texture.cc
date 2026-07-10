// epoxy headers must come before any other GL/GDK headers pull in the system
// GL headers, or epoxy's own definitions can conflict with them.
#include <epoxy/egl.h>
#include <epoxy/gl.h>

#include "godot_texture.h"

#include <unistd.h>

#include <cerrno>
#include <string>
#include <vector>

#include "core/extension/libgodot.h"

struct _LibgodotTexture {
  FlTextureGL parent_instance;

  // Borrowed; owned by the plugin registrar for the lifetime of the engine.
  FlTextureRegistrar *registrar;

  GDExtensionObjectPtr godot_instance;
  guint iteration_source_id;

  // Frames arrive on whatever thread the engine's renderer happens to use
  // (see GodotOffscreenFrame's docs in libgodot.h), so the most recent one is
  // stashed here and only imported into GL from populate(), which Flutter
  // always calls with its own GL context current on the raster thread.
  GMutex frame_mutex;
  gboolean has_pending_frame;
  int pending_fd;
  uint32_t pending_drm_format;
  uint32_t pending_stride;
  uint32_t pending_offset;
  uint64_t pending_modifier;
  uint32_t pending_width;
  uint32_t pending_height;

  GLuint gl_texture_id;
  gboolean gl_texture_initialized;
  uint32_t last_width;
  uint32_t last_height;
};

G_DEFINE_TYPE(LibgodotTexture, libgodot_texture, fl_texture_gl_get_type())

// MARK: - Trivial GDExtension init function.
//
// libgodot hands the host straight into the engine's GDExtension loading
// machinery, but this plugin doesn't register any custom classes, so this
// just satisfies the required shape.

static void trivial_initialize(void *, GDExtensionInitializationLevel) {}
static void trivial_deinitialize(void *, GDExtensionInitializationLevel) {}

static GDExtensionBool trivial_init_func(GDExtensionInterfaceGetProcAddress,
                                          GDExtensionClassLibraryPtr,
                                          GDExtensionInitialization *r_initialization) {
  r_initialization->initialize = trivial_initialize;
  r_initialization->deinitialize = trivial_deinitialize;
  r_initialization->userdata = nullptr;
  r_initialization->minimum_initialization_level = GDEXTENSION_INITIALIZATION_CORE;
  return true;
}

// MARK: - Runtime resize support.
//
// DisplayServer.window_set_size() is a normal bound ClassDB method, and the
// offscreen display driver's override of it genuinely reallocates the
// underlying dma-buf ring at the new size (see the fork's
// display_server_linuxbsd_offscreen.cpp) - there's no dedicated libgodot.h C
// API for this, so it's called directly through the GDExtension interface
// instead. This has to work regardless of whether the Dart side supplied its
// own init function (godot_dart's registration path) or this plugin's own
// trivial_init_func is used, so a combined_init_func always runs first to
// capture GetProcAddress before delegating to whichever one actually applies.
//
// These are file-static (not per-LibgodotTexture) because ClassDB/singletons
// are process-global in this engine; only one embedded instance's worth of
// these is meaningfully different at a time in this plugin's current usage.
static GDExtensionInterfaceGetProcAddress g_get_proc_address = nullptr;
static GDExtensionInitializationFunction g_delegate_init_func = nullptr;

typedef GDExtensionObjectPtr (*GlobalGetSingletonFn)(GDExtensionConstStringNamePtr);
typedef GDExtensionMethodBindPtr (*ClassdbGetMethodBindFn)(GDExtensionConstStringNamePtr, GDExtensionConstStringNamePtr, GDExtensionInt);
typedef void (*ObjectMethodBindPtrcallFn)(GDExtensionMethodBindPtr, GDExtensionObjectPtr, const GDExtensionConstTypePtr *, GDExtensionTypePtr);
typedef void (*StringNameNewWithUtf8CharsFn)(GDExtensionUninitializedStringNamePtr, const char *);
typedef GDExtensionPtrDestructor (*VariantGetPtrDestructorFn)(GDExtensionVariantType);

static GlobalGetSingletonFn g_global_get_singleton = nullptr;
static ClassdbGetMethodBindFn g_classdb_get_method_bind = nullptr;
static ObjectMethodBindPtrcallFn g_object_method_bind_ptrcall = nullptr;
static StringNameNewWithUtf8CharsFn g_string_name_new_with_utf8_chars = nullptr;
static VariantGetPtrDestructorFn g_variant_get_ptr_destructor = nullptr;
static GDExtensionMethodBindPtr g_window_set_size_bind = nullptr;

static void resolve_resize_api() {
  if (g_global_get_singleton != nullptr || g_get_proc_address == nullptr) {
    return;
  }
  g_global_get_singleton = (GlobalGetSingletonFn)(void *)g_get_proc_address("global_get_singleton");
  g_classdb_get_method_bind = (ClassdbGetMethodBindFn)(void *)g_get_proc_address("classdb_get_method_bind");
  g_object_method_bind_ptrcall = (ObjectMethodBindPtrcallFn)(void *)g_get_proc_address("object_method_bind_ptrcall");
  g_string_name_new_with_utf8_chars = (StringNameNewWithUtf8CharsFn)(void *)g_get_proc_address("string_name_new_with_utf8_chars");
  g_variant_get_ptr_destructor = (VariantGetPtrDestructorFn)(void *)g_get_proc_address("variant_get_ptr_destructor");
}

static GDExtensionBool combined_init_func(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                           GDExtensionClassLibraryPtr p_library,
                                           GDExtensionInitialization *r_initialization) {
  g_get_proc_address = p_get_proc_address;
  resolve_resize_api();
  GDExtensionInitializationFunction delegate = g_delegate_init_func != nullptr ? g_delegate_init_func : trivial_init_func;
  return delegate(p_get_proc_address, p_library, r_initialization);
}

// Calls DisplayServer.window_set_size(Vector2i(width, height), 0). Returns
// false (harmlessly) if the resize API couldn't be resolved yet, e.g. called
// before any instance has started.
static bool godot_resize_offscreen(int width, int height) {
  resolve_resize_api();
  if (g_global_get_singleton == nullptr || g_classdb_get_method_bind == nullptr ||
      g_object_method_bind_ptrcall == nullptr || g_string_name_new_with_utf8_chars == nullptr) {
    return false;
  }

  GDExtensionPtrDestructor string_name_destructor =
      g_variant_get_ptr_destructor != nullptr ? g_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME) : nullptr;

  uint8_t display_server_name[8];
  g_string_name_new_with_utf8_chars(display_server_name, "DisplayServer");
  GDExtensionObjectPtr display_server = g_global_get_singleton(display_server_name);
  if (string_name_destructor != nullptr) {
    string_name_destructor(display_server_name);
  }
  if (display_server == nullptr) {
    return false;
  }

  if (g_window_set_size_bind == nullptr) {
    uint8_t class_name[8];
    uint8_t method_name[8];
    g_string_name_new_with_utf8_chars(class_name, "DisplayServer");
    g_string_name_new_with_utf8_chars(method_name, "window_set_size");
    // Hash from extension_api.json for DisplayServer.window_set_size(Vector2i, int); re-verify
    // against a fresh dump if this ever starts returning null (engine ABI drift).
    g_window_set_size_bind = g_classdb_get_method_bind(class_name, method_name, 2019273902);
    if (string_name_destructor != nullptr) {
      string_name_destructor(class_name);
      string_name_destructor(method_name);
    }
  }
  if (g_window_set_size_bind == nullptr) {
    return false;
  }

  struct {
    int32_t x;
    int32_t y;
  } size_arg = {width, height};
  int64_t window_id_arg = 0;
  const void *args[2] = {&size_arg, &window_id_arg};
  g_object_method_bind_ptrcall(g_window_set_size_bind, display_server, args, nullptr);
  return true;
}

// MARK: - Frame delivery

// Called from the engine's rendering thread/completion handler; only touches
// the mutex-guarded pending-frame fields, nothing GL/GTK related.
static void on_offscreen_frame(void *p_userdata, const GodotOffscreenFrame *p_frame) {
  if (p_frame->type != GODOT_OFFSCREEN_SURFACE_TYPE_DMABUF) {
    return;
  }

  LibgodotTexture *self = LIBGODOT_TEXTURE(p_userdata);

  // The fd is owned by the engine and may be reused/closed once this
  // callback returns; dup() it so it survives until populate() imports it.
  int dup_fd = dup(p_frame->surface.dmabuf.fd);
  if (dup_fd < 0) {
    g_warning("libgodot: dup() of dma-buf fd failed: %s", g_strerror(errno));
    return;
  }

  g_mutex_lock(&self->frame_mutex);
  if (self->has_pending_frame && self->pending_fd >= 0) {
    // A frame we never got around to displaying; drop it rather than block
    // the engine's render thread on a slow/stalled Flutter raster thread.
    close(self->pending_fd);
  }
  self->pending_fd = dup_fd;
  self->pending_drm_format = p_frame->surface.dmabuf.drm_format;
  self->pending_stride = p_frame->surface.dmabuf.stride;
  self->pending_offset = p_frame->surface.dmabuf.offset;
  self->pending_modifier = p_frame->surface.dmabuf.modifier;
  self->pending_width = p_frame->width;
  self->pending_height = p_frame->height;
  self->has_pending_frame = TRUE;
  g_mutex_unlock(&self->frame_mutex);

  fl_texture_registrar_mark_texture_frame_available(self->registrar, FL_TEXTURE(self));
}

static gboolean iterate_cb(gpointer user_data) {
  LibgodotTexture *self = LIBGODOT_TEXTURE(user_data);
  if (self->godot_instance == nullptr) {
    self->iteration_source_id = 0;
    return G_SOURCE_REMOVE;
  }
  if (libgodot_godot_instance_iteration(self->godot_instance)) {
    // Engine requested exit.
    self->iteration_source_id = 0;
    return G_SOURCE_REMOVE;
  }
  return G_SOURCE_CONTINUE;
}

// MARK: - FlTextureGL

static gboolean libgodot_texture_populate(FlTextureGL *texture,
                                           uint32_t *target,
                                           uint32_t *name,
                                           uint32_t *width,
                                           uint32_t *height,
                                           GError **error) {
  LibgodotTexture *self = LIBGODOT_TEXTURE(texture);

  gboolean have_frame = FALSE;
  int fd = -1;
  uint32_t drm_format = 0, stride = 0, offset = 0, frame_width = 0, frame_height = 0;
  uint64_t modifier = 0;

  g_mutex_lock(&self->frame_mutex);
  if (self->has_pending_frame) {
    have_frame = TRUE;
    fd = self->pending_fd;
    drm_format = self->pending_drm_format;
    stride = self->pending_stride;
    offset = self->pending_offset;
    modifier = self->pending_modifier;
    frame_width = self->pending_width;
    frame_height = self->pending_height;
    self->pending_fd = -1;
    self->has_pending_frame = FALSE;
  }
  g_mutex_unlock(&self->frame_mutex);

  if (self->gl_texture_id == 0) {
    glGenTextures(1, &self->gl_texture_id);
  }
  glBindTexture(GL_TEXTURE_2D, self->gl_texture_id);

  if (!self->gl_texture_initialized) {
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_EDGE);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_EDGE);
    // Placeholder so the texture is complete even before the first frame
    // arrives (Godot's boot can take a moment).
    static const uint8_t placeholder[4] = { 0, 0, 0, 255 };
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA8, 1, 1, 0, GL_RGBA, GL_UNSIGNED_BYTE, placeholder);
    self->last_width = 1;
    self->last_height = 1;
    self->gl_texture_initialized = TRUE;
  }

  if (have_frame) {
    EGLDisplay egl_display = eglGetCurrentDisplay();

    std::vector<EGLint> attribs = {
      EGL_WIDTH, (EGLint)frame_width,
      EGL_HEIGHT, (EGLint)frame_height,
      EGL_LINUX_DRM_FOURCC_EXT, (EGLint)drm_format,
      EGL_DMA_BUF_PLANE0_FD_EXT, fd,
      EGL_DMA_BUF_PLANE0_OFFSET_EXT, (EGLint)offset,
      EGL_DMA_BUF_PLANE0_PITCH_EXT, (EGLint)stride,
    };
    // Only send an explicit modifier if the engine gave us a non-default
    // one; not every driver supports EGL_EXT_image_dma_buf_import_modifiers,
    // and DRM_FORMAT_MOD_LINEAR (0) doesn't need to be spelled out.
    if (modifier != 0) {
      attribs.push_back(EGL_DMA_BUF_PLANE0_MODIFIER_LO_EXT);
      attribs.push_back((EGLint)(modifier & 0xffffffffu));
      attribs.push_back(EGL_DMA_BUF_PLANE0_MODIFIER_HI_EXT);
      attribs.push_back((EGLint)(modifier >> 32));
    }
    attribs.push_back(EGL_NONE);

    EGLImageKHR image = eglCreateImageKHR(egl_display, EGL_NO_CONTEXT, EGL_LINUX_DMA_BUF_EXT, nullptr, attribs.data());

    // Per EGL_EXT_image_dma_buf_import, the application may close the fd as
    // soon as eglCreateImageKHR() returns.
    close(fd);

    if (image != EGL_NO_IMAGE_KHR) {
      glEGLImageTargetTexture2DOES(GL_TEXTURE_2D, image);
      eglDestroyImageKHR(egl_display, image);
      self->last_width = frame_width;
      self->last_height = frame_height;
    } else {
      g_warning("libgodot: eglCreateImageKHR failed to import Godot's dma-buf frame (EGL error 0x%x)", eglGetError());
    }
  }

  *target = GL_TEXTURE_2D;
  *name = self->gl_texture_id;
  *width = self->last_width;
  *height = self->last_height;
  return TRUE;
}

static void libgodot_texture_dispose(GObject *object) {
  libgodot_texture_stop(LIBGODOT_TEXTURE(object));
  g_mutex_clear(&LIBGODOT_TEXTURE(object)->frame_mutex);
  G_OBJECT_CLASS(libgodot_texture_parent_class)->dispose(object);
}

static void libgodot_texture_class_init(LibgodotTextureClass *klass) {
  FL_TEXTURE_GL_CLASS(klass)->populate = libgodot_texture_populate;
  G_OBJECT_CLASS(klass)->dispose = libgodot_texture_dispose;
}

static void libgodot_texture_init(LibgodotTexture *self) {
  g_mutex_init(&self->frame_mutex);
  self->pending_fd = -1;
}

// MARK: - Public API

LibgodotTexture *libgodot_texture_new(FlTextureRegistrar *registrar,
                                       const char *project_path,
                                       int width,
                                       int height,
                                       int64_t init_function_address,
                                       GError **error) {
  LibgodotTexture *self = LIBGODOT_TEXTURE(g_object_new(libgodot_texture_get_type(), nullptr));
  self->registrar = registrar;

  std::vector<std::string> args_storage = {
    "libgodot_example",
    "--path", project_path,
    "--offscreen",
    "--resolution", std::to_string(width) + "x" + std::to_string(height),
    "--rendering-driver", "vulkan",
  };
  std::vector<char *> argv;
  argv.reserve(args_storage.size());
  for (std::string &arg : args_storage) {
    argv.push_back(arg.data());
  }

  g_delegate_init_func = init_function_address != 0
      ? reinterpret_cast<GDExtensionInitializationFunction>(init_function_address)
      : nullptr;

  self->godot_instance = libgodot_create_godot_instance((int)argv.size(), argv.data(), &combined_init_func);
  if (self->godot_instance == nullptr) {
    g_set_error(error, g_quark_from_static_string("libgodot"), 1, "libgodot_create_godot_instance() failed; see stderr for engine log.");
    g_object_unref(self);
    return nullptr;
  }

  if (!libgodot_godot_instance_start(self->godot_instance)) {
    g_set_error(error, g_quark_from_static_string("libgodot"), 2, "Godot instance failed to start; see stderr for engine log.");
    libgodot_destroy_godot_instance(self->godot_instance);
    self->godot_instance = nullptr;
    g_object_unref(self);
    return nullptr;
  }

  libgodot_godot_instance_set_offscreen_frame_callback(self->godot_instance, &on_offscreen_frame, self);

  self->iteration_source_id = g_timeout_add(1000 / 60, iterate_cb, self);

  return self;
}

gboolean libgodot_texture_resize(LibgodotTexture *self, int width, int height) {
  if (self->godot_instance == nullptr) {
    return FALSE;
  }
  return godot_resize_offscreen(width, height) ? TRUE : FALSE;
}

void libgodot_texture_stop(LibgodotTexture *self) {
  if (self->iteration_source_id != 0) {
    g_source_remove(self->iteration_source_id);
    self->iteration_source_id = 0;
  }

  if (self->godot_instance != nullptr) {
    libgodot_godot_instance_set_offscreen_frame_callback(self->godot_instance, nullptr, nullptr);
    libgodot_destroy_godot_instance(self->godot_instance);
    self->godot_instance = nullptr;
  }

  g_mutex_lock(&self->frame_mutex);
  if (self->pending_fd >= 0) {
    close(self->pending_fd);
    self->pending_fd = -1;
  }
  self->has_pending_frame = FALSE;
  g_mutex_unlock(&self->frame_mutex);
}
