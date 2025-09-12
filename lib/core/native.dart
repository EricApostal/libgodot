import 'dart:ffi';

import 'package:flutter/services.dart';
import 'package:libgodot/godot/core/gdextension_ffi_bindings.dart';

class NativeBridge {
  static final methodChannel = MethodChannel("libgodot-native-bridge");

  static GDExtensionFFI loadLibGodot() {
    final dylib = DynamicLibrary.open("libgodot.dylib");
    return GDExtensionFFI(dylib);
  }
}
