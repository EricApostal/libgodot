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
pub fn start_godot(lib_path: String, pck_path: String) -> String {
    std::println!("[Native] Starting godot");
    unsafe {
        if lib_path.is_empty() {
            return "Library path cannot be empty".to_string();
        }
        if pck_path.is_empty() {
            return "PCK path cannot be empty".to_string();
        }

        let c_path = match CString::new(lib_path.clone()) {
            Ok(c_str) => c_str,
            Err(e) => return format!("Failed to convert path to C string: {}: {}", lib_path, e),
        };

        let c_main_pack = match CString::new("--main-pack") {
            Ok(c_str) => c_str,
            Err(e) => return format!("Failed to convert --main-pack to C string: {}", e),
        };

        let c_pck_path = match CString::new(pck_path.clone()) {
            Ok(c_str) => c_str,
            Err(e) => return format!("Failed to convert pck_path to C string: {}: {}", pck_path, e),
        };

        let argv = vec![
            c_path.as_ptr() as *mut i8,
            c_main_pack.as_ptr() as *mut i8,
            c_pck_path.as_ptr() as *mut i8,
        ];

        let argc = argv.len() as i32;
        
        for (i, arg) in argv.iter().enumerate() {
            if arg.is_null() {
                return format!("Invalid argument at index {}: null pointer", i);
            }
        }
        
        let lib = match Library::new(lib_path.clone()) {
            Ok(lib) => lib,
            Err(e) => return format!("Failed to load library {}: {}", lib_path, e),
        };
        
        let create_instance: Symbol<unsafe extern "C" fn(
            ::core::ffi::c_int,
            *mut *mut ::core::ffi::c_char,
            GDExtensionInitializationFunction,
            InvokeCallbackFunction,
            ExecutorData,
            InvokeCallbackFunction,
            ExecutorData,
        ) -> GDExtensionObjectPtr> = match lib.get(b"libgodot_create_godot_instance") {
            Ok(func) => func,
            Err(e) => return format!("Failed to get symbol libgodot_create_godot_instance: {}", e),
        };
        
        // Create Godot instance using the dynamically loaded function
        println!("Start create instance");
        let godot_instance = create_instance(
            argc,
            argv.as_ptr() as *mut *mut ::core::ffi::c_char,
            Some(p_init_func), 
            None, // p_async_func
            ptr::null_mut(), // p_async_data
            None, // p_sync_func
            ptr::null_mut(), // p_sync_data
        );
        println!("End create instance");
        
        if godot_instance.is_null() {
            format!("Failed to create Godot instance with path: {}", lib_path)
        } else {
            format!("Successfully started Godot with path: {}", lib_path)
        }
    }
}



#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}
