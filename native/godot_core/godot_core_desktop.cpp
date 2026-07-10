#include "godot_core.h"

// godot_core_create/_start/_destroy/_iteration: the half of godot_core's API that wraps
// libgodot_create_godot_instance/_start/_destroy_godot_instance/_iteration directly. Only macOS
// and Linux compile this file -- Android's engine .so doesn't export
// libgodot_create_godot_instance/_destroy_godot_instance at all (its bootstrap goes through
// GodotLib.setup()/step() instead; see godot_core_prepare_init_func in godot_core.cpp and
// android/src/main/cpp/godot_core_android_bridge.cpp), and calling libgodot_godot_instance_start/
// _iteration on Android would run engine setup/the main loop a second time on top of what
// GodotLib.setup()/step() already does (see platform/android/libgodot_android.cpp upstream).

GodotCoreHandle godot_core_create(int p_argc, char **p_argv, GDExtensionInitializationFunction p_init_func) {
  return libgodot_create_godot_instance(p_argc, p_argv, godot_core_prepare_init_func(p_init_func));
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

bool godot_core_iteration(GodotCoreHandle p_handle) {
  if (p_handle == nullptr) {
    return true;
  }
  return libgodot_godot_instance_iteration(static_cast<GDExtensionObjectPtr>(p_handle));
}
