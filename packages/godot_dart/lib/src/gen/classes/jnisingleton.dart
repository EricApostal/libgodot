// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JNISingleton extends GodotObject {
  JNISingleton(super.nativePtr);

  /// Constructs a brand-new engine-owned JNISingleton instance
  /// (via classdb_construct_object3), not an existing one.
  factory JNISingleton.create() {
    return JNISingleton(resolveClassConstructor('JNISingleton'));
  }

  static final Pointer<Void> _mb_has_java_method =
      resolveMethodBind('JNISingleton', 'has_java_method', 2619796661);

  bool hasJavaMethod(String method) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), method);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_java_method, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

}
