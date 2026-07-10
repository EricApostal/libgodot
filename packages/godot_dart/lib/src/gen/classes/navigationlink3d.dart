// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationLink3D extends Node3D {
  NavigationLink3D(super.nativePtr);

  /// Constructs a brand-new engine-owned NavigationLink3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory NavigationLink3D.create() {
    return NavigationLink3D(resolveClassConstructor('NavigationLink3D'));
  }

  // Skipped get_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('NavigationLink3D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('NavigationLink3D', 'is_enabled', 36873697);

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
      resolveMethodBind('NavigationLink3D', 'set_bidirectional', 2586408642);

  void setBidirectional(bool bidirectional) {
    final arg0 = malloc<Uint8>()..value = bidirectional ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bidirectional, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_bidirectional =
      resolveMethodBind('NavigationLink3D', 'is_bidirectional', 36873697);

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
      resolveMethodBind('NavigationLink3D', 'set_navigation_layers', 1286410249);

  void setNavigationLayers(int navigationLayers) {
    final arg0 = malloc<Int64>()..value = navigationLayers;
    try {
      ptrcallVoid(_mb_set_navigation_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_navigation_layers =
      resolveMethodBind('NavigationLink3D', 'get_navigation_layers', 3905245786);

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
      resolveMethodBind('NavigationLink3D', 'set_navigation_layer_value', 300928843);

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
      resolveMethodBind('NavigationLink3D', 'get_navigation_layer_value', 1116898809);

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
      resolveMethodBind('NavigationLink3D', 'set_start_position', 3460891852);

  void setStartPosition(Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_start_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_start_position =
      resolveMethodBind('NavigationLink3D', 'get_start_position', 3360562783);

  Vector3 getStartPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_start_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_end_position =
      resolveMethodBind('NavigationLink3D', 'set_end_position', 3460891852);

  void setEndPosition(Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_end_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_end_position =
      resolveMethodBind('NavigationLink3D', 'get_end_position', 3360562783);

  Vector3 getEndPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_end_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_start_position =
      resolveMethodBind('NavigationLink3D', 'set_global_start_position', 3460891852);

  void setGlobalStartPosition(Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_start_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_start_position =
      resolveMethodBind('NavigationLink3D', 'get_global_start_position', 3360562783);

  Vector3 getGlobalStartPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_start_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_end_position =
      resolveMethodBind('NavigationLink3D', 'set_global_end_position', 3460891852);

  void setGlobalEndPosition(Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_end_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_end_position =
      resolveMethodBind('NavigationLink3D', 'get_global_end_position', 3360562783);

  Vector3 getGlobalEndPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_end_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enter_cost =
      resolveMethodBind('NavigationLink3D', 'set_enter_cost', 373806689);

  void setEnterCost(double enterCost) {
    final arg0 = malloc<Double>()..value = enterCost;
    try {
      ptrcallVoid(_mb_set_enter_cost, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enter_cost =
      resolveMethodBind('NavigationLink3D', 'get_enter_cost', 1740695150);

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
      resolveMethodBind('NavigationLink3D', 'set_travel_cost', 373806689);

  void setTravelCost(double travelCost) {
    final arg0 = malloc<Double>()..value = travelCost;
    try {
      ptrcallVoid(_mb_set_travel_cost, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_travel_cost =
      resolveMethodBind('NavigationLink3D', 'get_travel_cost', 1740695150);

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
