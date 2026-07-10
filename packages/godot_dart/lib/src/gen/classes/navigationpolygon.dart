// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationPolygon extends Resource {
  NavigationPolygon(super.nativePtr);

  // Skipped set_vertices(): an argument type is unsupported.
  // Skipped get_vertices(): unsupported return type "PackedVector2Array".
  // Skipped add_polygon(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_polygon_count =
      resolveMethodBind('NavigationPolygon', 'get_polygon_count', 3905245786);

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
      resolveMethodBind('NavigationPolygon', 'clear_polygons', 3218959716);

  void clearPolygons() {
    try {
      ptrcallVoid(_mb_clear_polygons, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_navigation_mesh =
      resolveMethodBind('NavigationPolygon', 'get_navigation_mesh', 330232164);

  NavigationMesh? getNavigationMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_navigation_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : NavigationMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_outline(): an argument type is unsupported.
  // Skipped add_outline_at_index(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_outline_count =
      resolveMethodBind('NavigationPolygon', 'get_outline_count', 3905245786);

  int getOutlineCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_outline_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_outline(): an argument type is unsupported.
  // Skipped get_outline(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_remove_outline =
      resolveMethodBind('NavigationPolygon', 'remove_outline', 1286410249);

  void removeOutline(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      ptrcallVoid(_mb_remove_outline, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_outlines =
      resolveMethodBind('NavigationPolygon', 'clear_outlines', 3218959716);

  void clearOutlines() {
    try {
      ptrcallVoid(_mb_clear_outlines, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_make_polygons_from_outlines =
      resolveMethodBind('NavigationPolygon', 'make_polygons_from_outlines', 3218959716);

  void makePolygonsFromOutlines() {
    try {
      ptrcallVoid(_mb_make_polygons_from_outlines, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_size =
      resolveMethodBind('NavigationPolygon', 'set_cell_size', 373806689);

  void setCellSize(double cellSize) {
    final arg0 = malloc<Double>()..value = cellSize;
    try {
      ptrcallVoid(_mb_set_cell_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_size =
      resolveMethodBind('NavigationPolygon', 'get_cell_size', 1740695150);

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

  static final Pointer<Void> _mb_set_border_size =
      resolveMethodBind('NavigationPolygon', 'set_border_size', 373806689);

  void setBorderSize(double borderSize) {
    final arg0 = malloc<Double>()..value = borderSize;
    try {
      ptrcallVoid(_mb_set_border_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_border_size =
      resolveMethodBind('NavigationPolygon', 'get_border_size', 1740695150);

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

  static final Pointer<Void> _mb_set_sample_partition_type =
      resolveMethodBind('NavigationPolygon', 'set_sample_partition_type', 2441478482);

  void setSamplePartitionType(int samplePartitionType) {
    final arg0 = malloc<Int64>()..value = samplePartitionType;
    try {
      ptrcallVoid(_mb_set_sample_partition_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sample_partition_type =
      resolveMethodBind('NavigationPolygon', 'get_sample_partition_type', 3887422851);

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
      resolveMethodBind('NavigationPolygon', 'set_parsed_geometry_type', 2507971764);

  void setParsedGeometryType(int geometryType) {
    final arg0 = malloc<Int64>()..value = geometryType;
    try {
      ptrcallVoid(_mb_set_parsed_geometry_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_parsed_geometry_type =
      resolveMethodBind('NavigationPolygon', 'get_parsed_geometry_type', 1073219508);

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

  static final Pointer<Void> _mb_set_parsed_collision_mask =
      resolveMethodBind('NavigationPolygon', 'set_parsed_collision_mask', 1286410249);

  void setParsedCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_parsed_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_parsed_collision_mask =
      resolveMethodBind('NavigationPolygon', 'get_parsed_collision_mask', 3905245786);

  int getParsedCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_parsed_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_parsed_collision_mask_value =
      resolveMethodBind('NavigationPolygon', 'set_parsed_collision_mask_value', 300928843);

  void setParsedCollisionMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_parsed_collision_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_parsed_collision_mask_value =
      resolveMethodBind('NavigationPolygon', 'get_parsed_collision_mask_value', 1116898809);

  bool getParsedCollisionMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_parsed_collision_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_source_geometry_mode =
      resolveMethodBind('NavigationPolygon', 'set_source_geometry_mode', 4002316705);

  void setSourceGeometryMode(int geometryMode) {
    final arg0 = malloc<Int64>()..value = geometryMode;
    try {
      ptrcallVoid(_mb_set_source_geometry_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source_geometry_mode =
      resolveMethodBind('NavigationPolygon', 'get_source_geometry_mode', 459686762);

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

  static final Pointer<Void> _mb_set_source_geometry_group_name =
      resolveMethodBind('NavigationPolygon', 'set_source_geometry_group_name', 3304788590);

  void setSourceGeometryGroupName(String groupName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), groupName);
    try {
      ptrcallVoid(_mb_set_source_geometry_group_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source_geometry_group_name =
      resolveMethodBind('NavigationPolygon', 'get_source_geometry_group_name', 2002593661);

  String getSourceGeometryGroupName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_source_geometry_group_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_agent_radius =
      resolveMethodBind('NavigationPolygon', 'set_agent_radius', 373806689);

  void setAgentRadius(double agentRadius) {
    final arg0 = malloc<Double>()..value = agentRadius;
    try {
      ptrcallVoid(_mb_set_agent_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_agent_radius =
      resolveMethodBind('NavigationPolygon', 'get_agent_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_baking_rect =
      resolveMethodBind('NavigationPolygon', 'set_baking_rect', 2046264180);

  void setBakingRect(Rect2 rect) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_baking_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_baking_rect =
      resolveMethodBind('NavigationPolygon', 'get_baking_rect', 1639390495);

  Rect2 getBakingRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_baking_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_baking_rect_offset =
      resolveMethodBind('NavigationPolygon', 'set_baking_rect_offset', 743155724);

  void setBakingRectOffset(Vector2 rectOffset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    rectOffset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_baking_rect_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_baking_rect_offset =
      resolveMethodBind('NavigationPolygon', 'get_baking_rect_offset', 3341600327);

  Vector2 getBakingRectOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_baking_rect_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('NavigationPolygon', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

}
