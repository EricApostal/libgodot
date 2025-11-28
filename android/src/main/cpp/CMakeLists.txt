cmake_minimum_required(VERSION 3.18.1)

project(godot_ffi)

add_library(libgodot_android SHARED
    ../../../../native/libgodot_bridge.cpp
)

find_library(log-lib log)

target_link_libraries(libgodot_android ${log-lib})
