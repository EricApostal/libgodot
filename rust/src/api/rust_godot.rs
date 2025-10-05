use std::ffi::CString;
use std::ptr;
use libloading::{Library, Symbol};
use crate::ffi_bindings::*;
use super::extension::LibGodotExtension;



#[flutter_rust_bridge::frb(sync)] 
pub fn greet(name: String) -> String {
    format!("Hello, {name}!")
}

#[no_mangle]
unsafe extern "C" fn p_init_func(
    get_proc_address: crate::ffi_bindings::GDExtensionInterfaceGetProcAddress,
    library: crate::ffi_bindings::GDExtensionClassLibraryPtr,
    init: *mut crate::ffi_bindings::GDExtensionInitialization,
) -> crate::ffi_bindings::GDExtensionBool {
    // Required due to the lack of a constructor facility such as .init_array in rust wasm
    #[cfg(target_os = "emscripten")]
    emscripten_preregistration();
    
    // Convert FFI types to Godot types for the actual initialization
    let godot_get_proc_address = get_proc_address.map(|f| {
        std::mem::transmute::<
            unsafe extern "C" fn(*const ::core::ffi::c_char) -> crate::ffi_bindings::GDExtensionInterfaceFunctionPtr,
            unsafe extern "C" fn(*const ::core::ffi::c_char) -> ::godot::sys::GDExtensionInterfaceFunctionPtr
        >(f)
    });
    
    let godot_library = library as ::godot::sys::GDExtensionClassLibraryPtr;
    let godot_init = init as *mut ::godot::sys::GDExtensionInitialization;

    ::godot::init::__gdext_load_library::<LibGodotExtension>(
        godot_get_proc_address,
        godot_library,
        godot_init
    )
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
        
        // Dynamically load the libgodot library
        let lib_path = "../example/assets/libgodot-46.macos.template_debug.dev.arm64.dylib";
        let lib = match Library::new(lib_path) {
            Ok(lib) => lib,
            Err(e) => return format!("Failed to load library {}: {}", lib_path, e),
        };
        
        // Get the function symbol dynamically
        let create_instance: Symbol<unsafe extern "C" fn(
            i32,
            *mut *mut i8,
            Option<GDExtensionInitializationFunction>,
            Option<InvokeCallbackFunction>,
            ExecutorData,
            Option<InvokeCallbackFunction>,
            ExecutorData,
        ) -> GDExtensionObjectPtr> = match lib.get(b"libgodot_create_godot_instance") {
            Ok(func) => func,
            Err(e) => return format!("Failed to get symbol libgodot_create_godot_instance: {}", e),
        };
        
        // Create Godot instance using the dynamically loaded function
        let godot_instance = create_instance(
            argc,
            argv.as_ptr() as *mut *mut i8,
            Some(p_init_func), // Pass our initialization function
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
