// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InstancePlaceholder extends Node {
  InstancePlaceholder(super.nativePtr);

  // Skipped get_stored_values(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_create_instance =
      resolveMethodBind('InstancePlaceholder', 'create_instance', 3794612210);

  Node? createInstance(bool replace, PackedScene customScene) {
    final arg0 = malloc<Uint8>()..value = replace ? 1 : 0;
    final arg1 = malloc<Pointer<Void>>()..value = customScene.nativePtr;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_instance, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_instance_path =
      resolveMethodBind('InstancePlaceholder', 'get_instance_path', 201670096);

  String getInstancePath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_instance_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
