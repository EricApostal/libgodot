use std::ffi::CString;
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


    println!("Doing extension init with SCENE initialization level");
    let success = ::godot::init::__gdext_load_library::<LibGodotExtension>(
        godot_get_proc_address,
        godot_library,
        godot_init
    );

    println!("Got success! {success}");

    return success as u8;
}

#[flutter_rust_bridge::frb(sync)]
pub fn start_godot(pck_path: String) -> i64 {
    std::println!("[Native] Starting godot");

    unsafe {
        if pck_path.is_empty() {
            println!("[Native] Error: PCK path cannot be empty");
            return -1;
        }

        let c_program_name = CString::new("libgodot").unwrap();
        let c_main_pack = CString::new("--main-pack").unwrap();
        let c_pck_path = match CString::new(pck_path.clone()) {
            Ok(c_str) => c_str,
            Err(e) => {
                println!("[Native] Error: Failed to convert pck_path to C string: {}: {}", pck_path, e);
                return -1;
            }
        };

        let argv = vec![
            c_program_name.as_ptr() as *mut i8,
            c_main_pack.as_ptr() as *mut i8,
            c_pck_path.as_ptr() as *mut i8,
        ];

        let argc = argv.len() as i32;
        
        // Create Godot instance using the linked function
        println!("Start create instance");
        let godot_instance_ptr = libgodot_create_godot_instance_android(
            argc,
            argv.as_ptr() as *mut *mut ::core::ffi::c_char,
            Some(p_init_func), 
            std::ptr::null_mut(), // env
            std::ptr::null_mut(), // p_asset_manager
            std::ptr::null_mut(), // p_net_utils
            std::ptr::null_mut(), // p_directory_access_handler
            std::ptr::null_mut(), // p_file_access_handler
            std::ptr::null_mut(), // p_godot_io_wrapper
            std::ptr::null_mut(), // p_godot_wrapper
            std::ptr::null_mut(), // p_class_loader
        );
        println!("End create instance");

        if godot_instance_ptr.is_null() {
            println!("[Native] Error: Failed to create Godot instance");
            -1
        } else {
            // Store the raw pointer for later use when Godot is fully initialized
            // Don't try to access Godot classes immediately as init levels may not be ready
            let get_instance_id_fn = godot::sys::interface_fn!(object_get_instance_id);
            let instance_id = get_instance_id_fn(godot_instance_ptr as godot::sys::GDExtensionConstObjectPtr);
            
            println!("[Native] Successfully created Godot instance, instance ID: {}", instance_id);
            
            // Return the instance ID directly
            instance_id as i64
        }  
    }
}

#[flutter_rust_bridge::frb(sync)]
pub fn start_godot_instance(instance_id: i64) -> String {
    use godot::classes::GodotInstance;
    
    let mut gd_instance: godot::obj::Gd<GodotInstance> = godot::obj::Gd::from_instance_id(
        godot::obj::InstanceId::from_i64(instance_id)
    );

    
    let start_result = gd_instance.start();
    format!("Successfully started Godot instance ID: {}, start result: {}", 
            instance_id, start_result)

}

#[flutter_rust_bridge::frb(init)]
pub fn init_app() {
    // Default utilities - feel free to customize
    flutter_rust_bridge::setup_default_user_utils();
}

