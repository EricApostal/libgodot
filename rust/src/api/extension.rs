use godot::init::{gdextension, ExtensionLibrary, InitLevel};

#[derive(Debug)]
pub struct LibGodotExtension;

#[gdextension]
unsafe impl ExtensionLibrary for LibGodotExtension {
    fn min_level() -> InitLevel {
        InitLevel::Scene
    }

    fn on_level_init(level: InitLevel) {
        if level == InitLevel::Scene {
            println!("doing level init: {:?}", level);
        }
    }
}