# The Flutter tooling requires that developers have CMake 3.10 or later
# installed. You should not increase this version, as doing so will cause
# the plugin to fail to compile for some customers of the plugin.
cmake_minimum_required(VERSION 3.10)

# Project-level configuration.
set(PROJECT_NAME "libgodot")
project(${PROJECT_NAME} LANGUAGES CXX)

# This value is used when generating builds using this plugin, so it must
# not be changed.
set(PLUGIN_NAME "libgodot_plugin")

# Any new source files that you add to the plugin should be added here.
list(APPEND PLUGIN_SOURCES
  "libgodot_plugin.cc"
  "godot_texture.cc"
)

# libgodot shared library, built separately via:
#   scons platform=linuxbsd target=template_debug library_type=shared_library \
#       arch=x86_64 disable_path_overrides=no
# from third_party/godot (see third_party/godot/tests/offscreen_embed_test/README.md
# for background on the offscreen display driver this plugin drives).
set(GODOT_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/../third_party/godot")
file(GLOB LIBGODOT_SHARED_LIB "${GODOT_SOURCE_DIR}/bin/libgodot*.so")
list(LENGTH LIBGODOT_SHARED_LIB LIBGODOT_SHARED_LIB_COUNT)
if(LIBGODOT_SHARED_LIB_COUNT EQUAL 0)
  message(FATAL_ERROR
    "No libgodot*.so found in ${GODOT_SOURCE_DIR}/bin. Build it first with:\n"
    "  cd ${GODOT_SOURCE_DIR} && scons platform=linuxbsd target=template_debug "
    "library_type=shared_library arch=x86_64 disable_path_overrides=no")
endif()
list(GET LIBGODOT_SHARED_LIB 0 LIBGODOT_SHARED_LIB)
message(STATUS "libgodot: linking against ${LIBGODOT_SHARED_LIB}")

# Define the plugin library target. Its name must not be changed (see comment
# on PLUGIN_NAME above).
add_library(${PLUGIN_NAME} SHARED
  ${PLUGIN_SOURCES}
)

# Apply a standard set of build settings that are configured in the
# application-level CMakeLists.txt. This can be removed for plugins that want
# full control over build settings.
apply_standard_settings(${PLUGIN_NAME})

# Symbols are hidden by default to reduce the chance of accidental conflicts
# between plugins. This should not be removed; any symbols that should be
# exported should be explicitly exported with the FLUTTER_PLUGIN_EXPORT macro.
set_target_properties(${PLUGIN_NAME} PROPERTIES
  CXX_VISIBILITY_PRESET hidden)
target_compile_definitions(${PLUGIN_NAME} PRIVATE FLUTTER_PLUGIN_IMPL)

# Source include directories and library dependencies. Add any plugin-specific
# dependencies here.
target_include_directories(${PLUGIN_NAME} INTERFACE
  "${CMAKE_CURRENT_SOURCE_DIR}/include")
target_include_directories(${PLUGIN_NAME} PRIVATE
  "${GODOT_SOURCE_DIR}")
target_link_libraries(${PLUGIN_NAME} PRIVATE flutter)
target_link_libraries(${PLUGIN_NAME} PRIVATE PkgConfig::GTK)

find_package(PkgConfig REQUIRED)
pkg_check_modules(EPOXY REQUIRED IMPORTED_TARGET epoxy)
target_link_libraries(${PLUGIN_NAME} PRIVATE PkgConfig::EPOXY)
target_link_libraries(${PLUGIN_NAME} PRIVATE "${LIBGODOT_SHARED_LIB}")

# libgodot.so is bundled alongside this plugin's own .so (see
# libgodot_bundled_libraries below) rather than installed to a system
# library directory, so this plugin needs its own rpath to find it at
# runtime; the executable's rpath is not inherited by libraries it links.
set_target_properties(${PLUGIN_NAME} PROPERTIES
  BUILD_RPATH "$ORIGIN")

# List of absolute paths to libraries that should be bundled with the plugin.
# This list could contain prebuilt libraries, or libraries created by an
# external build triggered from this build file.
set(libgodot_bundled_libraries
  "${LIBGODOT_SHARED_LIB}"
  PARENT_SCOPE
)

# === Tests ===
# These unit tests can be run from a terminal after building the example.

# Only enable test builds when building the example (which sets this variable)
# so that plugin clients aren't building the tests.
if (${include_${PROJECT_NAME}_tests})
if(${CMAKE_VERSION} VERSION_LESS "3.11.0")
message("Unit tests require CMake 3.11.0 or later")
else()
set(TEST_RUNNER "${PROJECT_NAME}_test")
enable_testing()

# Add the Google Test dependency.
include(FetchContent)
FetchContent_Declare(
  googletest
  URL https://github.com/google/googletest/archive/release-1.11.0.zip
)
# Prevent overriding the parent project's compiler/linker settings
set(gtest_force_shared_crt ON CACHE BOOL "" FORCE)
# Disable install commands for gtest so it doesn't end up in the bundle.
set(INSTALL_GTEST OFF CACHE BOOL "Disable installation of googletest" FORCE)

FetchContent_MakeAvailable(googletest)

# The plugin's exported API is not very useful for unit testing, so build the
# sources directly into the test binary rather than using the shared library.
add_executable(${TEST_RUNNER}
  test/libgodot_plugin_test.cc
  ${PLUGIN_SOURCES}
)
apply_standard_settings(${TEST_RUNNER})
target_include_directories(${TEST_RUNNER} PRIVATE "${CMAKE_CURRENT_SOURCE_DIR}")
target_include_directories(${TEST_RUNNER} PRIVATE "${GODOT_SOURCE_DIR}")
target_link_libraries(${TEST_RUNNER} PRIVATE flutter)
target_link_libraries(${TEST_RUNNER} PRIVATE PkgConfig::GTK)
target_link_libraries(${TEST_RUNNER} PRIVATE PkgConfig::EPOXY)
target_link_libraries(${TEST_RUNNER} PRIVATE "${LIBGODOT_SHARED_LIB}")
target_link_libraries(${TEST_RUNNER} PRIVATE gtest_main gmock)
set_target_properties(${TEST_RUNNER} PROPERTIES BUILD_RPATH "$ORIGIN")

# Enable automatic test discovery.
include(GoogleTest)
gtest_discover_tests(${TEST_RUNNER})

endif()  # CMake version check
endif()  # include_${PROJECT_NAME}_tests