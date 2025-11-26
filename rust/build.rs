use std::env;
use std::path::PathBuf;

use cached_path::{Options, cached_path_with_options};

fn main() {
    let url =  "https://github.com/migeran/libgodot/releases/download/4.5.1.migeran.2/godot-cpp-android.zip";
    let path = cached_path_with_options(url,  &Options::default().extract(),).unwrap();

    assert!(path.is_dir());
    println!("END BUILD!");

}