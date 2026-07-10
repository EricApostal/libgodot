// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JavaClass extends RefCounted {
  JavaClass(super.nativePtr);

  static final Pointer<Void> _mb_get_java_class_name =
      resolveMethodBind('JavaClass', 'get_java_class_name', 201670096);

  String getJavaClassName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_java_class_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_java_method_list(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_get_java_parent_class =
      resolveMethodBind('JavaClass', 'get_java_parent_class', 541536347);

  JavaClass? getJavaParentClass() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_java_parent_class, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : JavaClass(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_java_method =
      resolveMethodBind('JavaClass', 'has_java_method', 2619796661);

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
