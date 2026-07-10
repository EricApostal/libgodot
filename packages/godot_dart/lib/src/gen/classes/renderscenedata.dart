// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderSceneData extends GodotObject {
  RenderSceneData(super.nativePtr);

  static final Pointer<Void> _mb_get_cam_transform =
      resolveMethodBind('RenderSceneData', 'get_cam_transform', 3229777777);

  Transform3D getCamTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cam_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_cam_projection =
      resolveMethodBind('RenderSceneData', 'get_cam_projection', 2910717950);

  Projection getCamProjection() {
    try {
      final ret = malloc<Uint8>(Projection.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cam_projection, nativePtr, [], ret.cast());
        return Projection.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_view_count =
      resolveMethodBind('RenderSceneData', 'get_view_count', 3905245786);

  int getViewCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_view_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_view_eye_offset =
      resolveMethodBind('RenderSceneData', 'get_view_eye_offset', 711720468);

  Vector3 getViewEyeOffset(int view) {
    final arg0 = malloc<Int64>()..value = view;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_view_eye_offset, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_view_projection =
      resolveMethodBind('RenderSceneData', 'get_view_projection', 3179846605);

  Projection getViewProjection(int view) {
    final arg0 = malloc<Int64>()..value = view;
    try {
      final ret = malloc<Uint8>(Projection.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_view_projection, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Projection.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_uniform_buffer(): unsupported return type "RID".
}
