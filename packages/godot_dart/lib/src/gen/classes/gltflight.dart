// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFLight extends Resource {
  GLTFLight(super.nativePtr);

  static final Pointer<Void> _mb_to_node =
      resolveMethodBind('GLTFLight', 'to_node', 2040811672);

  Light3D? toNode() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_to_node, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Light3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped to_dictionary(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_color =
      resolveMethodBind('GLTFLight', 'get_color', 3200896285);

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

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('GLTFLight', 'set_color', 2920490490);

  void setColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_intensity =
      resolveMethodBind('GLTFLight', 'get_intensity', 191475506);

  double getIntensity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_intensity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_intensity =
      resolveMethodBind('GLTFLight', 'set_intensity', 373806689);

  void setIntensity(double intensity) {
    final arg0 = malloc<Double>()..value = intensity;
    try {
      ptrcallVoid(_mb_set_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_light_type =
      resolveMethodBind('GLTFLight', 'get_light_type', 2841200299);

  String getLightType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_light_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_light_type =
      resolveMethodBind('GLTFLight', 'set_light_type', 83702148);

  void setLightType(String lightType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), lightType);
    try {
      ptrcallVoid(_mb_set_light_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_range =
      resolveMethodBind('GLTFLight', 'get_range', 191475506);

  double getRange() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_range =
      resolveMethodBind('GLTFLight', 'set_range', 373806689);

  void setRange(double range) {
    final arg0 = malloc<Double>()..value = range;
    try {
      ptrcallVoid(_mb_set_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inner_cone_angle =
      resolveMethodBind('GLTFLight', 'get_inner_cone_angle', 191475506);

  double getInnerConeAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_inner_cone_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_inner_cone_angle =
      resolveMethodBind('GLTFLight', 'set_inner_cone_angle', 373806689);

  void setInnerConeAngle(double innerConeAngle) {
    final arg0 = malloc<Double>()..value = innerConeAngle;
    try {
      ptrcallVoid(_mb_set_inner_cone_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outer_cone_angle =
      resolveMethodBind('GLTFLight', 'get_outer_cone_angle', 191475506);

  double getOuterConeAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_outer_cone_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outer_cone_angle =
      resolveMethodBind('GLTFLight', 'set_outer_cone_angle', 373806689);

  void setOuterConeAngle(double outerConeAngle) {
    final arg0 = malloc<Double>()..value = outerConeAngle;
    try {
      ptrcallVoid(_mb_set_outer_cone_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_additional_data(): unsupported return type "Variant".
  // Skipped set_additional_data(): an argument type is unsupported.
}
