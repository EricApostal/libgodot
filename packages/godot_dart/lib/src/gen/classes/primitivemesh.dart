// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PrimitiveMesh extends Mesh {
  PrimitiveMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned PrimitiveMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory PrimitiveMesh.create() {
    return PrimitiveMesh(resolveClassConstructor('PrimitiveMesh'));
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('PrimitiveMesh', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('PrimitiveMesh', 'get_material', 5934680);

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

  // Skipped get_mesh_arrays(): unsupported return type "Array".
  static final Pointer<Void> _mb_set_custom_aabb =
      resolveMethodBind('PrimitiveMesh', 'set_custom_aabb', 259215842);

  void setCustomAabb(AABB aabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    aabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_custom_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_aabb =
      resolveMethodBind('PrimitiveMesh', 'get_custom_aabb', 1068685055);

  AABB getCustomAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flip_faces =
      resolveMethodBind('PrimitiveMesh', 'set_flip_faces', 2586408642);

  void setFlipFaces(bool flipFaces) {
    final arg0 = malloc<Uint8>()..value = flipFaces ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flip_faces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flip_faces =
      resolveMethodBind('PrimitiveMesh', 'get_flip_faces', 36873697);

  bool getFlipFaces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flip_faces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_add_uv2 =
      resolveMethodBind('PrimitiveMesh', 'set_add_uv2', 2586408642);

  void setAddUv2(bool addUv2) {
    final arg0 = malloc<Uint8>()..value = addUv2 ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_add_uv2, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_add_uv2 =
      resolveMethodBind('PrimitiveMesh', 'get_add_uv2', 36873697);

  bool getAddUv2() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_add_uv2, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_uv2_padding =
      resolveMethodBind('PrimitiveMesh', 'set_uv2_padding', 373806689);

  void setUv2Padding(double uv2Padding) {
    final arg0 = malloc<Double>()..value = uv2Padding;
    try {
      ptrcallVoid(_mb_set_uv2_padding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_uv2_padding =
      resolveMethodBind('PrimitiveMesh', 'get_uv2_padding', 1740695150);

  double getUv2Padding() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_uv2_padding, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_request_update =
      resolveMethodBind('PrimitiveMesh', 'request_update', 3218959716);

  void requestUpdate() {
    try {
      ptrcallVoid(_mb_request_update, nativePtr, []);
    } finally {
    }
  }

}
