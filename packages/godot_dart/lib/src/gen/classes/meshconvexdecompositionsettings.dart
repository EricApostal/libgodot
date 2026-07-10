// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MeshConvexDecompositionSettings extends RefCounted {
  MeshConvexDecompositionSettings(super.nativePtr);

  static final Pointer<Void> _mb_set_max_concavity =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_max_concavity', 373806689);

  void setMaxConcavity(double maxConcavity) {
    final arg0 = malloc<Double>()..value = maxConcavity;
    try {
      ptrcallVoid(_mb_set_max_concavity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_concavity =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_max_concavity', 1740695150);

  double getMaxConcavity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_concavity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_symmetry_planes_clipping_bias =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_symmetry_planes_clipping_bias', 373806689);

  void setSymmetryPlanesClippingBias(double symmetryPlanesClippingBias) {
    final arg0 = malloc<Double>()..value = symmetryPlanesClippingBias;
    try {
      ptrcallVoid(_mb_set_symmetry_planes_clipping_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_symmetry_planes_clipping_bias =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_symmetry_planes_clipping_bias', 1740695150);

  double getSymmetryPlanesClippingBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_symmetry_planes_clipping_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_revolution_axes_clipping_bias =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_revolution_axes_clipping_bias', 373806689);

  void setRevolutionAxesClippingBias(double revolutionAxesClippingBias) {
    final arg0 = malloc<Double>()..value = revolutionAxesClippingBias;
    try {
      ptrcallVoid(_mb_set_revolution_axes_clipping_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_revolution_axes_clipping_bias =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_revolution_axes_clipping_bias', 1740695150);

  double getRevolutionAxesClippingBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_revolution_axes_clipping_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_volume_per_convex_hull =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_min_volume_per_convex_hull', 373806689);

  void setMinVolumePerConvexHull(double minVolumePerConvexHull) {
    final arg0 = malloc<Double>()..value = minVolumePerConvexHull;
    try {
      ptrcallVoid(_mb_set_min_volume_per_convex_hull, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_volume_per_convex_hull =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_min_volume_per_convex_hull', 1740695150);

  double getMinVolumePerConvexHull() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_volume_per_convex_hull, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_resolution =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_resolution', 1286410249);

  void setResolution(int minVolumePerConvexHull) {
    final arg0 = malloc<Int64>()..value = minVolumePerConvexHull;
    try {
      ptrcallVoid(_mb_set_resolution, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_resolution =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_resolution', 3905245786);

  int getResolution() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_resolution, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_num_vertices_per_convex_hull =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_max_num_vertices_per_convex_hull', 1286410249);

  void setMaxNumVerticesPerConvexHull(int maxNumVerticesPerConvexHull) {
    final arg0 = malloc<Int64>()..value = maxNumVerticesPerConvexHull;
    try {
      ptrcallVoid(_mb_set_max_num_vertices_per_convex_hull, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_num_vertices_per_convex_hull =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_max_num_vertices_per_convex_hull', 3905245786);

  int getMaxNumVerticesPerConvexHull() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_num_vertices_per_convex_hull, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_plane_downsampling =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_plane_downsampling', 1286410249);

  void setPlaneDownsampling(int planeDownsampling) {
    final arg0 = malloc<Int64>()..value = planeDownsampling;
    try {
      ptrcallVoid(_mb_set_plane_downsampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_plane_downsampling =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_plane_downsampling', 3905245786);

  int getPlaneDownsampling() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_plane_downsampling, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_convex_hull_downsampling =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_convex_hull_downsampling', 1286410249);

  void setConvexHullDownsampling(int convexHullDownsampling) {
    final arg0 = malloc<Int64>()..value = convexHullDownsampling;
    try {
      ptrcallVoid(_mb_set_convex_hull_downsampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_convex_hull_downsampling =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_convex_hull_downsampling', 3905245786);

  int getConvexHullDownsampling() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_convex_hull_downsampling, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_normalize_mesh =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_normalize_mesh', 2586408642);

  void setNormalizeMesh(bool normalizeMesh) {
    final arg0 = malloc<Uint8>()..value = normalizeMesh ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_normalize_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normalize_mesh =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_normalize_mesh', 36873697);

  bool getNormalizeMesh() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_normalize_mesh, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mode =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_mode', 1668072869);

  void setMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mode =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_mode', 23479454);

  int getMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_convex_hull_approximation =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_convex_hull_approximation', 2586408642);

  void setConvexHullApproximation(bool convexHullApproximation) {
    final arg0 = malloc<Uint8>()..value = convexHullApproximation ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_convex_hull_approximation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_convex_hull_approximation =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_convex_hull_approximation', 36873697);

  bool getConvexHullApproximation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_convex_hull_approximation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_convex_hulls =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_max_convex_hulls', 1286410249);

  void setMaxConvexHulls(int maxConvexHulls) {
    final arg0 = malloc<Int64>()..value = maxConvexHulls;
    try {
      ptrcallVoid(_mb_set_max_convex_hulls, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_convex_hulls =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_max_convex_hulls', 3905245786);

  int getMaxConvexHulls() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_convex_hulls, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_project_hull_vertices =
      resolveMethodBind('MeshConvexDecompositionSettings', 'set_project_hull_vertices', 2586408642);

  void setProjectHullVertices(bool projectHullVertices) {
    final arg0 = malloc<Uint8>()..value = projectHullVertices ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_project_hull_vertices, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_project_hull_vertices =
      resolveMethodBind('MeshConvexDecompositionSettings', 'get_project_hull_vertices', 36873697);

  bool getProjectHullVertices() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_project_hull_vertices, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
