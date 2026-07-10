// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationMesh extends Resource {
  NavigationMesh(super.nativePtr);

  /// Constructs a brand-new engine-owned NavigationMesh instance
  /// (via classdb_construct_object3), not an existing one.
  factory NavigationMesh.create() {
    return NavigationMesh(resolveClassConstructor('NavigationMesh'));
  }

  static final Pointer<Void> _mb_set_sample_partition_type =
      resolveMethodBind('NavigationMesh', 'set_sample_partition_type', 2472437533);

  void setSamplePartitionType(int samplePartitionType) {
    final arg0 = malloc<Int64>()..value = samplePartitionType;
    try {
      ptrcallVoid(_mb_set_sample_partition_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sample_partition_type =
      resolveMethodBind('NavigationMesh', 'get_sample_partition_type', 833513918);

  int getSamplePartitionType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sample_partition_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_parsed_geometry_type =
      resolveMethodBind('NavigationMesh', 'set_parsed_geometry_type', 3064713163);

  void setParsedGeometryType(int geometryType) {
    final arg0 = malloc<Int64>()..value = geometryType;
    try {
      ptrcallVoid(_mb_set_parsed_geometry_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_parsed_geometry_type =
      resolveMethodBind('NavigationMesh', 'get_parsed_geometry_type', 3928011953);

  int getParsedGeometryType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_parsed_geometry_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('NavigationMesh', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('NavigationMesh', 'get_collision_mask', 3905245786);

  int getCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask_value =
      resolveMethodBind('NavigationMesh', 'set_collision_mask_value', 300928843);

  void setCollisionMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask_value =
      resolveMethodBind('NavigationMesh', 'get_collision_mask_value', 1116898809);

  bool getCollisionMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_source_geometry_mode =
      resolveMethodBind('NavigationMesh', 'set_source_geometry_mode', 2700825194);

  void setSourceGeometryMode(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_source_geometry_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source_geometry_mode =
      resolveMethodBind('NavigationMesh', 'get_source_geometry_mode', 2770484141);

  int getSourceGeometryMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_source_geometry_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_source_group_name =
      resolveMethodBind('NavigationMesh', 'set_source_group_name', 3304788590);

  void setSourceGroupName(String mask) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), mask);
    try {
      ptrcallVoid(_mb_set_source_group_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source_group_name =
      resolveMethodBind('NavigationMesh', 'get_source_group_name', 2002593661);

  String getSourceGroupName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_source_group_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_size =
      resolveMethodBind('NavigationMesh', 'set_cell_size', 373806689);

  void setCellSize(double cellSize) {
    final arg0 = malloc<Double>()..value = cellSize;
    try {
      ptrcallVoid(_mb_set_cell_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_size =
      resolveMethodBind('NavigationMesh', 'get_cell_size', 1740695150);

  double getCellSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cell_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_height =
      resolveMethodBind('NavigationMesh', 'set_cell_height', 373806689);

  void setCellHeight(double cellHeight) {
    final arg0 = malloc<Double>()..value = cellHeight;
    try {
      ptrcallVoid(_mb_set_cell_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_height =
      resolveMethodBind('NavigationMesh', 'get_cell_height', 1740695150);

  double getCellHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cell_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_border_size =
      resolveMethodBind('NavigationMesh', 'set_border_size', 373806689);

  void setBorderSize(double borderSize) {
    final arg0 = malloc<Double>()..value = borderSize;
    try {
      ptrcallVoid(_mb_set_border_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_border_size =
      resolveMethodBind('NavigationMesh', 'get_border_size', 1740695150);

  double getBorderSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_border_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_agent_height =
      resolveMethodBind('NavigationMesh', 'set_agent_height', 373806689);

  void setAgentHeight(double agentHeight) {
    final arg0 = malloc<Double>()..value = agentHeight;
    try {
      ptrcallVoid(_mb_set_agent_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_agent_height =
      resolveMethodBind('NavigationMesh', 'get_agent_height', 1740695150);

  double getAgentHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_agent_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_agent_radius =
      resolveMethodBind('NavigationMesh', 'set_agent_radius', 373806689);

  void setAgentRadius(double agentRadius) {
    final arg0 = malloc<Double>()..value = agentRadius;
    try {
      ptrcallVoid(_mb_set_agent_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_agent_radius =
      resolveMethodBind('NavigationMesh', 'get_agent_radius', 191475506);

  double getAgentRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_agent_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_agent_max_climb =
      resolveMethodBind('NavigationMesh', 'set_agent_max_climb', 373806689);

  void setAgentMaxClimb(double agentMaxClimb) {
    final arg0 = malloc<Double>()..value = agentMaxClimb;
    try {
      ptrcallVoid(_mb_set_agent_max_climb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_agent_max_climb =
      resolveMethodBind('NavigationMesh', 'get_agent_max_climb', 1740695150);

  double getAgentMaxClimb() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_agent_max_climb, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_agent_max_slope =
      resolveMethodBind('NavigationMesh', 'set_agent_max_slope', 373806689);

  void setAgentMaxSlope(double agentMaxSlope) {
    final arg0 = malloc<Double>()..value = agentMaxSlope;
    try {
      ptrcallVoid(_mb_set_agent_max_slope, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_agent_max_slope =
      resolveMethodBind('NavigationMesh', 'get_agent_max_slope', 1740695150);

  double getAgentMaxSlope() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_agent_max_slope, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_region_min_size =
      resolveMethodBind('NavigationMesh', 'set_region_min_size', 373806689);

  void setRegionMinSize(double regionMinSize) {
    final arg0 = malloc<Double>()..value = regionMinSize;
    try {
      ptrcallVoid(_mb_set_region_min_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_region_min_size =
      resolveMethodBind('NavigationMesh', 'get_region_min_size', 1740695150);

  double getRegionMinSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_region_min_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_region_merge_size =
      resolveMethodBind('NavigationMesh', 'set_region_merge_size', 373806689);

  void setRegionMergeSize(double regionMergeSize) {
    final arg0 = malloc<Double>()..value = regionMergeSize;
    try {
      ptrcallVoid(_mb_set_region_merge_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_region_merge_size =
      resolveMethodBind('NavigationMesh', 'get_region_merge_size', 1740695150);

  double getRegionMergeSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_region_merge_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_edge_max_length =
      resolveMethodBind('NavigationMesh', 'set_edge_max_length', 373806689);

  void setEdgeMaxLength(double edgeMaxLength) {
    final arg0 = malloc<Double>()..value = edgeMaxLength;
    try {
      ptrcallVoid(_mb_set_edge_max_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_edge_max_length =
      resolveMethodBind('NavigationMesh', 'get_edge_max_length', 1740695150);

  double getEdgeMaxLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_edge_max_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_edge_max_error =
      resolveMethodBind('NavigationMesh', 'set_edge_max_error', 373806689);

  void setEdgeMaxError(double edgeMaxError) {
    final arg0 = malloc<Double>()..value = edgeMaxError;
    try {
      ptrcallVoid(_mb_set_edge_max_error, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_edge_max_error =
      resolveMethodBind('NavigationMesh', 'get_edge_max_error', 1740695150);

  double getEdgeMaxError() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_edge_max_error, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertices_per_polygon =
      resolveMethodBind('NavigationMesh', 'set_vertices_per_polygon', 373806689);

  void setVerticesPerPolygon(double verticesPerPolygon) {
    final arg0 = malloc<Double>()..value = verticesPerPolygon;
    try {
      ptrcallVoid(_mb_set_vertices_per_polygon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertices_per_polygon =
      resolveMethodBind('NavigationMesh', 'get_vertices_per_polygon', 1740695150);

  double getVerticesPerPolygon() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vertices_per_polygon, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_detail_sample_distance =
      resolveMethodBind('NavigationMesh', 'set_detail_sample_distance', 373806689);

  void setDetailSampleDistance(double detailSampleDist) {
    final arg0 = malloc<Double>()..value = detailSampleDist;
    try {
      ptrcallVoid(_mb_set_detail_sample_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_detail_sample_distance =
      resolveMethodBind('NavigationMesh', 'get_detail_sample_distance', 1740695150);

  double getDetailSampleDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_detail_sample_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_detail_sample_max_error =
      resolveMethodBind('NavigationMesh', 'set_detail_sample_max_error', 373806689);

  void setDetailSampleMaxError(double detailSampleMaxError) {
    final arg0 = malloc<Double>()..value = detailSampleMaxError;
    try {
      ptrcallVoid(_mb_set_detail_sample_max_error, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_detail_sample_max_error =
      resolveMethodBind('NavigationMesh', 'get_detail_sample_max_error', 1740695150);

  double getDetailSampleMaxError() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_detail_sample_max_error, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_low_hanging_obstacles =
      resolveMethodBind('NavigationMesh', 'set_filter_low_hanging_obstacles', 2586408642);

  void setFilterLowHangingObstacles(bool filterLowHangingObstacles) {
    final arg0 = malloc<Uint8>()..value = filterLowHangingObstacles ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_filter_low_hanging_obstacles, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_low_hanging_obstacles =
      resolveMethodBind('NavigationMesh', 'get_filter_low_hanging_obstacles', 36873697);

  bool getFilterLowHangingObstacles() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_filter_low_hanging_obstacles, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_ledge_spans =
      resolveMethodBind('NavigationMesh', 'set_filter_ledge_spans', 2586408642);

  void setFilterLedgeSpans(bool filterLedgeSpans) {
    final arg0 = malloc<Uint8>()..value = filterLedgeSpans ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_filter_ledge_spans, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_ledge_spans =
      resolveMethodBind('NavigationMesh', 'get_filter_ledge_spans', 36873697);

  bool getFilterLedgeSpans() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_filter_ledge_spans, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_walkable_low_height_spans =
      resolveMethodBind('NavigationMesh', 'set_filter_walkable_low_height_spans', 2586408642);

  void setFilterWalkableLowHeightSpans(bool filterWalkableLowHeightSpans) {
    final arg0 = malloc<Uint8>()..value = filterWalkableLowHeightSpans ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_filter_walkable_low_height_spans, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_walkable_low_height_spans =
      resolveMethodBind('NavigationMesh', 'get_filter_walkable_low_height_spans', 36873697);

  bool getFilterWalkableLowHeightSpans() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_filter_walkable_low_height_spans, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_baking_aabb =
      resolveMethodBind('NavigationMesh', 'set_filter_baking_aabb', 259215842);

  void setFilterBakingAabb(AABB bakingAabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    bakingAabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_filter_baking_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_baking_aabb =
      resolveMethodBind('NavigationMesh', 'get_filter_baking_aabb', 1068685055);

  AABB getFilterBakingAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_filter_baking_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_baking_aabb_offset =
      resolveMethodBind('NavigationMesh', 'set_filter_baking_aabb_offset', 3460891852);

  void setFilterBakingAabbOffset(Vector3 bakingAabbOffset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    bakingAabbOffset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_filter_baking_aabb_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_baking_aabb_offset =
      resolveMethodBind('NavigationMesh', 'get_filter_baking_aabb_offset', 3360562783);

  Vector3 getFilterBakingAabbOffset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_filter_baking_aabb_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_vertices(): an argument type is unsupported.
  // Skipped get_vertices(): unsupported return type "PackedVector3Array".
  // Skipped add_polygon(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_polygon_count =
      resolveMethodBind('NavigationMesh', 'get_polygon_count', 3905245786);

  int getPolygonCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_polygon_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_polygon(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_clear_polygons =
      resolveMethodBind('NavigationMesh', 'clear_polygons', 3218959716);

  void clearPolygons() {
    try {
      ptrcallVoid(_mb_clear_polygons, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_from_mesh =
      resolveMethodBind('NavigationMesh', 'create_from_mesh', 194775623);

  void createFromMesh(Mesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_create_from_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('NavigationMesh', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

}
