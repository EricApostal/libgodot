# Where shit gets real
## The technical document

Okay so it turns out that AI cannot save me here, so I must fall back to critical thinking. Thus, this document is born.

I think the idea is this. We need the instance binding callback to register when a new gd instance is created. When that happens, we can map it to a map of objects, then resolve it. That's why we only get a Pointer<Never> in `gdObjectToDartObject`. Right okay now for the problems with this (which can be validated by referring to godot_dart). 

~~I think this should be solved in `_tieDartToNative`. It's possible I've implicitly disabled it when disabling finalizers and such? That's not hard to validate.~~

No, it's not solved in that. It's gotta be done in `_bindingCreate`. Right now, I'm doing that in process.dart, which is kinda ass but it's well good enough to at least get it working. The `p_token` and `p_instance` I *believe* are enough to resolve. `p_instance` is the actual address of the object, and I hypothetically have the string name (or at least a Pointer(void) to it?). I believe all I need to do is find out to resolve that class from the string name, then register it in the map with the address as the key, and whatever class (technically object) as the value. Then when I go to call it in spots like AppleNativeSurface.create or whatever, it should resolve fine. 

Ooh okay I did some research and I think i need `string_new_with_utf8_chars`. Or something of sorts? That doesn't write a null term so I can see if I need to do that manually or if there is one that does.