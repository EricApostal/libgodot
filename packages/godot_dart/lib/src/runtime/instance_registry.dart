// Maps between the opaque GDExtensionClassInstancePtr token a Dart-authored
// class's create_instance_func hands to the engine, and the actual Dart
// object it represents. Populated/cleared synchronously from
// create_instance_func/free_instance_func — see godot_instance.dart for why
// this must stay synchronous.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

abstract final class InstanceRegistry {
  static final Map<int, Object> _instances = {};

  /// Allocates a fresh, unique token to use as a GDExtensionClassInstancePtr.
  static Pointer<Void> createToken() => malloc<Uint8>(1).cast();

  static void bind(Pointer<Void> token, Object instance) {
    _instances[token.address] = instance;
  }

  static T? lookup<T>(Pointer<Void> token) {
    return _instances[token.address] as T?;
  }

  static void unbind(Pointer<Void> token) {
    _instances.remove(token.address);
    malloc.free(token);
  }
}
