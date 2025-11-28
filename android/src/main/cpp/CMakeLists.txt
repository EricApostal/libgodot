cmake_minimum_required(VERSION 3.4.1)

project(dummy_lib)

add_library(
    dummy_lib
    SHARED
    dummy.cpp
)