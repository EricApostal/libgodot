#include <flutter_linux/flutter_linux.h>

#include "include/libgodot/libgodot_plugin.h"

// This file exposes some plugin internals for unit testing. See
// https://github.com/flutter/flutter/issues/88724 for current limitations
// in the unit-testable API.

// Handles the getPlatformVersion method call.
FlMethodResponse *get_platform_version();

// Handles the registerTexture method call: wraps an already-created-and-started libgodot
// instance (its handle, passed as an int by Dart -- see native/godot_core/godot_core.h and
// lib/godot_controller.dart) in a texture and registers it with Flutter.
FlMethodResponse *handle_register_texture(LibgodotPlugin *self, FlMethodCall *method_call);

// Handles the unregisterTexture method call: stops the Godot instance backing a previously
// registered texture (via godot_core_destroy) and unregisters it.
FlMethodResponse *handle_unregister_texture(LibgodotPlugin *self, FlMethodCall *method_call);
