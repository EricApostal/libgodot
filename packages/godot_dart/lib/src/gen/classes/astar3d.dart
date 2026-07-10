// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AStar3D extends RefCounted {
  AStar3D(super.nativePtr);

  /// Constructs a brand-new engine-owned AStar3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory AStar3D.create() {
    return AStar3D(resolveClassConstructor('AStar3D'));
  }

  /// Override to hook into Godot's `_filter_neighbor` virtual.
  bool filterNeighbor(int fromId, int neighborId) => false;

  /// Override to hook into Godot's `_estimate_cost` virtual.
  double estimateCost(int fromId, int endId) => 0.0;

  /// Override to hook into Godot's `_compute_cost` virtual.
  double computeCost(int fromId, int toId) => 0.0;

  static final Pointer<Void> _mb_get_available_point_id =
      resolveMethodBind('AStar3D', 'get_available_point_id', 3905245786);

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
      resolveMethodBind('AStar3D', 'add_point', 1038703438);

  void addPoint(int id, Vector3 position, double weightScale) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
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
      resolveMethodBind('AStar3D', 'get_point_position', 711720468);

  Vector3 getPointPosition(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_point_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_point_position =
      resolveMethodBind('AStar3D', 'set_point_position', 1530502735);

  void setPointPosition(int id, Vector3 position) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_point_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_point_weight_scale =
      resolveMethodBind('AStar3D', 'get_point_weight_scale', 2339986948);

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
      resolveMethodBind('AStar3D', 'set_point_weight_scale', 1602489585);

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
      resolveMethodBind('AStar3D', 'remove_point', 1286410249);

  void removePoint(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_point =
      resolveMethodBind('AStar3D', 'has_point', 1116898809);

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
  static final Pointer<Void> _mb_set_point_disabled =
      resolveMethodBind('AStar3D', 'set_point_disabled', 972357352);

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
      resolveMethodBind('AStar3D', 'is_point_disabled', 1116898809);

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

  static final Pointer<Void> _mb_set_neighbor_filter_enabled =
      resolveMethodBind('AStar3D', 'set_neighbor_filter_enabled', 2586408642);

  void setNeighborFilterEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_neighbor_filter_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_neighbor_filter_enabled =
      resolveMethodBind('AStar3D', 'is_neighbor_filter_enabled', 36873697);

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

  static final Pointer<Void> _mb_connect_points =
      resolveMethodBind('AStar3D', 'connect_points', 3710494224);

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
      resolveMethodBind('AStar3D', 'disconnect_points', 3710494224);

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
      resolveMethodBind('AStar3D', 'are_points_connected', 2288175859);

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
      resolveMethodBind('AStar3D', 'get_point_count', 3905245786);

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
      resolveMethodBind('AStar3D', 'get_point_capacity', 3905245786);

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
      resolveMethodBind('AStar3D', 'reserve_space', 1286410249);

  void reserveSpace(int numNodes) {
    final arg0 = malloc<Int64>()..value = numNodes;
    try {
      ptrcallVoid(_mb_reserve_space, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('AStar3D', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_closest_point =
      resolveMethodBind('AStar3D', 'get_closest_point', 3241074317);

  int getClosestPoint(Vector3 toPosition, bool includeDisabled) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
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
      resolveMethodBind('AStar3D', 'get_closest_position_in_segment', 192990374);

  Vector3 getClosestPositionInSegment(Vector3 toPosition) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    toPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_closest_position_in_segment, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_point_path(): unsupported return type "PackedVector3Array".
  // Skipped get_id_path(): unsupported return type "PackedInt64Array".
}
