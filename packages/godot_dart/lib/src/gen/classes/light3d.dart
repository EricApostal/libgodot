// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Light3D extends VisualInstance3D {
  Light3D(super.nativePtr);

  static final Pointer<Void> _mb_set_editor_only =
      resolveMethodBind('Light3D', 'set_editor_only', 2586408642);

  void setEditorOnly(bool editorOnly) {
    final arg0 = malloc<Uint8>()..value = editorOnly ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editor_only, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editor_only =
      resolveMethodBind('Light3D', 'is_editor_only', 36873697);

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

  static final Pointer<Void> _mb_set_param =
      resolveMethodBind('Light3D', 'set_param', 1722734213);

  void setParam(int param, double value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_param, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param =
      resolveMethodBind('Light3D', 'get_param', 1844084987);

  double getParam(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_param, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_shadow =
      resolveMethodBind('Light3D', 'set_shadow', 2586408642);

  void setShadow(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shadow, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_shadow =
      resolveMethodBind('Light3D', 'has_shadow', 36873697);

  bool hasShadow() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_shadow, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_negative =
      resolveMethodBind('Light3D', 'set_negative', 2586408642);

  void setNegative(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_negative, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_negative =
      resolveMethodBind('Light3D', 'is_negative', 36873697);

  bool isNegative() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_negative, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cull_mask =
      resolveMethodBind('Light3D', 'set_cull_mask', 1286410249);

  void setCullMask(int cullMask) {
    final arg0 = malloc<Int64>()..value = cullMask;
    try {
      ptrcallVoid(_mb_set_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mask =
      resolveMethodBind('Light3D', 'get_cull_mask', 3905245786);

  int getCullMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cull_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_distance_fade =
      resolveMethodBind('Light3D', 'set_enable_distance_fade', 2586408642);

  void setEnableDistanceFade(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_distance_fade, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_distance_fade_enabled =
      resolveMethodBind('Light3D', 'is_distance_fade_enabled', 36873697);

  bool isDistanceFadeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_distance_fade_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade_begin =
      resolveMethodBind('Light3D', 'set_distance_fade_begin', 373806689);

  void setDistanceFadeBegin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance_fade_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade_begin =
      resolveMethodBind('Light3D', 'get_distance_fade_begin', 1740695150);

  double getDistanceFadeBegin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade_shadow =
      resolveMethodBind('Light3D', 'set_distance_fade_shadow', 373806689);

  void setDistanceFadeShadow(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance_fade_shadow, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade_shadow =
      resolveMethodBind('Light3D', 'get_distance_fade_shadow', 1740695150);

  double getDistanceFadeShadow() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade_shadow, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_distance_fade_length =
      resolveMethodBind('Light3D', 'set_distance_fade_length', 373806689);

  void setDistanceFadeLength(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_distance_fade_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_distance_fade_length =
      resolveMethodBind('Light3D', 'get_distance_fade_length', 1740695150);

  double getDistanceFadeLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_distance_fade_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('Light3D', 'set_color', 2920490490);

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
      resolveMethodBind('Light3D', 'get_color', 3444240500);

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

  static final Pointer<Void> _mb_set_shadow_reverse_cull_face =
      resolveMethodBind('Light3D', 'set_shadow_reverse_cull_face', 2586408642);

  void setShadowReverseCullFace(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_shadow_reverse_cull_face, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_reverse_cull_face =
      resolveMethodBind('Light3D', 'get_shadow_reverse_cull_face', 36873697);

  bool getShadowReverseCullFace() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_shadow_reverse_cull_face, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shadow_caster_mask =
      resolveMethodBind('Light3D', 'set_shadow_caster_mask', 1286410249);

  void setShadowCasterMask(int casterMask) {
    final arg0 = malloc<Int64>()..value = casterMask;
    try {
      ptrcallVoid(_mb_set_shadow_caster_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shadow_caster_mask =
      resolveMethodBind('Light3D', 'get_shadow_caster_mask', 3905245786);

  int getShadowCasterMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_shadow_caster_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bake_mode =
      resolveMethodBind('Light3D', 'set_bake_mode', 37739303);

  void setBakeMode(int bakeMode) {
    final arg0 = malloc<Int64>()..value = bakeMode;
    try {
      ptrcallVoid(_mb_set_bake_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_mode =
      resolveMethodBind('Light3D', 'get_bake_mode', 371737608);

  int getBakeMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_bake_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_projector =
      resolveMethodBind('Light3D', 'set_projector', 4051416890);

  void setProjector(Texture2D projector) {
    final arg0 = malloc<Pointer<Void>>()..value = projector.nativePtr;
    try {
      ptrcallVoid(_mb_set_projector, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_projector =
      resolveMethodBind('Light3D', 'get_projector', 3635182373);

  Texture2D? getProjector() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_projector, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_temperature =
      resolveMethodBind('Light3D', 'set_temperature', 373806689);

  void setTemperature(double temperature) {
    final arg0 = malloc<Double>()..value = temperature;
    try {
      ptrcallVoid(_mb_set_temperature, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_temperature =
      resolveMethodBind('Light3D', 'get_temperature', 1740695150);

  double getTemperature() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_temperature, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_correlated_color =
      resolveMethodBind('Light3D', 'get_correlated_color', 3444240500);

  Color getCorrelatedColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_correlated_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
