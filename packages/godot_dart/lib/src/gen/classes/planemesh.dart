// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PlaneMesh extends PrimitiveMesh {
  PlaneMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned PlaneMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory PlaneMesh.create() {
    return PlaneMesh(resolveClassConstructor('PlaneMesh'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('PlaneMesh', 'set_size', 743155724);

  void setSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('PlaneMesh', 'get_size', 3341600327);

  Vector2 getSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_subdivide_width =
      resolveMethodBind('PlaneMesh', 'set_subdivide_width', 1286410249);

  void setSubdivideWidth(int subdivide) {
    final arg0 = malloc<Int64>()..value = subdivide;
    try {
      ptrcallVoid(_mb_set_subdivide_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_width =
      resolveMethodBind('PlaneMesh', 'get_subdivide_width', 3905245786);

  int getSubdivideWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_subdivide_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_subdivide_depth =
      resolveMethodBind('PlaneMesh', 'set_subdivide_depth', 1286410249);

  void setSubdivideDepth(int subdivide) {
    final arg0 = malloc<Int64>()..value = subdivide;
    try {
      ptrcallVoid(_mb_set_subdivide_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_depth =
      resolveMethodBind('PlaneMesh', 'get_subdivide_depth', 3905245786);

  int getSubdivideDepth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_subdivide_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_center_offset =
      resolveMethodBind('PlaneMesh', 'set_center_offset', 3460891852);

  void setCenterOffset(Vector3 offset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_center_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_offset =
      resolveMethodBind('PlaneMesh', 'get_center_offset', 3360562783);

  Vector3 getCenterOffset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_center_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_orientation =
      resolveMethodBind('PlaneMesh', 'set_orientation', 2751399687);

  void setOrientation(int orientation) {
    final arg0 = malloc<Int64>()..value = orientation;
    try {
      ptrcallVoid(_mb_set_orientation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_orientation =
      resolveMethodBind('PlaneMesh', 'get_orientation', 3227599250);

  int getOrientation() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_orientation, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
