#include "godot_core.h"

// MARK: - Trivial GDExtension init function.
//
// libgodot hands the host straight into the engine's GDExtension loading machinery, but this
// plugin doesn't register any custom classes of its own, so this just satisfies the required
// shape, unless the caller supplied its own init function (see godot_core_create).

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
// DisplayServer.window_set_size() is a normal bound ClassDB method, and the offscreen display
// driver's override of it genuinely reallocates the underlying native surface ring at the new
// size (see the fork's servers/display/display_server_offscreen.cpp) - there's no dedicated
// libgodot.h C API for this, so it's called directly through the GDExtension interface instead.
// This has to work regardless of whether the caller supplied its own init function (e.g.
// godot_dart's registration path) or godot_core's own trivial_init_func is used, so
// combined_init_func always runs first to capture GetProcAddress before delegating to whichever
// one actually applies.
//
// These are file-static (not per-handle) because ClassDB/singletons are process-global in this
// engine, and libgodot itself only ever allows one instance to exist at a time (see
// libgodot_create_godot_instance's ERR_FAIL_COND_V_MSG) - there's never more than one
// meaningfully different set of these at once. It also sidesteps the fact that a raw
// GDExtensionInitializationFunction is a plain C function pointer with no room for a captured
// per-instance context.
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

// Calls DisplayServer.window_set_size(Vector2i(width, height), 0). Returns false (harmlessly) if
// the resize API couldn't be resolved yet, e.g. called before any instance has started.
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
  } size_arg = { width, height };
  int64_t window_id_arg = 0;
  const void *args[2] = { &size_arg, &window_id_arg };
  g_object_method_bind_ptrcall(g_window_set_size_bind, display_server, args, nullptr);
  return true;
}

// MARK: - Handle.
//
// The handle is just the GDExtensionObjectPtr libgodot itself hands back; there's no pump-thread
// or other state to wrap it with (see godot_core_iteration's doc comment for why iteration can't
// live on a shared background thread the way the rest of this file's logic could be hoisted out).

GodotCoreHandle godot_core_create(int p_argc, char **p_argv, GDExtensionInitializationFunction p_init_func) {
  g_delegate_init_func = p_init_func;
  return libgodot_create_godot_instance(p_argc, p_argv, &combined_init_func);
}

bool godot_core_start(GodotCoreHandle p_handle) {
  if (p_handle == nullptr) {
    return false;
  }
  return libgodot_godot_instance_start(static_cast<GDExtensionObjectPtr>(p_handle));
}

void godot_core_destroy(GodotCoreHandle p_handle) {
  if (p_handle == nullptr) {
    return;
  }
  GDExtensionObjectPtr instance = static_cast<GDExtensionObjectPtr>(p_handle);
  libgodot_godot_instance_set_offscreen_frame_callback(instance, nullptr, nullptr);
  libgodot_destroy_godot_instance(instance);
}

bool godot_core_resize(GodotCoreHandle p_handle, int p_width, int p_height) {
  if (p_handle == nullptr) {
    return false;
  }
  return godot_resize_offscreen(p_width, p_height);
}

void godot_core_set_frame_callback(GodotCoreHandle p_handle, GodotOffscreenFrameCallback p_callback, void *p_userdata) {
  if (p_handle == nullptr) {
    return;
  }
  libgodot_godot_instance_set_offscreen_frame_callback(static_cast<GDExtensionObjectPtr>(p_handle), p_callback, p_userdata);
}

bool godot_core_iteration(GodotCoreHandle p_handle) {
  if (p_handle == nullptr) {
    return true;
  }
  return libgodot_godot_instance_iteration(static_cast<GDExtensionObjectPtr>(p_handle));
}
