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

  GDExtensionInitializationFunction init_func = trivial_init_func;
  if (init_function_address != 0) {
    init_func = reinterpret_cast<GDExtensionInitializationFunction>(init_function_address);
  }

  self->godot_instance = libgodot_create_godot_instance((int)argv.size(), argv.data(), init_func);
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
