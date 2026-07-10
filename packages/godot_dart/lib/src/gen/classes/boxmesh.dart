// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BoxMesh extends PrimitiveMesh {
  BoxMesh(super.nativePtr);

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('BoxMesh', 'set_size', 3460891852);

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
      resolveMethodBind('BoxMesh', 'get_size', 3360562783);

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
      resolveMethodBind('BoxMesh', 'set_subdivide_width', 1286410249);

  void setSubdivideWidth(int subdivide) {
    final arg0 = malloc<Int64>()..value = subdivide;
    try {
      ptrcallVoid(_mb_set_subdivide_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_width =
      resolveMethodBind('BoxMesh', 'get_subdivide_width', 3905245786);

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
      resolveMethodBind('BoxMesh', 'set_subdivide_height', 1286410249);

  void setSubdivideHeight(int divisions) {
    final arg0 = malloc<Int64>()..value = divisions;
    try {
      ptrcallVoid(_mb_set_subdivide_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_height =
      resolveMethodBind('BoxMesh', 'get_subdivide_height', 3905245786);

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
      resolveMethodBind('BoxMesh', 'set_subdivide_depth', 1286410249);

  void setSubdivideDepth(int divisions) {
    final arg0 = malloc<Int64>()..value = divisions;
    try {
      ptrcallVoid(_mb_set_subdivide_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_subdivide_depth =
      resolveMethodBind('BoxMesh', 'get_subdivide_depth', 3905245786);

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
