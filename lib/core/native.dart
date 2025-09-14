import 'dart:ffi';
import 'dart:ffi' as ffi;

import 'package:flutter/services.dart';
import 'package:godot_dart/godot_dart.dart';

class NativeBridge {
  static final methodChannel = MethodChannel("libgodot-native-bridge");

  static GDExtensionFFI loadLibGodot() {
    DynamicLibrary.open("libgodot_dart.dylib");
    final dylib = DynamicLibrary.open("libgodot.dylib");
    return GDExtensionFFI(dylib);
  }
}
