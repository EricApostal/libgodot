// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFMesh extends Resource {
  GLTFMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFMesh.create() {
    return GLTFMesh(resolveClassConstructor('GLTFMesh'));
  }

  static final Pointer<Void> _mb_get_original_name =
      resolveMethodBind('GLTFMesh', 'get_original_name', 2841200299);

  String getOriginalName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_original_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_original_name =
      resolveMethodBind('GLTFMesh', 'set_original_name', 83702148);

  void setOriginalName(String originalName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), originalName);
    try {
      ptrcallVoid(_mb_set_original_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('GLTFMesh', 'get_mesh', 3754628756);

  ImporterMesh? getMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ImporterMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('GLTFMesh', 'set_mesh', 2255166972);

  void setMesh(ImporterMesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_blend_weights(): unsupported return type "PackedFloat32Array".
  // Skipped set_blend_weights(): an argument type is unsupported.
  // Skipped get_instance_materials(): unsupported return type "typedarray::Material".
  // Skipped set_instance_materials(): an argument type is unsupported.
  // Skipped get_additional_data(): unsupported return type "Variant".
  // Skipped set_additional_data(): an argument type is unsupported.
}
