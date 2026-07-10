// Maps between the opaque GDExtensionClassInstancePtr token a Dart-authored
// class's create_instance_func hands to the engine, and the actual Dart
// object it represents. Populated/cleared synchronously from
// create_instance_func/free_instance_func — see godot_instance.dart for why
// this must stay synchronous.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'proc_table.dart';
import 'string_name_cache.dart';

abstract final class InstanceRegistry {
  static final Map<int, Object> _instances = {};

  /// Allocates a fresh, unique token to use as a GDExtensionClassInstancePtr.
  static Pointer<Void> createToken() => malloc<Uint8>(1).cast();

  static void bind(
      Pointer<Void> token, Object instance, [Pointer<Void>? obj]) {
    _instances[token.address] = instance;
    if (obj != null && obj.address != 0) {
      _instances[obj.address] = instance;
    }
  }

  static T? lookup<T>(Pointer<Void> token) {
    return _instances[token.address] as T?;
  }

  static void unbind(Pointer<Void> token, [Pointer<Void>? obj]) {
    _instances.remove(token.address);
    if (obj != null) {
      _instances.remove(obj.address);
    }
    malloc.free(token);
  }


  /// Dynamically constructs a new instance of a Dart-registered `@GodotClass`
  /// by its engine class name (e.g. at runtime, from another Dart class's
  /// `_ready()`), returning the Dart wrapper its own `create_instance_func`
  /// bound via [bind] during construction — the same mechanism the engine
  /// uses when GDScript does `SomeCustomClass.new()`.
  static T? constructAndWrap<T>(String className) {
    final ptr = GodotApi.classdbConstructObject3(StringNameCache.intern(className));
    if (ptr.address == 0) return null;
    return lookup<T>(ptr);
  }
}
