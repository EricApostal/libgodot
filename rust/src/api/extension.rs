use godot::init::{gdextension, ExtensionLibrary, InitLevel};

pub struct LibGodotExtension;
#[gdextension]
pub unsafe impl ExtensionLibrary for LibGodotExtension {
    fn min_level() -> InitLevel {
        println!("min level");
        InitLevel::Scene
    }

    // fn on_level_init(level: InitLevel) {
    //     println!("doing level init:");
    // }
}