use std::env;
use std::path::{Path, PathBuf};

fn main() {
    generate_bindings();
    link_godot();
}

fn generate_bindings() {
    let ndk_home = env::var("ANDROID_NDK_HOME")
        .expect("ANDROID_NDK_HOME environment variable must be set to your NDK path");

    let sysroot_include = PathBuf::from(ndk_home)
        .join("toolchains/llvm/prebuilt/darwin-x86_64/sysroot/usr/include");

    if !sysroot_include.exists() {
        panic!("Could not find NDK includes at: {}", sysroot_include.display());
    }

    let target = env::var("TARGET").expect("TARGET env var not set");

    let bindings = bindgen::Builder::default()
        .header("include/libgodot_android.h")
        .clang_arg(format!("--target={}", target))
        // for jni
        .clang_arg(format!("-I{}", sysroot_include.display()))
        .parse_callbacks(Box::new(bindgen::CargoCallbacks::new()))
        .generate()
        .expect("Unable to generate bindings");

    let out_path = PathBuf::from(env::var("OUT_DIR").unwrap());
    bindings
        .write_to_file(out_path.join("bindings.rs"))
        .expect("Couldn't write bindings!");
}

fn link_godot() {
    let manifest_dir = env::var("CARGO_MANIFEST_DIR").unwrap();
    let target = env::var("TARGET").unwrap();

    // most not supported ideally I just have you build godot
    // that or more accurately let's just not
    let android_abi = match target.as_str() {
        "aarch64-linux-android" => Some("arm64-v8a"),
        "armv7-linux-androideabi" => Some("armeabi-v7a"),
        "i686-linux-android" => Some("x86"),
        "x86_64-linux-android" => Some("x86_64"),
        _ => None,
    };

    if let Some(abi) = android_abi {
        // :root/libs/:abi/
        let lib_path = PathBuf::from(&manifest_dir).join("libs").join(abi);

        // check if file exists to provide a better error message
        if !lib_path.exists() {
            println!("Could not find library path: {}", lib_path.display());

            // I have no idea why flutter FRB builds for every fuckin architecture
            // 32 bit??
            return;
        }

        println!("cargo:rustc-link-search=native={}", lib_path.display());
        println!("cargo:rustc-link-lib=static=godot-cpp");
    } else {
        // windows or something
    }
}