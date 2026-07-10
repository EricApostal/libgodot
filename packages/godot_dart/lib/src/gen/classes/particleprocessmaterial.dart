// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ParticleProcessMaterial extends Material {
  ParticleProcessMaterial(super.nativePtr);

  static final Pointer<Void> _mb_set_direction =
      resolveMethodBind('ParticleProcessMaterial', 'set_direction', 3460891852);

  void setDirection(Vector3 degrees) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    degrees.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_direction =
      resolveMethodBind('ParticleProcessMaterial', 'get_direction', 3360562783);

  Vector3 getDirection() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_direction, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_inherit_velocity_ratio =
      resolveMethodBind('ParticleProcessMaterial', 'set_inherit_velocity_ratio', 373806689);

  void setInheritVelocityRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_inherit_velocity_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inherit_velocity_ratio =
      resolveMethodBind('ParticleProcessMaterial', 'get_inherit_velocity_ratio', 191475506);

  double getInheritVelocityRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_inherit_velocity_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_spread =
      resolveMethodBind('ParticleProcessMaterial', 'set_spread', 373806689);

  void setSpread(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_spread, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spread =
      resolveMethodBind('ParticleProcessMaterial', 'get_spread', 1740695150);

  double getSpread() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_spread, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flatness =
      resolveMethodBind('ParticleProcessMaterial', 'set_flatness', 373806689);

  void setFlatness(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_flatness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flatness =
      resolveMethodBind('ParticleProcessMaterial', 'get_flatness', 1740695150);

  double getFlatness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_flatness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_param =
      resolveMethodBind('ParticleProcessMaterial', 'set_param', 676779352);

  void setParam(int param, Vector2 value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    value.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_param, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param =
      resolveMethodBind('ParticleProcessMaterial', 'get_param', 2623708480);

  Vector2 getParam(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_param, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_param_min =
      resolveMethodBind('ParticleProcessMaterial', 'set_param_min', 2295964248);

  void setParamMin(int param, double value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_param_min, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param_min =
      resolveMethodBind('ParticleProcessMaterial', 'get_param_min', 3903786503);

  double getParamMin(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_param_min, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_param_max =
      resolveMethodBind('ParticleProcessMaterial', 'set_param_max', 2295964248);

  void setParamMax(int param, double value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_param_max, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param_max =
      resolveMethodBind('ParticleProcessMaterial', 'get_param_max', 3903786503);

  double getParamMax(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_param_max, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_param_texture =
      resolveMethodBind('ParticleProcessMaterial', 'set_param_texture', 526976089);

  void setParamTexture(int param, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_param_texture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param_texture =
      resolveMethodBind('ParticleProcessMaterial', 'get_param_texture', 3489372978);

  Texture2D? getParamTexture(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_param_texture, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('ParticleProcessMaterial', 'set_color', 2920490490);

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
      resolveMethodBind('ParticleProcessMaterial', 'get_color', 3444240500);

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

  static final Pointer<Void> _mb_set_use_scale_3d =
      resolveMethodBind('ParticleProcessMaterial', 'set_use_scale_3d', 2586408642);

  void setUseScale3d(bool usingScale3d) {
    final arg0 = malloc<Uint8>()..value = usingScale3d ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_scale_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_scale_3d =
      resolveMethodBind('ParticleProcessMaterial', 'is_using_scale_3d', 36873697);

  bool isUsingScale3d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_scale_3d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale_3d_min =
      resolveMethodBind('ParticleProcessMaterial', 'set_scale_3d_min', 3460891852);

  void setScale3dMin(Vector3 scale3dMin) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale3dMin.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scale_3d_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_3d_min =
      resolveMethodBind('ParticleProcessMaterial', 'get_scale_3d_min', 3360562783);

  Vector3 getScale3dMin() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scale_3d_min, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale_3d_max =
      resolveMethodBind('ParticleProcessMaterial', 'set_scale_3d_max', 3460891852);

  void setScale3dMax(Vector3 scale3dMax) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale3dMax.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scale_3d_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_3d_max =
      resolveMethodBind('ParticleProcessMaterial', 'get_scale_3d_max', 3360562783);

  Vector3 getScale3dMax() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scale_3d_max, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_rotation_3d =
      resolveMethodBind('ParticleProcessMaterial', 'set_use_rotation_3d', 2586408642);

  void setUseRotation3d(bool usingRotation3d) {
    final arg0 = malloc<Uint8>()..value = usingRotation3d ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_rotation_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_rotation_3d =
      resolveMethodBind('ParticleProcessMaterial', 'is_using_rotation_3d', 36873697);

  bool isUsingRotation3d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_rotation_3d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_3d_min =
      resolveMethodBind('ParticleProcessMaterial', 'set_rotation_3d_min', 3460891852);

  void setRotation3dMin(Vector3 rotation3dMin) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    rotation3dMin.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation_3d_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_3d_min =
      resolveMethodBind('ParticleProcessMaterial', 'get_rotation_3d_min', 3360562783);

  Vector3 getRotation3dMin() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation_3d_min, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_3d_max =
      resolveMethodBind('ParticleProcessMaterial', 'set_rotation_3d_max', 3460891852);

  void setRotation3dMax(Vector3 rotation3dMax) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    rotation3dMax.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation_3d_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_3d_max =
      resolveMethodBind('ParticleProcessMaterial', 'get_rotation_3d_max', 3360562783);

  Vector3 getRotation3dMax() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation_3d_max, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color_ramp =
      resolveMethodBind('ParticleProcessMaterial', 'set_color_ramp', 4051416890);

  void setColorRamp(Texture2D ramp) {
    final arg0 = malloc<Pointer<Void>>()..value = ramp.nativePtr;
    try {
      ptrcallVoid(_mb_set_color_ramp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_ramp =
      resolveMethodBind('ParticleProcessMaterial', 'get_color_ramp', 3635182373);

  Texture2D? getColorRamp() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_color_ramp, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_curve =
      resolveMethodBind('ParticleProcessMaterial', 'set_alpha_curve', 4051416890);

  void setAlphaCurve(Texture2D curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_alpha_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_curve =
      resolveMethodBind('ParticleProcessMaterial', 'get_alpha_curve', 3635182373);

  Texture2D? getAlphaCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_alpha_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_curve =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_curve', 4051416890);

  void setEmissionCurve(Texture2D curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_emission_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_curve =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_curve', 3635182373);

  Texture2D? getEmissionCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_emission_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color_initial_ramp =
      resolveMethodBind('ParticleProcessMaterial', 'set_color_initial_ramp', 4051416890);

  void setColorInitialRamp(Texture2D ramp) {
    final arg0 = malloc<Pointer<Void>>()..value = ramp.nativePtr;
    try {
      ptrcallVoid(_mb_set_color_initial_ramp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_initial_ramp =
      resolveMethodBind('ParticleProcessMaterial', 'get_color_initial_ramp', 3635182373);

  Texture2D? getColorInitialRamp() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_color_initial_ramp, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_velocity_limit_curve =
      resolveMethodBind('ParticleProcessMaterial', 'set_velocity_limit_curve', 4051416890);

  void setVelocityLimitCurve(Texture2D curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_velocity_limit_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity_limit_curve =
      resolveMethodBind('ParticleProcessMaterial', 'get_velocity_limit_curve', 3635182373);

  Texture2D? getVelocityLimitCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_velocity_limit_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particle_flag =
      resolveMethodBind('ParticleProcessMaterial', 'set_particle_flag', 1711815571);

  void setParticleFlag(int particleFlag, bool enable) {
    final arg0 = malloc<Int64>()..value = particleFlag;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_particle_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_particle_flag =
      resolveMethodBind('ParticleProcessMaterial', 'get_particle_flag', 3895316907);

  bool getParticleFlag(int particleFlag) {
    final arg0 = malloc<Int64>()..value = particleFlag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_particle_flag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_velocity_pivot =
      resolveMethodBind('ParticleProcessMaterial', 'set_velocity_pivot', 3460891852);

  void setVelocityPivot(Vector3 pivot) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    pivot.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_velocity_pivot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_velocity_pivot =
      resolveMethodBind('ParticleProcessMaterial', 'get_velocity_pivot', 3783033775);

  Vector3 getVelocityPivot() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_velocity_pivot, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_shape =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_shape', 461501442);

  void setEmissionShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_emission_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_shape =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_shape', 3719733018);

  int getEmissionShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_emission_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_sphere_radius =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_sphere_radius', 373806689);

  void setEmissionSphereRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_emission_sphere_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_sphere_radius =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_sphere_radius', 1740695150);

  double getEmissionSphereRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_sphere_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_box_extents =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_box_extents', 3460891852);

  void setEmissionBoxExtents(Vector3 extents) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    extents.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_emission_box_extents, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_box_extents =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_box_extents', 3360562783);

  Vector3 getEmissionBoxExtents() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_emission_box_extents, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_point_texture =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_point_texture', 4051416890);

  void setEmissionPointTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_emission_point_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_point_texture =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_point_texture', 3635182373);

  Texture2D? getEmissionPointTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_emission_point_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_normal_texture =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_normal_texture', 4051416890);

  void setEmissionNormalTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_emission_normal_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_normal_texture =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_normal_texture', 3635182373);

  Texture2D? getEmissionNormalTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_emission_normal_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_color_texture =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_color_texture', 4051416890);

  void setEmissionColorTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_emission_color_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_color_texture =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_color_texture', 3635182373);

  Texture2D? getEmissionColorTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_emission_color_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_point_count =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_point_count', 1286410249);

  void setEmissionPointCount(int pointCount) {
    final arg0 = malloc<Int64>()..value = pointCount;
    try {
      ptrcallVoid(_mb_set_emission_point_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_point_count =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_point_count', 3905245786);

  int getEmissionPointCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_emission_point_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_ring_axis =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_ring_axis', 3460891852);

  void setEmissionRingAxis(Vector3 axis) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    axis.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_emission_ring_axis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_axis =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_ring_axis', 3360562783);

  Vector3 getEmissionRingAxis() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_emission_ring_axis, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_ring_height =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_ring_height', 373806689);

  void setEmissionRingHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_emission_ring_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_height =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_ring_height', 1740695150);

  double getEmissionRingHeight() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_ring_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_ring_radius =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_ring_radius', 373806689);

  void setEmissionRingRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_emission_ring_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_radius =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_ring_radius', 1740695150);

  double getEmissionRingRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_ring_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_ring_inner_radius =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_ring_inner_radius', 373806689);

  void setEmissionRingInnerRadius(double innerRadius) {
    final arg0 = malloc<Double>()..value = innerRadius;
    try {
      ptrcallVoid(_mb_set_emission_ring_inner_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_inner_radius =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_ring_inner_radius', 1740695150);

  double getEmissionRingInnerRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_ring_inner_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_ring_cone_angle =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_ring_cone_angle', 373806689);

  void setEmissionRingConeAngle(double coneAngle) {
    final arg0 = malloc<Double>()..value = coneAngle;
    try {
      ptrcallVoid(_mb_set_emission_ring_cone_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_cone_angle =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_ring_cone_angle', 1740695150);

  double getEmissionRingConeAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_emission_ring_cone_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_shape_offset =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_shape_offset', 3460891852);

  void setEmissionShapeOffset(Vector3 emissionShapeOffset) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    emissionShapeOffset.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_emission_shape_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_shape_offset =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_shape_offset', 3360562783);

  Vector3 getEmissionShapeOffset() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_emission_shape_offset, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_emission_shape_scale =
      resolveMethodBind('ParticleProcessMaterial', 'set_emission_shape_scale', 3460891852);

  void setEmissionShapeScale(Vector3 emissionShapeScale) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    emissionShapeScale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_emission_shape_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_shape_scale =
      resolveMethodBind('ParticleProcessMaterial', 'get_emission_shape_scale', 3360562783);

  Vector3 getEmissionShapeScale() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_emission_shape_scale, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_turbulence_enabled =
      resolveMethodBind('ParticleProcessMaterial', 'get_turbulence_enabled', 36873697);

  bool getTurbulenceEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_turbulence_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_turbulence_enabled =
      resolveMethodBind('ParticleProcessMaterial', 'set_turbulence_enabled', 2586408642);

  void setTurbulenceEnabled(bool turbulenceEnabled) {
    final arg0 = malloc<Uint8>()..value = turbulenceEnabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_turbulence_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_turbulence_noise_strength =
      resolveMethodBind('ParticleProcessMaterial', 'get_turbulence_noise_strength', 1740695150);

  double getTurbulenceNoiseStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_turbulence_noise_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_turbulence_noise_strength =
      resolveMethodBind('ParticleProcessMaterial', 'set_turbulence_noise_strength', 373806689);

  void setTurbulenceNoiseStrength(double turbulenceNoiseStrength) {
    final arg0 = malloc<Double>()..value = turbulenceNoiseStrength;
    try {
      ptrcallVoid(_mb_set_turbulence_noise_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_turbulence_noise_scale =
      resolveMethodBind('ParticleProcessMaterial', 'get_turbulence_noise_scale', 1740695150);

  double getTurbulenceNoiseScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_turbulence_noise_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_turbulence_noise_scale =
      resolveMethodBind('ParticleProcessMaterial', 'set_turbulence_noise_scale', 373806689);

  void setTurbulenceNoiseScale(double turbulenceNoiseScale) {
    final arg0 = malloc<Double>()..value = turbulenceNoiseScale;
    try {
      ptrcallVoid(_mb_set_turbulence_noise_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_turbulence_noise_speed_random =
      resolveMethodBind('ParticleProcessMaterial', 'get_turbulence_noise_speed_random', 1740695150);

  double getTurbulenceNoiseSpeedRandom() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_turbulence_noise_speed_random, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_turbulence_noise_speed_random =
      resolveMethodBind('ParticleProcessMaterial', 'set_turbulence_noise_speed_random', 373806689);

  void setTurbulenceNoiseSpeedRandom(double turbulenceNoiseSpeedRandom) {
    final arg0 = malloc<Double>()..value = turbulenceNoiseSpeedRandom;
    try {
      ptrcallVoid(_mb_set_turbulence_noise_speed_random, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_turbulence_noise_speed =
      resolveMethodBind('ParticleProcessMaterial', 'get_turbulence_noise_speed', 3360562783);

  Vector3 getTurbulenceNoiseSpeed() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_turbulence_noise_speed, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_turbulence_noise_speed =
      resolveMethodBind('ParticleProcessMaterial', 'set_turbulence_noise_speed', 3460891852);

  void setTurbulenceNoiseSpeed(Vector3 turbulenceNoiseSpeed) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    turbulenceNoiseSpeed.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_turbulence_noise_speed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('ParticleProcessMaterial', 'get_gravity', 3360562783);

  Vector3 getGravity() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity =
      resolveMethodBind('ParticleProcessMaterial', 'set_gravity', 3460891852);

  void setGravity(Vector3 accelVec) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    accelVec.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_lifetime_randomness =
      resolveMethodBind('ParticleProcessMaterial', 'set_lifetime_randomness', 373806689);

  void setLifetimeRandomness(double randomness) {
    final arg0 = malloc<Double>()..value = randomness;
    try {
      ptrcallVoid(_mb_set_lifetime_randomness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lifetime_randomness =
      resolveMethodBind('ParticleProcessMaterial', 'get_lifetime_randomness', 1740695150);

  double getLifetimeRandomness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lifetime_randomness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_sub_emitter_mode =
      resolveMethodBind('ParticleProcessMaterial', 'get_sub_emitter_mode', 2399052877);

  int getSubEmitterMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sub_emitter_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sub_emitter_mode =
      resolveMethodBind('ParticleProcessMaterial', 'set_sub_emitter_mode', 2161806672);

  void setSubEmitterMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_sub_emitter_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sub_emitter_frequency =
      resolveMethodBind('ParticleProcessMaterial', 'get_sub_emitter_frequency', 1740695150);

  double getSubEmitterFrequency() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sub_emitter_frequency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sub_emitter_frequency =
      resolveMethodBind('ParticleProcessMaterial', 'set_sub_emitter_frequency', 373806689);

  void setSubEmitterFrequency(double hz) {
    final arg0 = malloc<Double>()..value = hz;
    try {
      ptrcallVoid(_mb_set_sub_emitter_frequency, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sub_emitter_amount_at_end =
      resolveMethodBind('ParticleProcessMaterial', 'get_sub_emitter_amount_at_end', 3905245786);

  int getSubEmitterAmountAtEnd() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sub_emitter_amount_at_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sub_emitter_amount_at_end =
      resolveMethodBind('ParticleProcessMaterial', 'set_sub_emitter_amount_at_end', 1286410249);

  void setSubEmitterAmountAtEnd(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_sub_emitter_amount_at_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sub_emitter_amount_at_collision =
      resolveMethodBind('ParticleProcessMaterial', 'get_sub_emitter_amount_at_collision', 3905245786);

  int getSubEmitterAmountAtCollision() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sub_emitter_amount_at_collision, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sub_emitter_amount_at_collision =
      resolveMethodBind('ParticleProcessMaterial', 'set_sub_emitter_amount_at_collision', 1286410249);

  void setSubEmitterAmountAtCollision(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_sub_emitter_amount_at_collision, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sub_emitter_amount_at_start =
      resolveMethodBind('ParticleProcessMaterial', 'get_sub_emitter_amount_at_start', 3905245786);

  int getSubEmitterAmountAtStart() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sub_emitter_amount_at_start, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sub_emitter_amount_at_start =
      resolveMethodBind('ParticleProcessMaterial', 'set_sub_emitter_amount_at_start', 1286410249);

  void setSubEmitterAmountAtStart(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_sub_emitter_amount_at_start, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sub_emitter_keep_velocity =
      resolveMethodBind('ParticleProcessMaterial', 'get_sub_emitter_keep_velocity', 36873697);

  bool getSubEmitterKeepVelocity() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_sub_emitter_keep_velocity, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sub_emitter_keep_velocity =
      resolveMethodBind('ParticleProcessMaterial', 'set_sub_emitter_keep_velocity', 2586408642);

  void setSubEmitterKeepVelocity(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sub_emitter_keep_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_attractor_interaction_enabled =
      resolveMethodBind('ParticleProcessMaterial', 'set_attractor_interaction_enabled', 2586408642);

  void setAttractorInteractionEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_attractor_interaction_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_attractor_interaction_enabled =
      resolveMethodBind('ParticleProcessMaterial', 'is_attractor_interaction_enabled', 36873697);

  bool isAttractorInteractionEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_attractor_interaction_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mode =
      resolveMethodBind('ParticleProcessMaterial', 'set_collision_mode', 653804659);

  void setCollisionMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_collision_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mode =
      resolveMethodBind('ParticleProcessMaterial', 'get_collision_mode', 139371864);

  int getCollisionMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_use_scale =
      resolveMethodBind('ParticleProcessMaterial', 'set_collision_use_scale', 2586408642);

  void setCollisionUseScale(bool radius) {
    final arg0 = malloc<Uint8>()..value = radius ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_use_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collision_using_scale =
      resolveMethodBind('ParticleProcessMaterial', 'is_collision_using_scale', 36873697);

  bool isCollisionUsingScale() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collision_using_scale, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_friction =
      resolveMethodBind('ParticleProcessMaterial', 'set_collision_friction', 373806689);

  void setCollisionFriction(double friction) {
    final arg0 = malloc<Double>()..value = friction;
    try {
      ptrcallVoid(_mb_set_collision_friction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_friction =
      resolveMethodBind('ParticleProcessMaterial', 'get_collision_friction', 1740695150);

  double getCollisionFriction() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_friction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_bounce =
      resolveMethodBind('ParticleProcessMaterial', 'set_collision_bounce', 373806689);

  void setCollisionBounce(double bounce) {
    final arg0 = malloc<Double>()..value = bounce;
    try {
      ptrcallVoid(_mb_set_collision_bounce, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_bounce =
      resolveMethodBind('ParticleProcessMaterial', 'get_collision_bounce', 1740695150);

  double getCollisionBounce() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_bounce, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_using_rotation_velocity_3d =
      resolveMethodBind('ParticleProcessMaterial', 'set_using_rotation_velocity_3d', 2586408642);

  void setUsingRotationVelocity3d(bool useRotationVelocity3d) {
    final arg0 = malloc<Uint8>()..value = useRotationVelocity3d ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_using_rotation_velocity_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_rotation_velocity_3d =
      resolveMethodBind('ParticleProcessMaterial', 'is_using_rotation_velocity_3d', 36873697);

  bool isUsingRotationVelocity3d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_rotation_velocity_3d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_velocity_3d_max =
      resolveMethodBind('ParticleProcessMaterial', 'set_rotation_velocity_3d_max', 3460891852);

  void setRotationVelocity3dMax(Vector3 rotationVelocity3dMax) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    rotationVelocity3dMax.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation_velocity_3d_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_velocity_3d_max =
      resolveMethodBind('ParticleProcessMaterial', 'get_rotation_velocity_3d_max', 3360562783);

  Vector3 getRotationVelocity3dMax() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation_velocity_3d_max, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_velocity_3d_min =
      resolveMethodBind('ParticleProcessMaterial', 'set_rotation_velocity_3d_min', 3460891852);

  void setRotationVelocity3dMin(Vector3 rotationVelocity3dMin) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    rotationVelocity3dMin.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation_velocity_3d_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_velocity_3d_min =
      resolveMethodBind('ParticleProcessMaterial', 'get_rotation_velocity_3d_min', 3360562783);

  Vector3 getRotationVelocity3dMin() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation_velocity_3d_min, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_velocity_3d_curve =
      resolveMethodBind('ParticleProcessMaterial', 'set_rotation_velocity_3d_curve', 4051416890);

  void setRotationVelocity3dCurve(Texture2D rotationVelocity3dCurve) {
    final arg0 = malloc<Pointer<Void>>()..value = rotationVelocity3dCurve.nativePtr;
    try {
      ptrcallVoid(_mb_set_rotation_velocity_3d_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_velocity_3d_curve =
      resolveMethodBind('ParticleProcessMaterial', 'get_rotation_velocity_3d_curve', 3635182373);

  Texture2D? getRotationVelocity3dCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_rotation_velocity_3d_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
