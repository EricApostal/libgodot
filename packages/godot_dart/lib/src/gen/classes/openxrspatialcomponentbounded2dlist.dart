// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialComponentBounded2DList extends OpenXRSpatialComponentData {
  OpenXRSpatialComponentBounded2DList(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialComponentBounded2DList instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialComponentBounded2DList.create() {
    return OpenXRSpatialComponentBounded2DList(resolveClassConstructor('OpenXRSpatialComponentBounded2DList'));
  }

  static final Pointer<Void> _mb_get_center_pose =
      resolveMethodBind('OpenXRSpatialComponentBounded2DList', 'get_center_pose', 1965739696);

  Transform3D getCenterPose(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_center_pose, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('OpenXRSpatialComponentBounded2DList', 'get_size', 2299179447);

  Vector2 getSize(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
