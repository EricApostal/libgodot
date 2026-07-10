// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationAgent2D extends Node {
  NavigationAgent2D(super.nativePtr);

  // Skipped get_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_avoidance_enabled =
      resolveMethodBind('NavigationAgent2D', 'set_avoidance_enabled', 2586408642);

  void setAvoidanceEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_avoidance_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_enabled =
      resolveMethodBind('NavigationAgent2D', 'get_avoidance_enabled', 36873697);

  bool getAvoidanceEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_desired_distance =
      resolveMethodBind('NavigationAgent2D', 'set_path_desired_distance', 373806689);

  void setPathDesiredDistance(double desiredDistance) {
    final arg0 = malloc<Double>()..value = desiredDistance;
    try {
      ptrcallVoid(_mb_set_path_desired_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_desired_distance =
      resolveMethodBind('NavigationAgent2D', 'get_path_desired_distance', 1740695150);

  double getPathDesiredDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_desired_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_desired_distance =
      resolveMethodBind('NavigationAgent2D', 'set_target_desired_distance', 373806689);

  void setTargetDesiredDistance(double desiredDistance) {
    final arg0 = malloc<Double>()..value = desiredDistance;
    try {
      ptrcallVoid(_mb_set_target_desired_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_desired_distance =
      resolveMethodBind('NavigationAgent2D', 'get_target_desired_distance', 1740695150);

  double getTargetDesiredDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_target_desired_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('NavigationAgent2D', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('NavigationAgent2D', 'get_radius', 1740695150);

  double getRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_neighbor_distance =
      resolveMethodBind('NavigationAgent2D', 'set_neighbor_distance', 373806689);

  void setNeighborDistance(double neighborDistance) {
    final arg0 = malloc<Double>()..value = neighborDistance;
    try {
      ptrcallVoid(_mb_set_neighbor_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_neighbor_distance =
      resolveMethodBind('NavigationAgent2D', 'get_neighbor_distance', 1740695150);

  double getNeighborDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_neighbor_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_neighbors =
      resolveMethodBind('NavigationAgent2D', 'set_max_neighbors', 1286410249);

  void setMaxNeighbors(int maxNeighbors) {
    final arg0 = malloc<Int64>()..value = maxNeighbors;
    try {
      ptrcallVoid(_mb_set_max_neighbors, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_neighbors =
      resolveMethodBind('NavigationAgent2D', 'get_max_neighbors', 3905245786);

  int getMaxNeighbors() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_neighbors, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_time_horizon_agents =
      resolveMethodBind('NavigationAgent2D', 'set_time_horizon_agents', 373806689);

  void setTimeHorizonAgents(double timeHorizon) {
    final arg0 = malloc<Double>()..value = timeHorizon;
    try {
      ptrcallVoid(_mb_set_time_horizon_agents, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_horizon_agents =
      resolveMethodBind('NavigationAgent2D', 'get_time_horizon_agents', 1740695150);

  double getTimeHorizonAgents() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_horizon_agents, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_time_horizon_obstacles =
      resolveMethodBind('NavigationAgent2D', 'set_time_horizon_obstacles', 373806689);

  void setTimeHorizonObstacles(double timeHorizon) {
    final arg0 = malloc<Double>()..value = timeHorizon;
    try {
      ptrcallVoid(_mb_set_time_horizon_obstacles, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_horizon_obstacles =
      resolveMethodBind('NavigationAgent2D', 'get_time_horizon_obstacles', 1740695150);

  double getTimeHorizonObstacles() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_time_horizon_obstacles, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_speed =
      resolveMethodBind('NavigationAgent2D', 'set_max_speed', 373806689);

  void setMaxSpeed(double maxSpeed) {
    final arg0 = malloc<Double>()..value = maxSpeed;
    try {
      ptrcallVoid(_mb_set_max_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_speed =
      resolveMethodBind('NavigationAgent2D', 'get_max_speed', 1740695150);

  double getMaxSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_max_distance =
      resolveMethodBind('NavigationAgent2D', 'set_path_max_distance', 373806689);

  void setPathMaxDistance(double maxSpeed) {
    final arg0 = malloc<Double>()..value = maxSpeed;
    try {
      ptrcallVoid(_mb_set_path_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_max_distance =
      resolveMethodBind('NavigationAgent2D', 'get_path_max_distance', 191475506);

  double getPathMaxDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_max_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_navigation_layers =
      resolveMethodBind('NavigationAgent2D', 'set_navigation_layers', 1286410249);

  void setNavigationLayers(int navigationLayers) {
    final arg0 = malloc<Int64>()..value = navigationLayers;
    try {
      ptrcallVoid(_mb_set_navigation_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layers =
      resolveMethodBind('NavigationAgent2D', 'get_navigation_layers', 3905245786);

  int getNavigationLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_navigation_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_navigation_layer_value =
      resolveMethodBind('NavigationAgent2D', 'set_navigation_layer_value', 300928843);

  void setNavigationLayerValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_navigation_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layer_value =
      resolveMethodBind('NavigationAgent2D', 'get_navigation_layer_value', 1116898809);

  bool getNavigationLayerValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_navigation_layer_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pathfinding_algorithm =
      resolveMethodBind('NavigationAgent2D', 'set_pathfinding_algorithm', 2783519915);

  void setPathfindingAlgorithm(int pathfindingAlgorithm) {
    final arg0 = malloc<Int64>()..value = pathfindingAlgorithm;
    try {
      ptrcallVoid(_mb_set_pathfinding_algorithm, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pathfinding_algorithm =
      resolveMethodBind('NavigationAgent2D', 'get_pathfinding_algorithm', 3000421146);

  int getPathfindingAlgorithm() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_pathfinding_algorithm, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_postprocessing =
      resolveMethodBind('NavigationAgent2D', 'set_path_postprocessing', 2864409082);

  void setPathPostprocessing(int pathPostprocessing) {
    final arg0 = malloc<Int64>()..value = pathPostprocessing;
    try {
      ptrcallVoid(_mb_set_path_postprocessing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_postprocessing =
      resolveMethodBind('NavigationAgent2D', 'get_path_postprocessing', 3798118993);

  int getPathPostprocessing() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_path_postprocessing, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_metadata_flags =
      resolveMethodBind('NavigationAgent2D', 'set_path_metadata_flags', 24274129);

  void setPathMetadataFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_path_metadata_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_metadata_flags =
      resolveMethodBind('NavigationAgent2D', 'get_path_metadata_flags', 488152976);

  int getPathMetadataFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_path_metadata_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_navigation_map(): an argument type is unsupported.
  // Skipped get_navigation_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_target_position =
      resolveMethodBind('NavigationAgent2D', 'set_target_position', 743155724);

  void setTargetPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_target_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_position =
      resolveMethodBind('NavigationAgent2D', 'get_target_position', 3341600327);

  Vector2 getTargetPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_target_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_simplify_path =
      resolveMethodBind('NavigationAgent2D', 'set_simplify_path', 2586408642);

  void setSimplifyPath(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_simplify_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_simplify_path =
      resolveMethodBind('NavigationAgent2D', 'get_simplify_path', 36873697);

  bool getSimplifyPath() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_simplify_path, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_simplify_epsilon =
      resolveMethodBind('NavigationAgent2D', 'set_simplify_epsilon', 373806689);

  void setSimplifyEpsilon(double epsilon) {
    final arg0 = malloc<Double>()..value = epsilon;
    try {
      ptrcallVoid(_mb_set_simplify_epsilon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_simplify_epsilon =
      resolveMethodBind('NavigationAgent2D', 'get_simplify_epsilon', 1740695150);

  double getSimplifyEpsilon() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_simplify_epsilon, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_return_max_length =
      resolveMethodBind('NavigationAgent2D', 'set_path_return_max_length', 373806689);

  void setPathReturnMaxLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_path_return_max_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_return_max_length =
      resolveMethodBind('NavigationAgent2D', 'get_path_return_max_length', 1740695150);

  double getPathReturnMaxLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_return_max_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_return_max_radius =
      resolveMethodBind('NavigationAgent2D', 'set_path_return_max_radius', 373806689);

  void setPathReturnMaxRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_path_return_max_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_return_max_radius =
      resolveMethodBind('NavigationAgent2D', 'get_path_return_max_radius', 1740695150);

  double getPathReturnMaxRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_return_max_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_search_max_polygons =
      resolveMethodBind('NavigationAgent2D', 'set_path_search_max_polygons', 1286410249);

  void setPathSearchMaxPolygons(int maxPolygons) {
    final arg0 = malloc<Int64>()..value = maxPolygons;
    try {
      ptrcallVoid(_mb_set_path_search_max_polygons, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_search_max_polygons =
      resolveMethodBind('NavigationAgent2D', 'get_path_search_max_polygons', 3905245786);

  int getPathSearchMaxPolygons() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_path_search_max_polygons, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_search_max_distance =
      resolveMethodBind('NavigationAgent2D', 'set_path_search_max_distance', 373806689);

  void setPathSearchMaxDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_path_search_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_search_max_distance =
      resolveMethodBind('NavigationAgent2D', 'get_path_search_max_distance', 1740695150);

  double getPathSearchMaxDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_search_max_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_path_length =
      resolveMethodBind('NavigationAgent2D', 'get_path_length', 1740695150);

  double getPathLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_path_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next_path_position =
      resolveMethodBind('NavigationAgent2D', 'get_next_path_position', 1497962370);

  Vector2 getNextPathPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_next_path_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_velocity_forced =
      resolveMethodBind('NavigationAgent2D', 'set_velocity_forced', 743155724);

  void setVelocityForced(Vector2 velocity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity_forced, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_velocity =
      resolveMethodBind('NavigationAgent2D', 'set_velocity', 743155724);

  void setVelocity(Vector2 velocity) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity =
      resolveMethodBind('NavigationAgent2D', 'get_velocity', 1497962370);

  Vector2 getVelocity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_distance_to_target =
      resolveMethodBind('NavigationAgent2D', 'distance_to_target', 1740695150);

  double distanceToTarget() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_distance_to_target, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_navigation_result =
      resolveMethodBind('NavigationAgent2D', 'get_current_navigation_result', 166799483);

  NavigationPathQueryResult2D? getCurrentNavigationResult() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_current_navigation_result, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : NavigationPathQueryResult2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_current_navigation_path(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_get_current_navigation_path_index =
      resolveMethodBind('NavigationAgent2D', 'get_current_navigation_path_index', 3905245786);

  int getCurrentNavigationPathIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_navigation_path_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_target_reached =
      resolveMethodBind('NavigationAgent2D', 'is_target_reached', 36873697);

  bool isTargetReached() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_target_reached, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_target_reachable =
      resolveMethodBind('NavigationAgent2D', 'is_target_reachable', 2240911060);

  bool isTargetReachable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_target_reachable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_navigation_finished =
      resolveMethodBind('NavigationAgent2D', 'is_navigation_finished', 2240911060);

  bool isNavigationFinished() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_navigation_finished, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_final_position =
      resolveMethodBind('NavigationAgent2D', 'get_final_position', 1497962370);

  Vector2 getFinalPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_final_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_avoidance_layers =
      resolveMethodBind('NavigationAgent2D', 'set_avoidance_layers', 1286410249);

  void setAvoidanceLayers(int layers) {
    final arg0 = malloc<Int64>()..value = layers;
    try {
      ptrcallVoid(_mb_set_avoidance_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_layers =
      resolveMethodBind('NavigationAgent2D', 'get_avoidance_layers', 3905245786);

  int getAvoidanceLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_avoidance_mask =
      resolveMethodBind('NavigationAgent2D', 'set_avoidance_mask', 1286410249);

  void setAvoidanceMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_avoidance_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_mask =
      resolveMethodBind('NavigationAgent2D', 'get_avoidance_mask', 3905245786);

  int getAvoidanceMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_avoidance_layer_value =
      resolveMethodBind('NavigationAgent2D', 'set_avoidance_layer_value', 300928843);

  void setAvoidanceLayerValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_avoidance_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_layer_value =
      resolveMethodBind('NavigationAgent2D', 'get_avoidance_layer_value', 1116898809);

  bool getAvoidanceLayerValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_layer_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_avoidance_mask_value =
      resolveMethodBind('NavigationAgent2D', 'set_avoidance_mask_value', 300928843);

  void setAvoidanceMaskValue(int maskNumber, bool value) {
    final arg0 = malloc<Int64>()..value = maskNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_avoidance_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_mask_value =
      resolveMethodBind('NavigationAgent2D', 'get_avoidance_mask_value', 1116898809);

  bool getAvoidanceMaskValue(int maskNumber) {
    final arg0 = malloc<Int64>()..value = maskNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_avoidance_priority =
      resolveMethodBind('NavigationAgent2D', 'set_avoidance_priority', 373806689);

  void setAvoidancePriority(double priority) {
    final arg0 = malloc<Double>()..value = priority;
    try {
      ptrcallVoid(_mb_set_avoidance_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_avoidance_priority =
      resolveMethodBind('NavigationAgent2D', 'get_avoidance_priority', 1740695150);

  double getAvoidancePriority() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_avoidance_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_enabled =
      resolveMethodBind('NavigationAgent2D', 'set_debug_enabled', 2586408642);

  void setDebugEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_enabled =
      resolveMethodBind('NavigationAgent2D', 'get_debug_enabled', 36873697);

  bool getDebugEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_debug_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_use_custom =
      resolveMethodBind('NavigationAgent2D', 'set_debug_use_custom', 2586408642);

  void setDebugUseCustom(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_use_custom, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_use_custom =
      resolveMethodBind('NavigationAgent2D', 'get_debug_use_custom', 36873697);

  bool getDebugUseCustom() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_debug_use_custom, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_path_custom_color =
      resolveMethodBind('NavigationAgent2D', 'set_debug_path_custom_color', 2920490490);

  void setDebugPathCustomColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_debug_path_custom_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_path_custom_color =
      resolveMethodBind('NavigationAgent2D', 'get_debug_path_custom_color', 3444240500);

  Color getDebugPathCustomColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_debug_path_custom_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_path_custom_point_size =
      resolveMethodBind('NavigationAgent2D', 'set_debug_path_custom_point_size', 373806689);

  void setDebugPathCustomPointSize(double pointSize) {
    final arg0 = malloc<Double>()..value = pointSize;
    try {
      ptrcallVoid(_mb_set_debug_path_custom_point_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_path_custom_point_size =
      resolveMethodBind('NavigationAgent2D', 'get_debug_path_custom_point_size', 1740695150);

  double getDebugPathCustomPointSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_debug_path_custom_point_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_path_custom_line_width =
      resolveMethodBind('NavigationAgent2D', 'set_debug_path_custom_line_width', 373806689);

  void setDebugPathCustomLineWidth(double lineWidth) {
    final arg0 = malloc<Double>()..value = lineWidth;
    try {
      ptrcallVoid(_mb_set_debug_path_custom_line_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_path_custom_line_width =
      resolveMethodBind('NavigationAgent2D', 'get_debug_path_custom_line_width', 1740695150);

  double getDebugPathCustomLineWidth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_debug_path_custom_line_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
