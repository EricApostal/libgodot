// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JavaObject extends RefCounted {
  JavaObject(super.nativePtr);

  /// Constructs a brand-new engine-owned JavaObject instance
  /// (via classdb_construct_object3), not an existing one.
  factory JavaObject.create() {
    return JavaObject(resolveClassConstructor('JavaObject'));
  }

  static final Pointer<Void> _mb_get_java_class =
      resolveMethodBind('JavaObject', 'get_java_class', 541536347);

  JavaClass? getJavaClass() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_java_class, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : JavaClass(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_java_method =
      resolveMethodBind('JavaObject', 'has_java_method', 2619796661);

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
