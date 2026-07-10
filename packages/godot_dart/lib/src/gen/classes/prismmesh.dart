// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PrismMesh extends PrimitiveMesh {
  PrismMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned PrismMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory PrismMesh.create() {
    return PrismMesh(resolveClassConstructor('PrismMesh'));
  }

  static final Pointer<Void> _mb_set_left_to_right =
      resolveMethodBind('PrismMesh', 'set_left_to_right', 373806689);

  void setLeftToRight(double leftToRight) {
    final arg0 = malloc<Double>()..value = leftToRight;
    try {
      ptrcallVoid(_mb_set_left_to_right, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_left_to_right =
      resolveMethodBind('PrismMesh', 'get_left_to_right', 1740695150);

  double getLeftToRight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_left_to_right, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('PrismMesh', 'set_size', 3460891852);

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
      resolveMethodBind('PrismMesh', 'get_size', 3360562783);

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

  static final Pointer<Void> _mb_set_subdivide_width =
      resolveMethodBind('PrismMesh', 'set_subdivide_width', 1286410249);

  void setSubdivideWidth(int segments) {
    final arg0 = malloc<Int64>()..value = segments;
    try {
      ptrcallVoid(_mb_set_subdivide_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_width =
      resolveMethodBind('PrismMesh', 'get_subdivide_width', 3905245786);

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

  static final Pointer<Void> _mb_set_subdivide_height =
      resolveMethodBind('PrismMesh', 'set_subdivide_height', 1286410249);

  void setSubdivideHeight(int segments) {
    final arg0 = malloc<Int64>()..value = segments;
    try {
      ptrcallVoid(_mb_set_subdivide_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_height =
      resolveMethodBind('PrismMesh', 'get_subdivide_height', 3905245786);

  int getSubdivideHeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_subdivide_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_subdivide_depth =
      resolveMethodBind('PrismMesh', 'set_subdivide_depth', 1286410249);

  void setSubdivideDepth(int segments) {
    final arg0 = malloc<Int64>()..value = segments;
    try {
      ptrcallVoid(_mb_set_subdivide_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_depth =
      resolveMethodBind('PrismMesh', 'get_subdivide_depth', 3905245786);

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

}
