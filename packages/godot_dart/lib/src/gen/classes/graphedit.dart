// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GraphEdit extends Control {
  GraphEdit(super.nativePtr);

  static final Pointer<Void> _mb_connect_node =
      resolveMethodBind('GraphEdit', 'connect_node', 1376144231);

  int connectNode(String fromNode, int fromPort, String toNode, int toPort, bool keepAlive) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), fromNode);
    final arg1 = malloc<Int64>()..value = fromPort;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), toNode);
    final arg3 = malloc<Int64>()..value = toPort;
    final arg4 = malloc<Uint8>()..value = keepAlive ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_is_node_connected =
      resolveMethodBind('GraphEdit', 'is_node_connected', 4216241294);

  bool isNodeConnected(String fromNode, int fromPort, String toNode, int toPort) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), fromNode);
    final arg1 = malloc<Int64>()..value = fromPort;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), toNode);
    final arg3 = malloc<Int64>()..value = toPort;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_node_connected, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_disconnect_node =
      resolveMethodBind('GraphEdit', 'disconnect_node', 1933654315);

  void disconnectNode(String fromNode, int fromPort, String toNode, int toPort) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), fromNode);
    final arg1 = malloc<Int64>()..value = fromPort;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), toNode);
    final arg3 = malloc<Int64>()..value = toPort;
    try {
      ptrcallVoid(_mb_disconnect_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_connection_activity =
      resolveMethodBind('GraphEdit', 'set_connection_activity', 1141899943);

  void setConnectionActivity(String fromNode, int fromPort, String toNode, int toPort, double amount) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), fromNode);
    final arg1 = malloc<Int64>()..value = fromPort;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), toNode);
    final arg3 = malloc<Int64>()..value = toPort;
    final arg4 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_connection_activity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  // Skipped set_connections(): an argument type is unsupported.
  // Skipped get_connection_list(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_get_connection_count =
      resolveMethodBind('GraphEdit', 'get_connection_count', 861718734);

  int getConnectionCount(String fromNode, int fromPort) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), fromNode);
    final arg1 = malloc<Int64>()..value = fromPort;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_connection_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_closest_connection_at_point(): unsupported return type "Dictionary".
  // Skipped get_connection_list_from_node(): unsupported return type "typedarray::Dictionary".
  // Skipped get_connections_intersecting_with_rect(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_clear_connections =
      resolveMethodBind('GraphEdit', 'clear_connections', 3218959716);

  void clearConnections() {
    try {
      ptrcallVoid(_mb_clear_connections, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_connection_drag_end =
      resolveMethodBind('GraphEdit', 'force_connection_drag_end', 3218959716);

  void forceConnectionDragEnd() {
    try {
      ptrcallVoid(_mb_force_connection_drag_end, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_scroll_offset =
      resolveMethodBind('GraphEdit', 'get_scroll_offset', 3341600327);

  Vector2 getScrollOffset() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scroll_offset, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scroll_offset =
      resolveMethodBind('GraphEdit', 'set_scroll_offset', 743155724);

  void setScrollOffset(Vector2 offset) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    offset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scroll_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_valid_right_disconnect_type =
      resolveMethodBind('GraphEdit', 'add_valid_right_disconnect_type', 1286410249);

  void addValidRightDisconnectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_add_valid_right_disconnect_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_valid_right_disconnect_type =
      resolveMethodBind('GraphEdit', 'remove_valid_right_disconnect_type', 1286410249);

  void removeValidRightDisconnectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_remove_valid_right_disconnect_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_valid_left_disconnect_type =
      resolveMethodBind('GraphEdit', 'add_valid_left_disconnect_type', 1286410249);

  void addValidLeftDisconnectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_add_valid_left_disconnect_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_valid_left_disconnect_type =
      resolveMethodBind('GraphEdit', 'remove_valid_left_disconnect_type', 1286410249);

  void removeValidLeftDisconnectType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_remove_valid_left_disconnect_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_valid_connection_type =
      resolveMethodBind('GraphEdit', 'add_valid_connection_type', 3937882851);

  void addValidConnectionType(int fromType, int toType) {
    final arg0 = malloc<Int64>()..value = fromType;
    final arg1 = malloc<Int64>()..value = toType;
    try {
      ptrcallVoid(_mb_add_valid_connection_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_valid_connection_type =
      resolveMethodBind('GraphEdit', 'remove_valid_connection_type', 3937882851);

  void removeValidConnectionType(int fromType, int toType) {
    final arg0 = malloc<Int64>()..value = fromType;
    final arg1 = malloc<Int64>()..value = toType;
    try {
      ptrcallVoid(_mb_remove_valid_connection_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_valid_connection_type =
      resolveMethodBind('GraphEdit', 'is_valid_connection_type', 2522259332);

  bool isValidConnectionType(int fromType, int toType) {
    final arg0 = malloc<Int64>()..value = fromType;
    final arg1 = malloc<Int64>()..value = toType;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_valid_connection_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_connection_line(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_attach_graph_element_to_frame =
      resolveMethodBind('GraphEdit', 'attach_graph_element_to_frame', 3740211285);

  void attachGraphElementToFrame(String element, String frame) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), element);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), frame);
    try {
      ptrcallVoid(_mb_attach_graph_element_to_frame, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_detach_graph_element_from_frame =
      resolveMethodBind('GraphEdit', 'detach_graph_element_from_frame', 3304788590);

  void detachGraphElementFromFrame(String element) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), element);
    try {
      ptrcallVoid(_mb_detach_graph_element_from_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_element_frame =
      resolveMethodBind('GraphEdit', 'get_element_frame', 988084372);

  GraphFrame? getElementFrame(String element) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), element);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_element_frame, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : GraphFrame(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_attached_nodes_of_frame(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_set_panning_scheme =
      resolveMethodBind('GraphEdit', 'set_panning_scheme', 18893313);

  void setPanningScheme(int scheme) {
    final arg0 = malloc<Int64>()..value = scheme;
    try {
      ptrcallVoid(_mb_set_panning_scheme, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_panning_scheme =
      resolveMethodBind('GraphEdit', 'get_panning_scheme', 549924446);

  int getPanningScheme() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_panning_scheme, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_zoom =
      resolveMethodBind('GraphEdit', 'set_zoom', 373806689);

  void setZoom(double zoom) {
    final arg0 = malloc<Double>()..value = zoom;
    try {
      ptrcallVoid(_mb_set_zoom, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_zoom =
      resolveMethodBind('GraphEdit', 'get_zoom', 1740695150);

  double getZoom() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_zoom, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_zoom_min =
      resolveMethodBind('GraphEdit', 'set_zoom_min', 373806689);

  void setZoomMin(double zoomMin) {
    final arg0 = malloc<Double>()..value = zoomMin;
    try {
      ptrcallVoid(_mb_set_zoom_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_zoom_min =
      resolveMethodBind('GraphEdit', 'get_zoom_min', 1740695150);

  double getZoomMin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_zoom_min, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_zoom_max =
      resolveMethodBind('GraphEdit', 'set_zoom_max', 373806689);

  void setZoomMax(double zoomMax) {
    final arg0 = malloc<Double>()..value = zoomMax;
    try {
      ptrcallVoid(_mb_set_zoom_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_zoom_max =
      resolveMethodBind('GraphEdit', 'get_zoom_max', 1740695150);

  double getZoomMax() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_zoom_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_zoom_step =
      resolveMethodBind('GraphEdit', 'set_zoom_step', 373806689);

  void setZoomStep(double zoomStep) {
    final arg0 = malloc<Double>()..value = zoomStep;
    try {
      ptrcallVoid(_mb_set_zoom_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_zoom_step =
      resolveMethodBind('GraphEdit', 'get_zoom_step', 1740695150);

  double getZoomStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_zoom_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_grid =
      resolveMethodBind('GraphEdit', 'set_show_grid', 2586408642);

  void setShowGrid(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_grid, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_grid =
      resolveMethodBind('GraphEdit', 'is_showing_grid', 36873697);

  bool isShowingGrid() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_grid, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_grid_pattern =
      resolveMethodBind('GraphEdit', 'set_grid_pattern', 1074098205);

  void setGridPattern(int pattern) {
    final arg0 = malloc<Int64>()..value = pattern;
    try {
      ptrcallVoid(_mb_set_grid_pattern, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_grid_pattern =
      resolveMethodBind('GraphEdit', 'get_grid_pattern', 1286127528);

  int getGridPattern() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_grid_pattern, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_snapping_enabled =
      resolveMethodBind('GraphEdit', 'set_snapping_enabled', 2586408642);

  void setSnappingEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_snapping_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_snapping_enabled =
      resolveMethodBind('GraphEdit', 'is_snapping_enabled', 36873697);

  bool isSnappingEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_snapping_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_snapping_distance =
      resolveMethodBind('GraphEdit', 'set_snapping_distance', 1286410249);

  void setSnappingDistance(int pixels) {
    final arg0 = malloc<Int64>()..value = pixels;
    try {
      ptrcallVoid(_mb_set_snapping_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_snapping_distance =
      resolveMethodBind('GraphEdit', 'get_snapping_distance', 3905245786);

  int getSnappingDistance() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_snapping_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_connection_lines_curvature =
      resolveMethodBind('GraphEdit', 'set_connection_lines_curvature', 373806689);

  void setConnectionLinesCurvature(double curvature) {
    final arg0 = malloc<Double>()..value = curvature;
    try {
      ptrcallVoid(_mb_set_connection_lines_curvature, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_connection_lines_curvature =
      resolveMethodBind('GraphEdit', 'get_connection_lines_curvature', 1740695150);

  double getConnectionLinesCurvature() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_connection_lines_curvature, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_connection_lines_thickness =
      resolveMethodBind('GraphEdit', 'set_connection_lines_thickness', 373806689);

  void setConnectionLinesThickness(double pixels) {
    final arg0 = malloc<Double>()..value = pixels;
    try {
      ptrcallVoid(_mb_set_connection_lines_thickness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_connection_lines_thickness =
      resolveMethodBind('GraphEdit', 'get_connection_lines_thickness', 1740695150);

  double getConnectionLinesThickness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_connection_lines_thickness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_connection_lines_antialiased =
      resolveMethodBind('GraphEdit', 'set_connection_lines_antialiased', 2586408642);

  void setConnectionLinesAntialiased(bool pixels) {
    final arg0 = malloc<Uint8>()..value = pixels ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_connection_lines_antialiased, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_connection_lines_antialiased =
      resolveMethodBind('GraphEdit', 'is_connection_lines_antialiased', 36873697);

  bool isConnectionLinesAntialiased() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_connection_lines_antialiased, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_minimap_size =
      resolveMethodBind('GraphEdit', 'set_minimap_size', 743155724);

  void setMinimapSize(Vector2 size) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_minimap_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_minimap_size =
      resolveMethodBind('GraphEdit', 'get_minimap_size', 3341600327);

  Vector2 getMinimapSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_minimap_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_minimap_opacity =
      resolveMethodBind('GraphEdit', 'set_minimap_opacity', 373806689);

  void setMinimapOpacity(double opacity) {
    final arg0 = malloc<Double>()..value = opacity;
    try {
      ptrcallVoid(_mb_set_minimap_opacity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_minimap_opacity =
      resolveMethodBind('GraphEdit', 'get_minimap_opacity', 1740695150);

  double getMinimapOpacity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_minimap_opacity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_minimap_enabled =
      resolveMethodBind('GraphEdit', 'set_minimap_enabled', 2586408642);

  void setMinimapEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_minimap_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_minimap_enabled =
      resolveMethodBind('GraphEdit', 'is_minimap_enabled', 36873697);

  bool isMinimapEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_minimap_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_menu =
      resolveMethodBind('GraphEdit', 'set_show_menu', 2586408642);

  void setShowMenu(bool hidden) {
    final arg0 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_menu, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_menu =
      resolveMethodBind('GraphEdit', 'is_showing_menu', 36873697);

  bool isShowingMenu() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_menu, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_zoom_label =
      resolveMethodBind('GraphEdit', 'set_show_zoom_label', 2586408642);

  void setShowZoomLabel(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_zoom_label, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_zoom_label =
      resolveMethodBind('GraphEdit', 'is_showing_zoom_label', 36873697);

  bool isShowingZoomLabel() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_zoom_label, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_grid_buttons =
      resolveMethodBind('GraphEdit', 'set_show_grid_buttons', 2586408642);

  void setShowGridButtons(bool hidden) {
    final arg0 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_grid_buttons, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_grid_buttons =
      resolveMethodBind('GraphEdit', 'is_showing_grid_buttons', 36873697);

  bool isShowingGridButtons() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_grid_buttons, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_zoom_buttons =
      resolveMethodBind('GraphEdit', 'set_show_zoom_buttons', 2586408642);

  void setShowZoomButtons(bool hidden) {
    final arg0 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_zoom_buttons, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_zoom_buttons =
      resolveMethodBind('GraphEdit', 'is_showing_zoom_buttons', 36873697);

  bool isShowingZoomButtons() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_zoom_buttons, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_minimap_button =
      resolveMethodBind('GraphEdit', 'set_show_minimap_button', 2586408642);

  void setShowMinimapButton(bool hidden) {
    final arg0 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_minimap_button, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_minimap_button =
      resolveMethodBind('GraphEdit', 'is_showing_minimap_button', 36873697);

  bool isShowingMinimapButton() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_minimap_button, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_arrange_button =
      resolveMethodBind('GraphEdit', 'set_show_arrange_button', 2586408642);

  void setShowArrangeButton(bool hidden) {
    final arg0 = malloc<Uint8>()..value = hidden ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_arrange_button, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_showing_arrange_button =
      resolveMethodBind('GraphEdit', 'is_showing_arrange_button', 36873697);

  bool isShowingArrangeButton() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_showing_arrange_button, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_right_disconnects =
      resolveMethodBind('GraphEdit', 'set_right_disconnects', 2586408642);

  void setRightDisconnects(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_right_disconnects, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_right_disconnects_enabled =
      resolveMethodBind('GraphEdit', 'is_right_disconnects_enabled', 36873697);

  bool isRightDisconnectsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_right_disconnects_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_type_names(): an argument type is unsupported.
  // Skipped get_type_names(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_menu_hbox =
      resolveMethodBind('GraphEdit', 'get_menu_hbox', 3590609951);

  HBoxContainer? getMenuHbox() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_menu_hbox, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : HBoxContainer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_arrange_nodes =
      resolveMethodBind('GraphEdit', 'arrange_nodes', 3218959716);

  void arrangeNodes() {
    try {
      ptrcallVoid(_mb_arrange_nodes, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selected =
      resolveMethodBind('GraphEdit', 'set_selected', 1078189570);

  void setSelected(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_set_selected, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
