// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationLink2D extends Node2D {
  NavigationLink2D(super.nativePtr);

  // Skipped get_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('NavigationLink2D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('NavigationLink2D', 'is_enabled', 36873697);

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
  static final Pointer<Void> _mb_set_bidirectional =
      resolveMethodBind('NavigationLink2D', 'set_bidirectional', 2586408642);

  void setBidirectional(bool bidirectional) {
    final arg0 = malloc<Uint8>()..value = bidirectional ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bidirectional, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_bidirectional =
      resolveMethodBind('NavigationLink2D', 'is_bidirectional', 36873697);

  bool isBidirectional() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bidirectional, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_navigation_layers =
      resolveMethodBind('NavigationLink2D', 'set_navigation_layers', 1286410249);

  void setNavigationLayers(int navigationLayers) {
    final arg0 = malloc<Int64>()..value = navigationLayers;
    try {
      ptrcallVoid(_mb_set_navigation_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layers =
      resolveMethodBind('NavigationLink2D', 'get_navigation_layers', 3905245786);

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
      resolveMethodBind('NavigationLink2D', 'set_navigation_layer_value', 300928843);

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
      resolveMethodBind('NavigationLink2D', 'get_navigation_layer_value', 1116898809);

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

  static final Pointer<Void> _mb_set_start_position =
      resolveMethodBind('NavigationLink2D', 'set_start_position', 743155724);

  void setStartPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_start_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_start_position =
      resolveMethodBind('NavigationLink2D', 'get_start_position', 3341600327);

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

  static final Pointer<Void> _mb_set_end_position =
      resolveMethodBind('NavigationLink2D', 'set_end_position', 743155724);

  void setEndPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_end_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_end_position =
      resolveMethodBind('NavigationLink2D', 'get_end_position', 3341600327);

  Vector2 getEndPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_end_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_start_position =
      resolveMethodBind('NavigationLink2D', 'set_global_start_position', 743155724);

  void setGlobalStartPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_start_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_start_position =
      resolveMethodBind('NavigationLink2D', 'get_global_start_position', 3341600327);

  Vector2 getGlobalStartPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_start_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_end_position =
      resolveMethodBind('NavigationLink2D', 'set_global_end_position', 743155724);

  void setGlobalEndPosition(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_end_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_end_position =
      resolveMethodBind('NavigationLink2D', 'get_global_end_position', 3341600327);

  Vector2 getGlobalEndPosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_end_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enter_cost =
      resolveMethodBind('NavigationLink2D', 'set_enter_cost', 373806689);

  void setEnterCost(double enterCost) {
    final arg0 = malloc<Double>()..value = enterCost;
    try {
      ptrcallVoid(_mb_set_enter_cost, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enter_cost =
      resolveMethodBind('NavigationLink2D', 'get_enter_cost', 1740695150);

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
      resolveMethodBind('NavigationLink2D', 'set_travel_cost', 373806689);

  void setTravelCost(double travelCost) {
    final arg0 = malloc<Double>()..value = travelCost;
    try {
      ptrcallVoid(_mb_set_travel_cost, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_travel_cost =
      resolveMethodBind('NavigationLink2D', 'get_travel_cost', 1740695150);

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

}
