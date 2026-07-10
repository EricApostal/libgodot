// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AStarGrid2D extends RefCounted {
  AStarGrid2D(super.nativePtr);

  /// Constructs a brand-new engine-owned AStarGrid2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory AStarGrid2D.create() {
    return AStarGrid2D(resolveClassConstructor('AStarGrid2D'));
  }

  static final Pointer<Void> _mb_set_region =
      resolveMethodBind('AStarGrid2D', 'set_region', 1763793166);

  void setRegion(Rect2i region) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    region.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_region =
      resolveMethodBind('AStarGrid2D', 'get_region', 410525958);

  Rect2i getRegion() {
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_region, nativePtr, [], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('AStarGrid2D', 'set_size', 1130785943);

  void setSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('AStarGrid2D', 'get_size', 3690982128);

  Vector2i getSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('AStarGrid2D', 'set_offset', 743155724);

  void setOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('AStarGrid2D', 'get_offset', 3341600327);

  Vector2 getOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_size =
      resolveMethodBind('AStarGrid2D', 'set_cell_size', 743155724);

  void setCellSize(Vector2 cellSize) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    cellSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_cell_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_size =
      resolveMethodBind('AStarGrid2D', 'get_cell_size', 3341600327);

  Vector2 getCellSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cell_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_shape =
      resolveMethodBind('AStarGrid2D', 'set_cell_shape', 4130591146);

  void setCellShape(int cellShape) {
    final arg0 = malloc<Int64>()..value = cellShape;
    try {
      ptrcallVoid(_mb_set_cell_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_shape =
      resolveMethodBind('AStarGrid2D', 'get_cell_shape', 3293463634);

  int getCellShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_in_bounds =
      resolveMethodBind('AStarGrid2D', 'is_in_bounds', 2522259332);

  bool isInBounds(int x, int y) {
    final arg0 = malloc<Int64>()..value = x;
    final arg1 = malloc<Int64>()..value = y;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_bounds, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_in_boundsv =
      resolveMethodBind('AStarGrid2D', 'is_in_boundsv', 3900751641);

  bool isInBoundsv(Vector2i id) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    id.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_in_boundsv, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_dirty =
      resolveMethodBind('AStarGrid2D', 'is_dirty', 36873697);

  bool isDirty() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_dirty, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_update =
      resolveMethodBind('AStarGrid2D', 'update', 3218959716);

  void update() {
    try {
      ptrcallVoid(_mb_update, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_jumping_enabled =
      resolveMethodBind('AStarGrid2D', 'set_jumping_enabled', 2586408642);

  void setJumpingEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_jumping_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_jumping_enabled =
      resolveMethodBind('AStarGrid2D', 'is_jumping_enabled', 36873697);

  bool isJumpingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_jumping_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_diagonal_mode =
      resolveMethodBind('AStarGrid2D', 'set_diagonal_mode', 1017829798);

  void setDiagonalMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_diagonal_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_diagonal_mode =
      resolveMethodBind('AStarGrid2D', 'get_diagonal_mode', 3129282674);

  int getDiagonalMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_diagonal_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_compute_heuristic =
      resolveMethodBind('AStarGrid2D', 'set_default_compute_heuristic', 1044375519);

  void setDefaultComputeHeuristic(int heuristic) {
    final arg0 = malloc<Int64>()..value = heuristic;
    try {
      ptrcallVoid(_mb_set_default_compute_heuristic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_compute_heuristic =
      resolveMethodBind('AStarGrid2D', 'get_default_compute_heuristic', 2074731422);

  int getDefaultComputeHeuristic() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_compute_heuristic, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_estimate_heuristic =
      resolveMethodBind('AStarGrid2D', 'set_default_estimate_heuristic', 1044375519);

  void setDefaultEstimateHeuristic(int heuristic) {
    final arg0 = malloc<Int64>()..value = heuristic;
    try {
      ptrcallVoid(_mb_set_default_estimate_heuristic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_estimate_heuristic =
      resolveMethodBind('AStarGrid2D', 'get_default_estimate_heuristic', 2074731422);

  int getDefaultEstimateHeuristic() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_estimate_heuristic, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_point_solid =
      resolveMethodBind('AStarGrid2D', 'set_point_solid', 1765703753);

  void setPointSolid(Vector2i id, bool solid) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    id.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = solid ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_point_solid, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_point_solid =
      resolveMethodBind('AStarGrid2D', 'is_point_solid', 3900751641);

  bool isPointSolid(Vector2i id) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    id.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_point_solid, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_weight_scale =
      resolveMethodBind('AStarGrid2D', 'set_point_weight_scale', 2262553149);

  void setPointWeightScale(Vector2i id, double weightScale) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    id.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = weightScale;
    try {
      ptrcallVoid(_mb_set_point_weight_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_weight_scale =
      resolveMethodBind('AStarGrid2D', 'get_point_weight_scale', 719993801);

  double getPointWeightScale(Vector2i id) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    id.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_point_weight_scale, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_fill_solid_region =
      resolveMethodBind('AStarGrid2D', 'fill_solid_region', 2261970063);

  void fillSolidRegion(Rect2i region, bool solid) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    region.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = solid ? 1 : 0;
    try {
      ptrcallVoid(_mb_fill_solid_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_fill_weight_scale_region =
      resolveMethodBind('AStarGrid2D', 'fill_weight_scale_region', 2793244083);

  void fillWeightScaleRegion(Rect2i region, double weightScale) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    region.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = weightScale;
    try {
      ptrcallVoid(_mb_fill_weight_scale_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('AStarGrid2D', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_point_position =
      resolveMethodBind('AStarGrid2D', 'get_point_position', 108438297);

  Vector2 getPointPosition(Vector2i id) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    id.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_point_data_in_region(): unsupported return type "typedarray::Dictionary".
  // Skipped get_point_path(): unsupported return type "PackedVector2Array".
  // Skipped get_id_path(): unsupported return type "typedarray::Vector2i".
}
