// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationPathQueryParameters2D extends RefCounted {
  NavigationPathQueryParameters2D(super.nativePtr);

  static final Pointer<Void> _mb_set_pathfinding_algorithm =
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_pathfinding_algorithm', 2783519915);

  void setPathfindingAlgorithm(int pathfindingAlgorithm) {
    final arg0 = malloc<Int64>()..value = pathfindingAlgorithm;
    try {
      ptrcallVoid(_mb_set_pathfinding_algorithm, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pathfinding_algorithm =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_pathfinding_algorithm', 3000421146);

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
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_path_postprocessing', 2864409082);

  void setPathPostprocessing(int pathPostprocessing) {
    final arg0 = malloc<Int64>()..value = pathPostprocessing;
    try {
      ptrcallVoid(_mb_set_path_postprocessing, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_postprocessing =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_path_postprocessing', 3798118993);

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

  // Skipped set_map(): an argument type is unsupported.
  // Skipped get_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_start_position =
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_start_position', 743155724);

  void setStartPosition(Vector2 startPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    startPosition.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_start_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_start_position =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_start_position', 3341600327);

  Vector2 getStartPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_start_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_target_position =
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_target_position', 743155724);

  void setTargetPosition(Vector2 targetPosition) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    targetPosition.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_target_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target_position =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_target_position', 3341600327);

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

  static final Pointer<Void> _mb_set_navigation_layers =
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_navigation_layers', 1286410249);

  void setNavigationLayers(int navigationLayers) {
    final arg0 = malloc<Int64>()..value = navigationLayers;
    try {
      ptrcallVoid(_mb_set_navigation_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layers =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_navigation_layers', 3905245786);

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

  static final Pointer<Void> _mb_set_metadata_flags =
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_metadata_flags', 24274129);

  void setMetadataFlags(int flags) {
    final arg0 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_metadata_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_metadata_flags =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_metadata_flags', 488152976);

  int getMetadataFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_metadata_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_simplify_path =
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_simplify_path', 2586408642);

  void setSimplifyPath(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_simplify_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_simplify_path =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_simplify_path', 36873697);

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
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_simplify_epsilon', 373806689);

  void setSimplifyEpsilon(double epsilon) {
    final arg0 = malloc<Double>()..value = epsilon;
    try {
      ptrcallVoid(_mb_set_simplify_epsilon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_simplify_epsilon =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_simplify_epsilon', 1740695150);

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

  // Skipped set_included_regions(): an argument type is unsupported.
  // Skipped get_included_regions(): unsupported return type "typedarray::RID".
  // Skipped set_excluded_regions(): an argument type is unsupported.
  // Skipped get_excluded_regions(): unsupported return type "typedarray::RID".
  static final Pointer<Void> _mb_set_path_return_max_length =
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_path_return_max_length', 373806689);

  void setPathReturnMaxLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_path_return_max_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_return_max_length =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_path_return_max_length', 1740695150);

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
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_path_return_max_radius', 373806689);

  void setPathReturnMaxRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_path_return_max_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_return_max_radius =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_path_return_max_radius', 1740695150);

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
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_path_search_max_polygons', 1286410249);

  void setPathSearchMaxPolygons(int maxPolygons) {
    final arg0 = malloc<Int64>()..value = maxPolygons;
    try {
      ptrcallVoid(_mb_set_path_search_max_polygons, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_search_max_polygons =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_path_search_max_polygons', 3905245786);

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
      resolveMethodBind('NavigationPathQueryParameters2D', 'set_path_search_max_distance', 373806689);

  void setPathSearchMaxDistance(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_path_search_max_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path_search_max_distance =
      resolveMethodBind('NavigationPathQueryParameters2D', 'get_path_search_max_distance', 1740695150);

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

}
