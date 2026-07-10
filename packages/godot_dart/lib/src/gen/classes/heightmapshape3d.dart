// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class HeightMapShape3D extends Shape3D {
  HeightMapShape3D(super.nativePtr);

  /// Constructs a brand-new engine-owned HeightMapShape3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory HeightMapShape3D.create() {
    return HeightMapShape3D(resolveClassConstructor('HeightMapShape3D'));
  }

  static final Pointer<Void> _mb_set_map_width =
      resolveMethodBind('HeightMapShape3D', 'set_map_width', 1286410249);

  void setMapWidth(int width) {
    final arg0 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_map_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_map_width =
      resolveMethodBind('HeightMapShape3D', 'get_map_width', 3905245786);

  int getMapWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_map_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_map_depth =
      resolveMethodBind('HeightMapShape3D', 'set_map_depth', 1286410249);

  void setMapDepth(int height) {
    final arg0 = malloc<Int64>()..value = height;
    try {
      ptrcallVoid(_mb_set_map_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_map_depth =
      resolveMethodBind('HeightMapShape3D', 'get_map_depth', 3905245786);

  int getMapDepth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_map_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_map_data(): an argument type is unsupported.
  // Skipped get_map_data(): unsupported return type "PackedFloat32Array".
  static final Pointer<Void> _mb_get_min_height =
      resolveMethodBind('HeightMapShape3D', 'get_min_height', 1740695150);

  double getMinHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_max_height =
      resolveMethodBind('HeightMapShape3D', 'get_max_height', 1740695150);

  double getMaxHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_update_map_data_from_image =
      resolveMethodBind('HeightMapShape3D', 'update_map_data_from_image', 2636652979);

  void updateMapDataFromImage(Image image, double heightMin, double heightMax) {
    final arg0 = malloc<Pointer<Void>>()..value = image.nativePtr;
    final arg1 = malloc<Double>()..value = heightMin;
    final arg2 = malloc<Double>()..value = heightMax;
    try {
      ptrcallVoid(_mb_update_map_data_from_image, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

}
