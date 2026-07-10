// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CPUParticles2D extends Node2D {
  CPUParticles2D(super.nativePtr);

  /// Constructs a brand-new engine-owned CPUParticles2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory CPUParticles2D.create() {
    return CPUParticles2D(resolveClassConstructor('CPUParticles2D'));
  }

  static final Pointer<Void> _mb_set_emitting =
      resolveMethodBind('CPUParticles2D', 'set_emitting', 2586408642);

  void setEmitting(bool emitting) {
    final arg0 = malloc<Uint8>()..value = emitting ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emitting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_amount =
      resolveMethodBind('CPUParticles2D', 'set_amount', 1286410249);

  void setAmount(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_amount, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_lifetime =
      resolveMethodBind('CPUParticles2D', 'set_lifetime', 373806689);

  void setLifetime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_lifetime, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_one_shot =
      resolveMethodBind('CPUParticles2D', 'set_one_shot', 2586408642);

  void setOneShot(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_shot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pre_process_time =
      resolveMethodBind('CPUParticles2D', 'set_pre_process_time', 373806689);

  void setPreProcessTime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_pre_process_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_explosiveness_ratio =
      resolveMethodBind('CPUParticles2D', 'set_explosiveness_ratio', 373806689);

  void setExplosivenessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_explosiveness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_randomness_ratio =
      resolveMethodBind('CPUParticles2D', 'set_randomness_ratio', 373806689);

  void setRandomnessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_randomness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_lifetime_randomness =
      resolveMethodBind('CPUParticles2D', 'set_lifetime_randomness', 373806689);

  void setLifetimeRandomness(double random) {
    final arg0 = malloc<Double>()..value = random;
    try {
      ptrcallVoid(_mb_set_lifetime_randomness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_local_coordinates =
      resolveMethodBind('CPUParticles2D', 'set_use_local_coordinates', 2586408642);

  void setUseLocalCoordinates(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_local_coordinates, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fixed_fps =
      resolveMethodBind('CPUParticles2D', 'set_fixed_fps', 1286410249);

  void setFixedFps(int fps) {
    final arg0 = malloc<Int64>()..value = fps;
    try {
      ptrcallVoid(_mb_set_fixed_fps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fractional_delta =
      resolveMethodBind('CPUParticles2D', 'set_fractional_delta', 2586408642);

  void setFractionalDelta(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fractional_delta, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('CPUParticles2D', 'set_speed_scale', 373806689);

  void setSpeedScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_request_particles_process =
      resolveMethodBind('CPUParticles2D', 'request_particles_process', 66938510);

  void requestParticlesProcess(double processTime, double processTimeResidual) {
    final arg0 = malloc<Double>()..value = processTime;
    final arg1 = malloc<Double>()..value = processTimeResidual;
    try {
      ptrcallVoid(_mb_request_particles_process, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_emitting =
      resolveMethodBind('CPUParticles2D', 'is_emitting', 36873697);

  bool isEmitting() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_emitting, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_amount =
      resolveMethodBind('CPUParticles2D', 'get_amount', 3905245786);

  int getAmount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_amount, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_lifetime =
      resolveMethodBind('CPUParticles2D', 'get_lifetime', 1740695150);

  double getLifetime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lifetime, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_one_shot =
      resolveMethodBind('CPUParticles2D', 'get_one_shot', 36873697);

  bool getOneShot() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_one_shot, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_pre_process_time =
      resolveMethodBind('CPUParticles2D', 'get_pre_process_time', 1740695150);

  double getPreProcessTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_pre_process_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_explosiveness_ratio =
      resolveMethodBind('CPUParticles2D', 'get_explosiveness_ratio', 1740695150);

  double getExplosivenessRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_explosiveness_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_randomness_ratio =
      resolveMethodBind('CPUParticles2D', 'get_randomness_ratio', 1740695150);

  double getRandomnessRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_randomness_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_lifetime_randomness =
      resolveMethodBind('CPUParticles2D', 'get_lifetime_randomness', 1740695150);

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

  static final Pointer<Void> _mb_get_use_local_coordinates =
      resolveMethodBind('CPUParticles2D', 'get_use_local_coordinates', 36873697);

  bool getUseLocalCoordinates() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_local_coordinates, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fixed_fps =
      resolveMethodBind('CPUParticles2D', 'get_fixed_fps', 3905245786);

  int getFixedFps() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fixed_fps, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fractional_delta =
      resolveMethodBind('CPUParticles2D', 'get_fractional_delta', 36873697);

  bool getFractionalDelta() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_fractional_delta, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_speed_scale =
      resolveMethodBind('CPUParticles2D', 'get_speed_scale', 1740695150);

  double getSpeedScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_speed_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_fixed_seed =
      resolveMethodBind('CPUParticles2D', 'set_use_fixed_seed', 2586408642);

  void setUseFixedSeed(bool useFixedSeed) {
    final arg0 = malloc<Uint8>()..value = useFixedSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_fixed_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_fixed_seed =
      resolveMethodBind('CPUParticles2D', 'get_use_fixed_seed', 36873697);

  bool getUseFixedSeed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_fixed_seed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_seed =
      resolveMethodBind('CPUParticles2D', 'set_seed', 1286410249);

  void setSeed(int seed) {
    final arg0 = malloc<Int64>()..value = seed;
    try {
      ptrcallVoid(_mb_set_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seed =
      resolveMethodBind('CPUParticles2D', 'get_seed', 3905245786);

  int getSeed() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_seed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_order =
      resolveMethodBind('CPUParticles2D', 'set_draw_order', 4183193490);

  void setDrawOrder(int order) {
    final arg0 = malloc<Int64>()..value = order;
    try {
      ptrcallVoid(_mb_set_draw_order, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_draw_order =
      resolveMethodBind('CPUParticles2D', 'get_draw_order', 1668655735);

  int getDrawOrder() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_draw_order, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('CPUParticles2D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('CPUParticles2D', 'get_texture', 3635182373);

  Texture2D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_restart =
      resolveMethodBind('CPUParticles2D', 'restart', 107499316);

  void restart(bool keepSeed) {
    final arg0 = malloc<Uint8>()..value = keepSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_restart, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_direction =
      resolveMethodBind('CPUParticles2D', 'set_direction', 743155724);

  void setDirection(Vector2 direction) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    direction.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_direction =
      resolveMethodBind('CPUParticles2D', 'get_direction', 3341600327);

  Vector2 getDirection() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_direction, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_spread =
      resolveMethodBind('CPUParticles2D', 'set_spread', 373806689);

  void setSpread(double spread) {
    final arg0 = malloc<Double>()..value = spread;
    try {
      ptrcallVoid(_mb_set_spread, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spread =
      resolveMethodBind('CPUParticles2D', 'get_spread', 1740695150);

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

  static final Pointer<Void> _mb_set_param_min =
      resolveMethodBind('CPUParticles2D', 'set_param_min', 3320615296);

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
      resolveMethodBind('CPUParticles2D', 'get_param_min', 2038050600);

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
      resolveMethodBind('CPUParticles2D', 'set_param_max', 3320615296);

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
      resolveMethodBind('CPUParticles2D', 'get_param_max', 2038050600);

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

  static final Pointer<Void> _mb_set_param_curve =
      resolveMethodBind('CPUParticles2D', 'set_param_curve', 2959350143);

  void setParamCurve(int param, Curve curve) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_param_curve, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param_curve =
      resolveMethodBind('CPUParticles2D', 'get_param_curve', 2603158474);

  Curve? getParamCurve(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_param_curve, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('CPUParticles2D', 'set_color', 2920490490);

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
      resolveMethodBind('CPUParticles2D', 'get_color', 3444240500);

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

  static final Pointer<Void> _mb_set_color_ramp =
      resolveMethodBind('CPUParticles2D', 'set_color_ramp', 2756054477);

  void setColorRamp(Gradient ramp) {
    final arg0 = malloc<Pointer<Void>>()..value = ramp.nativePtr;
    try {
      ptrcallVoid(_mb_set_color_ramp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_ramp =
      resolveMethodBind('CPUParticles2D', 'get_color_ramp', 132272999);

  Gradient? getColorRamp() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_color_ramp, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Gradient(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color_initial_ramp =
      resolveMethodBind('CPUParticles2D', 'set_color_initial_ramp', 2756054477);

  void setColorInitialRamp(Gradient ramp) {
    final arg0 = malloc<Pointer<Void>>()..value = ramp.nativePtr;
    try {
      ptrcallVoid(_mb_set_color_initial_ramp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_initial_ramp =
      resolveMethodBind('CPUParticles2D', 'get_color_initial_ramp', 132272999);

  Gradient? getColorInitialRamp() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_color_initial_ramp, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Gradient(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particle_flag =
      resolveMethodBind('CPUParticles2D', 'set_particle_flag', 4178137949);

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
      resolveMethodBind('CPUParticles2D', 'get_particle_flag', 2829976507);

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

  static final Pointer<Void> _mb_set_emission_shape =
      resolveMethodBind('CPUParticles2D', 'set_emission_shape', 393763892);

  void setEmissionShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_emission_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_shape =
      resolveMethodBind('CPUParticles2D', 'get_emission_shape', 1740246024);

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
      resolveMethodBind('CPUParticles2D', 'set_emission_sphere_radius', 373806689);

  void setEmissionSphereRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_emission_sphere_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_sphere_radius =
      resolveMethodBind('CPUParticles2D', 'get_emission_sphere_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_emission_rect_extents =
      resolveMethodBind('CPUParticles2D', 'set_emission_rect_extents', 743155724);

  void setEmissionRectExtents(Vector2 extents) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    extents.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_emission_rect_extents, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_rect_extents =
      resolveMethodBind('CPUParticles2D', 'get_emission_rect_extents', 3341600327);

  Vector2 getEmissionRectExtents() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_emission_rect_extents, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_emission_points(): an argument type is unsupported.
  // Skipped get_emission_points(): unsupported return type "PackedVector2Array".
  // Skipped set_emission_normals(): an argument type is unsupported.
  // Skipped get_emission_normals(): unsupported return type "PackedVector2Array".
  // Skipped set_emission_colors(): an argument type is unsupported.
  // Skipped get_emission_colors(): unsupported return type "PackedColorArray".
  static final Pointer<Void> _mb_set_emission_ring_inner_radius =
      resolveMethodBind('CPUParticles2D', 'set_emission_ring_inner_radius', 373806689);

  void setEmissionRingInnerRadius(double innerRadius) {
    final arg0 = malloc<Double>()..value = innerRadius;
    try {
      ptrcallVoid(_mb_set_emission_ring_inner_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_inner_radius =
      resolveMethodBind('CPUParticles2D', 'get_emission_ring_inner_radius', 1740695150);

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

  static final Pointer<Void> _mb_set_emission_ring_radius =
      resolveMethodBind('CPUParticles2D', 'set_emission_ring_radius', 373806689);

  void setEmissionRingRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_emission_ring_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_radius =
      resolveMethodBind('CPUParticles2D', 'get_emission_ring_radius', 1740695150);

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

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('CPUParticles2D', 'get_gravity', 3341600327);

  Vector2 getGravity() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gravity =
      resolveMethodBind('CPUParticles2D', 'set_gravity', 743155724);

  void setGravity(Vector2 accelVec) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    accelVec.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_split_scale =
      resolveMethodBind('CPUParticles2D', 'get_split_scale', 2240911060);

  bool getSplitScale() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_split_scale, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_split_scale =
      resolveMethodBind('CPUParticles2D', 'set_split_scale', 2586408642);

  void setSplitScale(bool splitScale) {
    final arg0 = malloc<Uint8>()..value = splitScale ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_split_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_curve_x =
      resolveMethodBind('CPUParticles2D', 'get_scale_curve_x', 2460114913);

  Curve? getScaleCurveX() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_scale_curve_x, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale_curve_x =
      resolveMethodBind('CPUParticles2D', 'set_scale_curve_x', 270443179);

  void setScaleCurveX(Curve scaleCurve) {
    final arg0 = malloc<Pointer<Void>>()..value = scaleCurve.nativePtr;
    try {
      ptrcallVoid(_mb_set_scale_curve_x, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_curve_y =
      resolveMethodBind('CPUParticles2D', 'get_scale_curve_y', 2460114913);

  Curve? getScaleCurveY() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_scale_curve_y, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale_curve_y =
      resolveMethodBind('CPUParticles2D', 'set_scale_curve_y', 270443179);

  void setScaleCurveY(Curve scaleCurve) {
    final arg0 = malloc<Pointer<Void>>()..value = scaleCurve.nativePtr;
    try {
      ptrcallVoid(_mb_set_scale_curve_y, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_convert_from_particles =
      resolveMethodBind('CPUParticles2D', 'convert_from_particles', 1078189570);

  void convertFromParticles(Node particles) {
    final arg0 = malloc<Pointer<Void>>()..value = particles.nativePtr;
    try {
      ptrcallVoid(_mb_convert_from_particles, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
