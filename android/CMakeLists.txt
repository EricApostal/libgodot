cmake_minimum_required(VERSION 3.10)

project(libgodot_offscreen_renderer LANGUAGES CXX)

# native/godot_core is the shared C++ core (used identically by macos/libgodot.podspec and
# linux/CMakeLists.txt) providing the init-func-combining/resize logic that used to be
# hand-duplicated per platform. Only godot_core.cpp (not godot_core_desktop.cpp) applies here --
# see that file's own header comment: Android's engine .so doesn't export
# libgodot_create_godot_instance()/_destroy_godot_instance() at all, since Android's bootstrap
# goes through Kotlin's Godot/GodotLib JNI layer (see LibgodotPlugin.kt) instead.
set(GODOT_CORE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../native/godot_core")
set(GODOT_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../third_party/godot")

# Sanity-checked here (with a build_godot_android.sh pointer if missing) even though this library
# doesn't link against it directly: godot_core.cpp/godot_offscreen_renderer.cpp resolve
# libgodot_android_get_godot_instance()/libgodot_godot_instance_set_offscreen_frame_callback() via
# dlsym(RTLD_DEFAULT, ...) at runtime instead of a normal link-time dependency, since declaring a
# real CMake dependency on it here -- even as an IMPORTED target -- makes AGP *also* copy it into
# this module's own native-lib output, conflicting with the real copy the app module already gets
# via its godot-lib.aar dependency ("2 files found with path lib/<abi>/libgodot_android.so" in
# :app:mergeDebugNativeLibs). The dlsym resolution is safe because by the time either symbol is
# actually looked up, Kotlin's GodotLib has already loaded that .so into the process.
set(LIBGODOT_ANDROID_LIB "${GODOT_SOURCE_DIR}/platform/android/java/lib/libs/debug/${ANDROID_ABI}/libgodot_android.so")
if(NOT EXISTS "${LIBGODOT_ANDROID_LIB}")
  message(FATAL_ERROR
    "No libgodot_android.so found at ${LIBGODOT_ANDROID_LIB}. Build it first with:\n"
    "  ${CMAKE_CURRENT_SOURCE_DIR}/build_godot_android.sh")
endif()

# Unlike the Linux/Windows plugin native libraries, Godot's own C++ bootstrap (create/start/
# destroy) is not linked into this library: Android's OS_Android is coupled to the Java-side
# GodotJavaWrapper, so there is no headless libgodot_create_godot_instance() entry point for this
# platform (see LibgodotPlugin.kt for how the engine is booted instead). This library bridges the
# AHardwareBuffer frames that driver produces into the Surface backing a Flutter
# TextureRegistry.SurfaceProducer, plus the godot_core-mediated init-func/resize/frame-callback
# JNI surface Kotlin drives (see godot_offscreen_renderer.cpp).
add_library(godot_offscreen_renderer SHARED
  src/main/cpp/godot_offscreen_renderer.cpp
  "${GODOT_CORE_DIR}/godot_core.cpp"
)

target_include_directories(godot_offscreen_renderer PRIVATE
  "${GODOT_CORE_DIR}"
  "${GODOT_SOURCE_DIR}"
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
