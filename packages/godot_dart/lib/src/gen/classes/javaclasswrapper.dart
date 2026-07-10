// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JavaClassWrapper extends GodotObject {
  JavaClassWrapper(super.nativePtr);

  /// Constructs a brand-new engine-owned JavaClassWrapper instance
  /// (via classdb_construct_object3), not an existing one.
  factory JavaClassWrapper.create() {
    return JavaClassWrapper(resolveClassConstructor('JavaClassWrapper'));
  }

  static final Pointer<Void> _mb_wrap =
      resolveMethodBind('JavaClassWrapper', 'wrap', 1124367868);

  JavaClass? wrap(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_wrap, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : JavaClass(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_exception =
      resolveMethodBind('JavaClassWrapper', 'get_exception', 3277089691);

  JavaObject? getException() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_exception, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : JavaObject(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped create_sam_callback(): an argument type is unsupported.
  // Skipped create_proxy(): an argument type is unsupported.
}
