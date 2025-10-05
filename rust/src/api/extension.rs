use godot::init::{gdextension, ExtensionLibrary};

pub struct LibGodotExtension;
#[gdextension]
pub unsafe impl ExtensionLibrary for LibGodotExtension {
    
}