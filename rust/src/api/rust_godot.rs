use std::ffi::CString;
use std::ptr;
use libloading::{Library, Symbol};
use crate::ffi_bindings::*;



#[flutter_rust_bridge::frb(sync)] 
pub fn greet(name: String) -> String {
    format!("Hello, {name}!")
}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();

    unsafe {
        libgodot_create_godot_instance_android(
            0,
            std::ptr::null_mut(),
            Some(p_init_func), 
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
            std::ptr::null_mut(),
        );
    }
}

