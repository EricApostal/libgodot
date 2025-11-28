cmake_minimum_required(VERSION 3.18.1)
project(godot_ffi)

add_library(libgodot_android SHARED IMPORTED)
set_target_properties(libgodot_android PROPERTIES IMPORTED_LOCATION
    ${CMAKE_CURRENT_SOURCE_DIR}/../libgodot_android.so
)
