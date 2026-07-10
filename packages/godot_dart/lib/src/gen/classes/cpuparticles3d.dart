// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CPUParticles3D extends GeometryInstance3D {
  CPUParticles3D(super.nativePtr);

  static final Pointer<Void> _mb_set_emitting =
      resolveMethodBind('CPUParticles3D', 'set_emitting', 2586408642);

  void setEmitting(bool emitting) {
    final arg0 = malloc<Uint8>()..value = emitting ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emitting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_amount =
      resolveMethodBind('CPUParticles3D', 'set_amount', 1286410249);

  void setAmount(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_amount, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_lifetime =
      resolveMethodBind('CPUParticles3D', 'set_lifetime', 373806689);

  void setLifetime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_lifetime, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_one_shot =
      resolveMethodBind('CPUParticles3D', 'set_one_shot', 2586408642);

  void setOneShot(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_shot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pre_process_time =
      resolveMethodBind('CPUParticles3D', 'set_pre_process_time', 373806689);

  void setPreProcessTime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_pre_process_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_explosiveness_ratio =
      resolveMethodBind('CPUParticles3D', 'set_explosiveness_ratio', 373806689);

  void setExplosivenessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_explosiveness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_randomness_ratio =
      resolveMethodBind('CPUParticles3D', 'set_randomness_ratio', 373806689);

  void setRandomnessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_randomness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visibility_aabb =
      resolveMethodBind('CPUParticles3D', 'set_visibility_aabb', 259215842);

  void setVisibilityAabb(AABB aabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    aabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_visibility_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_lifetime_randomness =
      resolveMethodBind('CPUParticles3D', 'set_lifetime_randomness', 373806689);

  void setLifetimeRandomness(double random) {
    final arg0 = malloc<Double>()..value = random;
    try {
      ptrcallVoid(_mb_set_lifetime_randomness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_local_coordinates =
      resolveMethodBind('CPUParticles3D', 'set_use_local_coordinates', 2586408642);

  void setUseLocalCoordinates(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_local_coordinates, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fixed_fps =
      resolveMethodBind('CPUParticles3D', 'set_fixed_fps', 1286410249);

  void setFixedFps(int fps) {
    final arg0 = malloc<Int64>()..value = fps;
    try {
      ptrcallVoid(_mb_set_fixed_fps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fractional_delta =
      resolveMethodBind('CPUParticles3D', 'set_fractional_delta', 2586408642);

  void setFractionalDelta(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fractional_delta, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('CPUParticles3D', 'set_speed_scale', 373806689);

  void setSpeedScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_emitting =
      resolveMethodBind('CPUParticles3D', 'is_emitting', 36873697);

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
      resolveMethodBind('CPUParticles3D', 'get_amount', 3905245786);

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
      resolveMethodBind('CPUParticles3D', 'get_lifetime', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'get_one_shot', 36873697);

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
      resolveMethodBind('CPUParticles3D', 'get_pre_process_time', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'get_explosiveness_ratio', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'get_randomness_ratio', 1740695150);

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

  static final Pointer<Void> _mb_get_visibility_aabb =
      resolveMethodBind('CPUParticles3D', 'get_visibility_aabb', 1068685055);

  AABB getVisibilityAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_visibility_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_lifetime_randomness =
      resolveMethodBind('CPUParticles3D', 'get_lifetime_randomness', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'get_use_local_coordinates', 36873697);

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
      resolveMethodBind('CPUParticles3D', 'get_fixed_fps', 3905245786);

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
      resolveMethodBind('CPUParticles3D', 'get_fractional_delta', 36873697);

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
      resolveMethodBind('CPUParticles3D', 'get_speed_scale', 1740695150);

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

  static final Pointer<Void> _mb_set_draw_order =
      resolveMethodBind('CPUParticles3D', 'set_draw_order', 1427401774);

  void setDrawOrder(int order) {
    final arg0 = malloc<Int64>()..value = order;
    try {
      ptrcallVoid(_mb_set_draw_order, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_draw_order =
      resolveMethodBind('CPUParticles3D', 'get_draw_order', 1321900776);

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

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('CPUParticles3D', 'set_mesh', 194775623);

  void setMesh(Mesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('CPUParticles3D', 'get_mesh', 1808005922);

  Mesh? getMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Mesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_fixed_seed =
      resolveMethodBind('CPUParticles3D', 'set_use_fixed_seed', 2586408642);

  void setUseFixedSeed(bool useFixedSeed) {
    final arg0 = malloc<Uint8>()..value = useFixedSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_fixed_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_fixed_seed =
      resolveMethodBind('CPUParticles3D', 'get_use_fixed_seed', 36873697);

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
      resolveMethodBind('CPUParticles3D', 'set_seed', 1286410249);

  void setSeed(int seed) {
    final arg0 = malloc<Int64>()..value = seed;
    try {
      ptrcallVoid(_mb_set_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seed =
      resolveMethodBind('CPUParticles3D', 'get_seed', 3905245786);

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

  static final Pointer<Void> _mb_restart =
      resolveMethodBind('CPUParticles3D', 'restart', 107499316);

  void restart(bool keepSeed) {
    final arg0 = malloc<Uint8>()..value = keepSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_restart, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_request_particles_process =
      resolveMethodBind('CPUParticles3D', 'request_particles_process', 66938510);

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

  static final Pointer<Void> _mb_capture_aabb =
      resolveMethodBind('CPUParticles3D', 'capture_aabb', 1068685055);

  AABB captureAabb() {
    try {
      final ret = malloc<Uint8>(AABB.nativeSize);
      try {
        ptrcallWithReturn(_mb_capture_aabb, nativePtr, [], ret.cast());
        return AABB.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_direction =
      resolveMethodBind('CPUParticles3D', 'set_direction', 3460891852);

  void setDirection(Vector3 direction) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    direction.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_direction =
      resolveMethodBind('CPUParticles3D', 'get_direction', 3360562783);

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

  static final Pointer<Void> _mb_set_spread =
      resolveMethodBind('CPUParticles3D', 'set_spread', 373806689);

  void setSpread(double degrees) {
    final arg0 = malloc<Double>()..value = degrees;
    try {
      ptrcallVoid(_mb_set_spread, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_spread =
      resolveMethodBind('CPUParticles3D', 'get_spread', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'set_flatness', 373806689);

  void setFlatness(double amount) {
    final arg0 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_flatness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flatness =
      resolveMethodBind('CPUParticles3D', 'get_flatness', 1740695150);

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

  static final Pointer<Void> _mb_set_param_min =
      resolveMethodBind('CPUParticles3D', 'set_param_min', 557936109);

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
      resolveMethodBind('CPUParticles3D', 'get_param_min', 597646162);

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
      resolveMethodBind('CPUParticles3D', 'set_param_max', 557936109);

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
      resolveMethodBind('CPUParticles3D', 'get_param_max', 597646162);

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
      resolveMethodBind('CPUParticles3D', 'set_param_curve', 4044142537);

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
      resolveMethodBind('CPUParticles3D', 'get_param_curve', 4132790277);

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
      resolveMethodBind('CPUParticles3D', 'set_color', 2920490490);

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
      resolveMethodBind('CPUParticles3D', 'get_color', 3444240500);

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
      resolveMethodBind('CPUParticles3D', 'set_color_ramp', 2756054477);

  void setColorRamp(Gradient ramp) {
    final arg0 = malloc<Pointer<Void>>()..value = ramp.nativePtr;
    try {
      ptrcallVoid(_mb_set_color_ramp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_ramp =
      resolveMethodBind('CPUParticles3D', 'get_color_ramp', 132272999);

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
      resolveMethodBind('CPUParticles3D', 'set_color_initial_ramp', 2756054477);

  void setColorInitialRamp(Gradient ramp) {
    final arg0 = malloc<Pointer<Void>>()..value = ramp.nativePtr;
    try {
      ptrcallVoid(_mb_set_color_initial_ramp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_initial_ramp =
      resolveMethodBind('CPUParticles3D', 'get_color_initial_ramp', 132272999);

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
      resolveMethodBind('CPUParticles3D', 'set_particle_flag', 3515406498);

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
      resolveMethodBind('CPUParticles3D', 'get_particle_flag', 2845201987);

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
      resolveMethodBind('CPUParticles3D', 'set_emission_shape', 491823814);

  void setEmissionShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_emission_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_shape =
      resolveMethodBind('CPUParticles3D', 'get_emission_shape', 2961454842);

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
      resolveMethodBind('CPUParticles3D', 'set_emission_sphere_radius', 373806689);

  void setEmissionSphereRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_emission_sphere_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_sphere_radius =
      resolveMethodBind('CPUParticles3D', 'get_emission_sphere_radius', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'set_emission_box_extents', 3460891852);

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
      resolveMethodBind('CPUParticles3D', 'get_emission_box_extents', 3360562783);

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

  // Skipped set_emission_points(): an argument type is unsupported.
  // Skipped get_emission_points(): unsupported return type "PackedVector3Array".
  // Skipped set_emission_normals(): an argument type is unsupported.
  // Skipped get_emission_normals(): unsupported return type "PackedVector3Array".
  // Skipped set_emission_colors(): an argument type is unsupported.
  // Skipped get_emission_colors(): unsupported return type "PackedColorArray".
  static final Pointer<Void> _mb_set_emission_ring_axis =
      resolveMethodBind('CPUParticles3D', 'set_emission_ring_axis', 3460891852);

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
      resolveMethodBind('CPUParticles3D', 'get_emission_ring_axis', 3360562783);

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
      resolveMethodBind('CPUParticles3D', 'set_emission_ring_height', 373806689);

  void setEmissionRingHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_emission_ring_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_height =
      resolveMethodBind('CPUParticles3D', 'get_emission_ring_height', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'set_emission_ring_radius', 373806689);

  void setEmissionRingRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_emission_ring_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_radius =
      resolveMethodBind('CPUParticles3D', 'get_emission_ring_radius', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'set_emission_ring_inner_radius', 373806689);

  void setEmissionRingInnerRadius(double innerRadius) {
    final arg0 = malloc<Double>()..value = innerRadius;
    try {
      ptrcallVoid(_mb_set_emission_ring_inner_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_inner_radius =
      resolveMethodBind('CPUParticles3D', 'get_emission_ring_inner_radius', 1740695150);

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
      resolveMethodBind('CPUParticles3D', 'set_emission_ring_cone_angle', 373806689);

  void setEmissionRingConeAngle(double coneAngle) {
    final arg0 = malloc<Double>()..value = coneAngle;
    try {
      ptrcallVoid(_mb_set_emission_ring_cone_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_emission_ring_cone_angle =
      resolveMethodBind('CPUParticles3D', 'get_emission_ring_cone_angle', 1740695150);

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

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('CPUParticles3D', 'get_gravity', 3360562783);

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
      resolveMethodBind('CPUParticles3D', 'set_gravity', 3460891852);

  void setGravity(Vector3 accelVec) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    accelVec.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_split_scale =
      resolveMethodBind('CPUParticles3D', 'get_split_scale', 2240911060);

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
      resolveMethodBind('CPUParticles3D', 'set_split_scale', 2586408642);

  void setSplitScale(bool splitScale) {
    final arg0 = malloc<Uint8>()..value = splitScale ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_split_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_curve_x =
      resolveMethodBind('CPUParticles3D', 'get_scale_curve_x', 2460114913);

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
      resolveMethodBind('CPUParticles3D', 'set_scale_curve_x', 270443179);

  void setScaleCurveX(Curve scaleCurve) {
    final arg0 = malloc<Pointer<Void>>()..value = scaleCurve.nativePtr;
    try {
      ptrcallVoid(_mb_set_scale_curve_x, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_curve_y =
      resolveMethodBind('CPUParticles3D', 'get_scale_curve_y', 2460114913);

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
      resolveMethodBind('CPUParticles3D', 'set_scale_curve_y', 270443179);

  void setScaleCurveY(Curve scaleCurve) {
    final arg0 = malloc<Pointer<Void>>()..value = scaleCurve.nativePtr;
    try {
      ptrcallVoid(_mb_set_scale_curve_y, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale_curve_z =
      resolveMethodBind('CPUParticles3D', 'get_scale_curve_z', 2460114913);

  Curve? getScaleCurveZ() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_scale_curve_z, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale_curve_z =
      resolveMethodBind('CPUParticles3D', 'set_scale_curve_z', 270443179);

  void setScaleCurveZ(Curve scaleCurve) {
    final arg0 = malloc<Pointer<Void>>()..value = scaleCurve.nativePtr;
    try {
      ptrcallVoid(_mb_set_scale_curve_z, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_convert_from_particles =
      resolveMethodBind('CPUParticles3D', 'convert_from_particles', 1078189570);

  void convertFromParticles(Node particles) {
    final arg0 = malloc<Pointer<Void>>()..value = particles.nativePtr;
    try {
      ptrcallVoid(_mb_convert_from_particles, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
