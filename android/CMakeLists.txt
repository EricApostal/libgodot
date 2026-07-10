cmake_minimum_required(VERSION 3.10)

project(libgodot_offscreen_renderer LANGUAGES CXX)

# Unlike the Linux/Windows plugin native libraries, Godot itself is not linked into this library:
# on Android, the engine is driven from Kotlin via Godot's own org.godotengine.godot.Godot/GodotLib
# JNI layer (see android/src/main/kotlin/.../LibgodotPlugin.kt), which already exists upstream for
# embedding the "offscreen" display driver. This library only bridges the AHardwareBuffer frames
# that driver produces into the Surface backing a Flutter TextureRegistry.SurfaceProducer.
add_library(godot_offscreen_renderer SHARED
  src/main/cpp/godot_offscreen_renderer.cpp
)

target_link_libraries(godot_offscreen_renderer
  android
  EGL
  GLESv2
  log
)

set_target_properties(godot_offscreen_renderer PROPERTIES
  CXX_STANDARD 17
  CXX_STANDARD_REQUIRED ON)
