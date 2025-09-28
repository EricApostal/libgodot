fn main() {
    if let Ok(godot_bin) = std::env::var("GODOT4_BIN") {
        println!("cargo:warning=GODOT4_BIN is set to: {}", godot_bin);
    } else {
        println!("cargo:warning=GODOT4_BIN is not set");
    }
}