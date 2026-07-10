// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AStar2D extends RefCounted {
  AStar2D(super.nativePtr);

  /// Constructs a brand-new engine-owned AStar2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory AStar2D.create() {
    return AStar2D(resolveClassConstructor('AStar2D'));
  }

  /// Override to hook into Godot's `_filter_neighbor` virtual.
  bool filterNeighbor(int fromId, int neighborId) => false;

  /// Override to hook into Godot's `_estimate_cost` virtual.
  double estimateCost(int fromId, int endId) => 0.0;

  /// Override to hook into Godot's `_compute_cost` virtual.
  double computeCost(int fromId, int toId) => 0.0;

  static final Pointer<Void> _mb_get_available_point_id =
      resolveMethodBind('AStar2D', 'get_available_point_id', 3905245786);

  int getAvailablePointId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_available_point_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_point =
      resolveMethodBind('AStar2D', 'add_point', 4074201818);

  void addPoint(int id, Vector2 position, double weightScale) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    final arg2 = malloc<Double>()..value = weightScale;
    try {
      ptrcallVoid(_mb_add_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_point_position =
      resolveMethodBind('AStar2D', 'get_point_position', 2299179447);

  Vector2 getPointPosition(int id) {
    final arg0 = malloc<Int64>()..value = id;
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

  static final Pointer<Void> _mb_set_point_position =
      resolveMethodBind('AStar2D', 'set_point_position', 163021252);

  void setPointPosition(int id, Vector2 position) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_weight_scale =
      resolveMethodBind('AStar2D', 'get_point_weight_scale', 2339986948);

  double getPointWeightScale(int id) {
    final arg0 = malloc<Int64>()..value = id;
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

  static final Pointer<Void> _mb_set_point_weight_scale =
      resolveMethodBind('AStar2D', 'set_point_weight_scale', 1602489585);

  void setPointWeightScale(int id, double weightScale) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Double>()..value = weightScale;
    try {
      ptrcallVoid(_mb_set_point_weight_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_point =
      resolveMethodBind('AStar2D', 'remove_point', 1286410249);

  void removePoint(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_point =
      resolveMethodBind('AStar2D', 'has_point', 1116898809);

  bool hasPoint(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_point, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_point_connections(): unsupported return type "PackedInt64Array".
  // Skipped get_point_ids(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_set_neighbor_filter_enabled =
      resolveMethodBind('AStar2D', 'set_neighbor_filter_enabled', 2586408642);

  void setNeighborFilterEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_neighbor_filter_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_neighbor_filter_enabled =
      resolveMethodBind('AStar2D', 'is_neighbor_filter_enabled', 36873697);

  bool isNeighborFilterEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_neighbor_filter_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_point_disabled =
      resolveMethodBind('AStar2D', 'set_point_disabled', 972357352);

  void setPointDisabled(int id, bool disabled) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_point_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_point_disabled =
      resolveMethodBind('AStar2D', 'is_point_disabled', 1116898809);

  bool isPointDisabled(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_point_disabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_connect_points =
      resolveMethodBind('AStar2D', 'connect_points', 3710494224);

  void connectPoints(int id, int toId, bool bidirectional) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = toId;
    final arg2 = malloc<Uint8>()..value = bidirectional ? 1 : 0;
    try {
      ptrcallVoid(_mb_connect_points, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_disconnect_points =
      resolveMethodBind('AStar2D', 'disconnect_points', 3710494224);

  void disconnectPoints(int id, int toId, bool bidirectional) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = toId;
    final arg2 = malloc<Uint8>()..value = bidirectional ? 1 : 0;
    try {
      ptrcallVoid(_mb_disconnect_points, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_are_points_connected =
      resolveMethodBind('AStar2D', 'are_points_connected', 2288175859);

  bool arePointsConnected(int id, int toId, bool bidirectional) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = toId;
    final arg2 = malloc<Uint8>()..value = bidirectional ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_points_connected, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_point_count =
      resolveMethodBind('AStar2D', 'get_point_count', 3905245786);

  int getPointCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_point_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_point_capacity =
      resolveMethodBind('AStar2D', 'get_point_capacity', 3905245786);

  int getPointCapacity() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_point_capacity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reserve_space =
      resolveMethodBind('AStar2D', 'reserve_space', 1286410249);

  void reserveSpace(int numNodes) {
    final arg0 = malloc<Int64>()..value = numNodes;
    try {
      ptrcallVoid(_mb_reserve_space, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('AStar2D', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_closest_point =
      resolveMethodBind('AStar2D', 'get_closest_point', 2300324924);

  int getClosestPoint(Vector2 toPosition, bool includeDisabled) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    toPosition.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = includeDisabled ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_closest_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_closest_position_in_segment =
      resolveMethodBind('AStar2D', 'get_closest_position_in_segment', 2656412154);

  Vector2 getClosestPositionInSegment(Vector2 toPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    toPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_position_in_segment, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_point_path(): unsupported return type "PackedVector2Array".
  // Skipped get_id_path(): unsupported return type "PackedInt64Array".
}
