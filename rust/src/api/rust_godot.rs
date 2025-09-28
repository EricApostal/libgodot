use godot::classes::{DisplayServer, DisplayServerEmbedded};
use std::ffi::{CString, CStr};
use std::ptr;
use crate::ffi_bindings::*;

#[flutter_rust_bridge::frb(sync)] 
pub fn greet(name: String) -> String {
    format!("Hello, {name}!")
}

#[flutter_rust_bridge::frb(sync)]
pub fn start_godot(path: String) -> String {
    unsafe {
        let c_path = match CString::new(path.clone()) {
            Ok(c_str) => c_str,
            Err(_) => return format!("Failed to convert path to C string: {}", path),
        };

        let argv = vec![c_path.as_ptr() as *mut i8];
        let argc = argv.len() as i32;
        
        // Create Godot instance using the FFI bindings
        // Note: We're using null pointers for the callback functions for now
        let godot_instance = libgodot_create_godot_instance(
            argc,
            argv.as_ptr() as *mut *mut i8,
            None, // p_init_func - would need to be provided by the host application
            None, // p_async_func
            ptr::null_mut(), // p_async_data
            None, // p_sync_func
            ptr::null_mut(), // p_sync_data
        );
        
        if godot_instance.is_null() {
            format!("Failed to create Godot instance with path: {}", path)
        } else {
            format!("Successfully started Godot with path: {}", path)
        }
    }
}



#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
