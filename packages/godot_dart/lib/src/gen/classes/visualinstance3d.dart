// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualInstance3D extends Node3D {
  VisualInstance3D(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualInstance3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualInstance3D.create() {
    return VisualInstance3D(resolveClassConstructor('VisualInstance3D'));
  }

  // Skipped set_base(): an argument type is unsupported.
  // Skipped get_base(): unsupported return type "RID".
  // Skipped get_instance(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_layer_mask =
      resolveMethodBind('VisualInstance3D', 'set_layer_mask', 1286410249);

  void setLayerMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_layer_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layer_mask =
      resolveMethodBind('VisualInstance3D', 'get_layer_mask', 3905245786);

  int getLayerMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layer_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_layer_mask_value =
      resolveMethodBind('VisualInstance3D', 'set_layer_mask_value', 300928843);

  void setLayerMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_layer_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_layer_mask_value =
      resolveMethodBind('VisualInstance3D', 'get_layer_mask_value', 1116898809);

  bool getLayerMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_layer_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_sorting_offset =
      resolveMethodBind('VisualInstance3D', 'set_sorting_offset', 373806689);

  void setSortingOffset(double offset) {
    final arg0 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_set_sorting_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sorting_offset =
      resolveMethodBind('VisualInstance3D', 'get_sorting_offset', 1740695150);

  double getSortingOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sorting_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sorting_use_aabb_center =
      resolveMethodBind('VisualInstance3D', 'set_sorting_use_aabb_center', 2586408642);

  void setSortingUseAabbCenter(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sorting_use_aabb_center, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sorting_use_aabb_center =
      resolveMethodBind('VisualInstance3D', 'is_sorting_use_aabb_center', 36873697);

  bool isSortingUseAabbCenter() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sorting_use_aabb_center, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_aabb =
      resolveMethodBind('VisualInstance3D', 'get_aabb', 1068685055);

  AABB getAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
