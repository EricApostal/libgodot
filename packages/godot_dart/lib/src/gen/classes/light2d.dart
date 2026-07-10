// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Light2D extends Node2D {
  Light2D(super.nativePtr);

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('Light2D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('Light2D', 'is_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_editor_only =
      resolveMethodBind('Light2D', 'set_editor_only', 2586408642);

  void setEditorOnly(bool editorOnly) {
    final arg0 = malloc<Uint8>()..value = editorOnly ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editor_only, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editor_only =
      resolveMethodBind('Light2D', 'is_editor_only', 36873697);

  bool isEditorOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editor_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('Light2D', 'set_color', 2920490490);

  void setColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color =
      resolveMethodBind('Light2D', 'get_color', 3444240500);

  Color getColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_energy =
      resolveMethodBind('Light2D', 'set_energy', 373806689);

  void setEnergy(double energy) {
    final arg0 = malloc<Double>()..value = energy;
    try {
      ptrcallVoid(_mb_set_energy, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_energy =
      resolveMethodBind('Light2D', 'get_energy', 1740695150);

  double getEnergy() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_energy, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_z_range_min =
      resolveMethodBind('Light2D', 'set_z_range_min', 1286410249);

  void setZRangeMin(int z) {
    final arg0 = malloc<Int64>()..value = z;
    try {
      ptrcallVoid(_mb_set_z_range_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_z_range_min =
      resolveMethodBind('Light2D', 'get_z_range_min', 3905245786);

  int getZRangeMin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_z_range_min, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_z_range_max =
      resolveMethodBind('Light2D', 'set_z_range_max', 1286410249);

  void setZRangeMax(int z) {
    final arg0 = malloc<Int64>()..value = z;
    try {
      ptrcallVoid(_mb_set_z_range_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_z_range_max =
      resolveMethodBind('Light2D', 'get_z_range_max', 3905245786);

  int getZRangeMax() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_z_range_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_layer_range_min =
      resolveMethodBind('Light2D', 'set_layer_range_min', 1286410249);

  void setLayerRangeMin(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_layer_range_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layer_range_min =
      resolveMethodBind('Light2D', 'get_layer_range_min', 3905245786);

  int getLayerRangeMin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layer_range_min, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_layer_range_max =
      resolveMethodBind('Light2D', 'set_layer_range_max', 1286410249);

  void setLayerRangeMax(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_layer_range_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layer_range_max =
      resolveMethodBind('Light2D', 'get_layer_range_max', 3905245786);

  int getLayerRangeMax() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layer_range_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_item_cull_mask =
      resolveMethodBind('Light2D', 'set_item_cull_mask', 1286410249);

  void setItemCullMask(int itemCullMask) {
    final arg0 = malloc<Int64>()..value = itemCullMask;
    try {
      ptrcallVoid(_mb_set_item_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_cull_mask =
      resolveMethodBind('Light2D', 'get_item_cull_mask', 3905245786);

  int getItemCullMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_cull_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_item_shadow_cull_mask =
      resolveMethodBind('Light2D', 'set_item_shadow_cull_mask', 1286410249);

  void setItemShadowCullMask(int itemShadowCullMask) {
    final arg0 = malloc<Int64>()..value = itemShadowCullMask;
    try {
      ptrcallVoid(_mb_set_item_shadow_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_shadow_cull_mask =
      resolveMethodBind('Light2D', 'get_item_shadow_cull_mask', 3905245786);

  int getItemShadowCullMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_shadow_cull_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_enabled =
      resolveMethodBind('Light2D', 'set_shadow_enabled', 2586408642);

  void setShadowEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shadow_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_shadow_enabled =
      resolveMethodBind('Light2D', 'is_shadow_enabled', 36873697);

  bool isShadowEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_shadow_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_smooth =
      resolveMethodBind('Light2D', 'set_shadow_smooth', 373806689);

  void setShadowSmooth(double smooth) {
    final arg0 = malloc<Double>()..value = smooth;
    try {
      ptrcallVoid(_mb_set_shadow_smooth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_smooth =
      resolveMethodBind('Light2D', 'get_shadow_smooth', 1740695150);

  double getShadowSmooth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_shadow_smooth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_filter =
      resolveMethodBind('Light2D', 'set_shadow_filter', 3209356555);

  void setShadowFilter(int filter) {
    final arg0 = malloc<Int64>()..value = filter;
    try {
      ptrcallVoid(_mb_set_shadow_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_filter =
      resolveMethodBind('Light2D', 'get_shadow_filter', 1973619177);

  int getShadowFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shadow_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_color =
      resolveMethodBind('Light2D', 'set_shadow_color', 2920490490);

  void setShadowColor(Color shadowColor) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    shadowColor.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_shadow_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_color =
      resolveMethodBind('Light2D', 'get_shadow_color', 3444240500);

  Color getShadowColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_shadow_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blend_mode =
      resolveMethodBind('Light2D', 'set_blend_mode', 2916638796);

  void setBlendMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_blend_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_mode =
      resolveMethodBind('Light2D', 'get_blend_mode', 936255250);

  int getBlendMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_blend_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('Light2D', 'set_height', 373806689);

  void setHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('Light2D', 'get_height', 1740695150);

  double getHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
