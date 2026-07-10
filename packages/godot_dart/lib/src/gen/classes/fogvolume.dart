// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FogVolume extends VisualInstance3D {
  FogVolume(super.nativePtr);

  /// Constructs a brand-new engine-owned FogVolume instance
  /// (via classdb_construct_object3), not an existing one.
  factory FogVolume.create() {
    return FogVolume(resolveClassConstructor('FogVolume'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('FogVolume', 'set_size', 3460891852);

  void setSize(Vector3 size) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('FogVolume', 'get_size', 3360562783);

  Vector3 getSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('FogVolume', 'set_shape', 1416323362);

  void setShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('FogVolume', 'get_shape', 3920334604);

  int getShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('FogVolume', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('FogVolume', 'get_material', 5934680);

  Material? getMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
