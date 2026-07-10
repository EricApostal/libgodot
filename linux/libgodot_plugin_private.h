#include <flutter_linux/flutter_linux.h>

#include "include/libgodot/libgodot_plugin.h"

// This file exposes some plugin internals for unit testing. See
// https://github.com/flutter/flutter/issues/88724 for current limitations
// in the unit-testable API.

// Handles the getPlatformVersion method call.
FlMethodResponse *get_platform_version();

// Handles the createInstance method call: boots a Godot instance for the
// requested project and registers a texture for its rendered frames.
FlMethodResponse *handle_create_instance(LibgodotPlugin *self, FlMethodCall *method_call);

// Handles the destroyInstance method call: stops the Godot instance backing
// a previously created texture and unregisters it.
FlMethodResponse *handle_destroy_instance(LibgodotPlugin *self, FlMethodCall *method_call);

// Handles the resizeInstance method call: asks the engine to resize its
// offscreen surface for a previously created texture.
FlMethodResponse *handle_resize_instance(LibgodotPlugin *self, FlMethodCall *method_call);
