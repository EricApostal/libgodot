// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationRegion2D extends Node2D {
  NavigationRegion2D(super.nativePtr);

  // Skipped get_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_navigation_polygon =
      resolveMethodBind('NavigationRegion2D', 'set_navigation_polygon', 1515040758);

  void setNavigationPolygon(NavigationPolygon navigationPolygon) {
    final arg0 = malloc<Pointer<Void>>()..value = navigationPolygon.nativePtr;
    try {
      ptrcallVoid(_mb_set_navigation_polygon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_polygon =
      resolveMethodBind('NavigationRegion2D', 'get_navigation_polygon', 1046532237);

  NavigationPolygon? getNavigationPolygon() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_navigation_polygon, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : NavigationPolygon(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('NavigationRegion2D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('NavigationRegion2D', 'is_enabled', 36873697);

  bool isEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_navigation_map(): an argument type is unsupported.
  // Skipped get_navigation_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_use_edge_connections =
      resolveMethodBind('NavigationRegion2D', 'set_use_edge_connections', 2586408642);

  void setUseEdgeConnections(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_edge_connections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_edge_connections =
      resolveMethodBind('NavigationRegion2D', 'get_use_edge_connections', 36873697);

  bool getUseEdgeConnections() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_edge_connections, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_navigation_layers =
      resolveMethodBind('NavigationRegion2D', 'set_navigation_layers', 1286410249);

  void setNavigationLayers(int navigationLayers) {
    final arg0 = malloc<Int64>()..value = navigationLayers;
    try {
      ptrcallVoid(_mb_set_navigation_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layers =
      resolveMethodBind('NavigationRegion2D', 'get_navigation_layers', 3905245786);

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
      resolveMethodBind('NavigationRegion2D', 'set_navigation_layer_value', 300928843);

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
      resolveMethodBind('NavigationRegion2D', 'get_navigation_layer_value', 1116898809);

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

  // Skipped get_region_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_enter_cost =
      resolveMethodBind('NavigationRegion2D', 'set_enter_cost', 373806689);

  void setEnterCost(double enterCost) {
    final arg0 = malloc<Double>()..value = enterCost;
    try {
      ptrcallVoid(_mb_set_enter_cost, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enter_cost =
      resolveMethodBind('NavigationRegion2D', 'get_enter_cost', 1740695150);

  double getEnterCost() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_enter_cost, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_travel_cost =
      resolveMethodBind('NavigationRegion2D', 'set_travel_cost', 373806689);

  void setTravelCost(double travelCost) {
    final arg0 = malloc<Double>()..value = travelCost;
    try {
      ptrcallVoid(_mb_set_travel_cost, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_travel_cost =
      resolveMethodBind('NavigationRegion2D', 'get_travel_cost', 1740695150);

  double getTravelCost() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_travel_cost, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_bake_navigation_polygon =
      resolveMethodBind('NavigationRegion2D', 'bake_navigation_polygon', 3216645846);

  void bakeNavigationPolygon(bool onThread) {
    final arg0 = malloc<Uint8>()..value = onThread ? 1 : 0;
    try {
      ptrcallVoid(_mb_bake_navigation_polygon, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_baking =
      resolveMethodBind('NavigationRegion2D', 'is_baking', 36873697);

  bool isBaking() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_baking, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_bounds =
      resolveMethodBind('NavigationRegion2D', 'get_bounds', 1639390495);

  Rect2 getBounds() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bounds, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
