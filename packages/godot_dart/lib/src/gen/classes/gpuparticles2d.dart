// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GPUParticles2D extends Node2D {
  GPUParticles2D(super.nativePtr);

  /// Constructs a brand-new engine-owned GPUParticles2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory GPUParticles2D.create() {
    return GPUParticles2D(resolveClassConstructor('GPUParticles2D'));
  }

  static final Pointer<Void> _mb_set_emitting =
      resolveMethodBind('GPUParticles2D', 'set_emitting', 2586408642);

  void setEmitting(bool emitting) {
    final arg0 = malloc<Uint8>()..value = emitting ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emitting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_amount =
      resolveMethodBind('GPUParticles2D', 'set_amount', 1286410249);

  void setAmount(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_amount, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_lifetime =
      resolveMethodBind('GPUParticles2D', 'set_lifetime', 373806689);

  void setLifetime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_lifetime, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_one_shot =
      resolveMethodBind('GPUParticles2D', 'set_one_shot', 2586408642);

  void setOneShot(bool secs) {
    final arg0 = malloc<Uint8>()..value = secs ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_shot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pre_process_time =
      resolveMethodBind('GPUParticles2D', 'set_pre_process_time', 373806689);

  void setPreProcessTime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_pre_process_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_explosiveness_ratio =
      resolveMethodBind('GPUParticles2D', 'set_explosiveness_ratio', 373806689);

  void setExplosivenessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_explosiveness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_randomness_ratio =
      resolveMethodBind('GPUParticles2D', 'set_randomness_ratio', 373806689);

  void setRandomnessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_randomness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visibility_rect =
      resolveMethodBind('GPUParticles2D', 'set_visibility_rect', 2046264180);

  void setVisibilityRect(Rect2 visibilityRect) {
    final arg0 = malloc<Uint8>(Rect2.nativeSize);
    visibilityRect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_visibility_rect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_local_coordinates =
      resolveMethodBind('GPUParticles2D', 'set_use_local_coordinates', 2586408642);

  void setUseLocalCoordinates(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_local_coordinates, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fixed_fps =
      resolveMethodBind('GPUParticles2D', 'set_fixed_fps', 1286410249);

  void setFixedFps(int fps) {
    final arg0 = malloc<Int64>()..value = fps;
    try {
      ptrcallVoid(_mb_set_fixed_fps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fractional_delta =
      resolveMethodBind('GPUParticles2D', 'set_fractional_delta', 2586408642);

  void setFractionalDelta(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fractional_delta, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_interpolate =
      resolveMethodBind('GPUParticles2D', 'set_interpolate', 2586408642);

  void setInterpolate(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_interpolate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_process_material =
      resolveMethodBind('GPUParticles2D', 'set_process_material', 2757459619);

  void setProcessMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_process_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('GPUParticles2D', 'set_speed_scale', 373806689);

  void setSpeedScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_base_size =
      resolveMethodBind('GPUParticles2D', 'set_collision_base_size', 373806689);

  void setCollisionBaseSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_collision_base_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_interp_to_end =
      resolveMethodBind('GPUParticles2D', 'set_interp_to_end', 373806689);

  void setInterpToEnd(double interp) {
    final arg0 = malloc<Double>()..value = interp;
    try {
      ptrcallVoid(_mb_set_interp_to_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_request_particles_process =
      resolveMethodBind('GPUParticles2D', 'request_particles_process', 2019720106);

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
      resolveMethodBind('GPUParticles2D', 'is_emitting', 36873697);

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
      resolveMethodBind('GPUParticles2D', 'get_amount', 3905245786);

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
      resolveMethodBind('GPUParticles2D', 'get_lifetime', 1740695150);

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
      resolveMethodBind('GPUParticles2D', 'get_one_shot', 36873697);

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
      resolveMethodBind('GPUParticles2D', 'get_pre_process_time', 1740695150);

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
      resolveMethodBind('GPUParticles2D', 'get_explosiveness_ratio', 1740695150);

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
      resolveMethodBind('GPUParticles2D', 'get_randomness_ratio', 1740695150);

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

  static final Pointer<Void> _mb_get_visibility_rect =
      resolveMethodBind('GPUParticles2D', 'get_visibility_rect', 1639390495);

  Rect2 getVisibilityRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_visibility_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_use_local_coordinates =
      resolveMethodBind('GPUParticles2D', 'get_use_local_coordinates', 36873697);

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
      resolveMethodBind('GPUParticles2D', 'get_fixed_fps', 3905245786);

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
      resolveMethodBind('GPUParticles2D', 'get_fractional_delta', 36873697);

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

  static final Pointer<Void> _mb_get_interpolate =
      resolveMethodBind('GPUParticles2D', 'get_interpolate', 36873697);

  bool getInterpolate() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_interpolate, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_process_material =
      resolveMethodBind('GPUParticles2D', 'get_process_material', 5934680);

  Material? getProcessMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_process_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_speed_scale =
      resolveMethodBind('GPUParticles2D', 'get_speed_scale', 1740695150);

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

  static final Pointer<Void> _mb_get_collision_base_size =
      resolveMethodBind('GPUParticles2D', 'get_collision_base_size', 1740695150);

  double getCollisionBaseSize() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_base_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_interp_to_end =
      resolveMethodBind('GPUParticles2D', 'get_interp_to_end', 1740695150);

  double getInterpToEnd() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_interp_to_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_draw_order =
      resolveMethodBind('GPUParticles2D', 'set_draw_order', 1939677959);

  void setDrawOrder(int order) {
    final arg0 = malloc<Int64>()..value = order;
    try {
      ptrcallVoid(_mb_set_draw_order, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_draw_order =
      resolveMethodBind('GPUParticles2D', 'get_draw_order', 941479095);

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
      resolveMethodBind('GPUParticles2D', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('GPUParticles2D', 'get_texture', 3635182373);

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

  static final Pointer<Void> _mb_capture_rect =
      resolveMethodBind('GPUParticles2D', 'capture_rect', 1639390495);

  Rect2 captureRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_capture_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_restart =
      resolveMethodBind('GPUParticles2D', 'restart', 107499316);

  void restart(bool keepSeed) {
    final arg0 = malloc<Uint8>()..value = keepSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_restart, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_sub_emitter(): an argument type is unsupported.
  // Skipped get_sub_emitter(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_emit_particle =
      resolveMethodBind('GPUParticles2D', 'emit_particle', 2179202058);

  void emitParticle(Transform2D xform, Vector2 velocity, Color color, Color custom, int flags) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    xform.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2.nativeSize);
    velocity.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    final arg3 = malloc<Uint8>(Color.nativeSize);
    custom.writeTo(arg3, 0);
    final arg4 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_emit_particle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_set_trail_enabled =
      resolveMethodBind('GPUParticles2D', 'set_trail_enabled', 2586408642);

  void setTrailEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_trail_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_trail_lifetime =
      resolveMethodBind('GPUParticles2D', 'set_trail_lifetime', 373806689);

  void setTrailLifetime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_trail_lifetime, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_trail_enabled =
      resolveMethodBind('GPUParticles2D', 'is_trail_enabled', 36873697);

  bool isTrailEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_trail_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_trail_lifetime =
      resolveMethodBind('GPUParticles2D', 'get_trail_lifetime', 1740695150);

  double getTrailLifetime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_trail_lifetime, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_trail_sections =
      resolveMethodBind('GPUParticles2D', 'set_trail_sections', 1286410249);

  void setTrailSections(int sections) {
    final arg0 = malloc<Int64>()..value = sections;
    try {
      ptrcallVoid(_mb_set_trail_sections, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_trail_sections =
      resolveMethodBind('GPUParticles2D', 'get_trail_sections', 3905245786);

  int getTrailSections() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_trail_sections, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_trail_section_subdivisions =
      resolveMethodBind('GPUParticles2D', 'set_trail_section_subdivisions', 1286410249);

  void setTrailSectionSubdivisions(int subdivisions) {
    final arg0 = malloc<Int64>()..value = subdivisions;
    try {
      ptrcallVoid(_mb_set_trail_section_subdivisions, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_trail_section_subdivisions =
      resolveMethodBind('GPUParticles2D', 'get_trail_section_subdivisions', 3905245786);

  int getTrailSectionSubdivisions() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_trail_section_subdivisions, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_convert_from_particles =
      resolveMethodBind('GPUParticles2D', 'convert_from_particles', 1078189570);

  void convertFromParticles(Node particles) {
    final arg0 = malloc<Pointer<Void>>()..value = particles.nativePtr;
    try {
      ptrcallVoid(_mb_convert_from_particles, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_amount_ratio =
      resolveMethodBind('GPUParticles2D', 'set_amount_ratio', 373806689);

  void setAmountRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_amount_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_amount_ratio =
      resolveMethodBind('GPUParticles2D', 'get_amount_ratio', 1740695150);

  double getAmountRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_amount_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_fixed_seed =
      resolveMethodBind('GPUParticles2D', 'set_use_fixed_seed', 2586408642);

  void setUseFixedSeed(bool useFixedSeed) {
    final arg0 = malloc<Uint8>()..value = useFixedSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_fixed_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_fixed_seed =
      resolveMethodBind('GPUParticles2D', 'get_use_fixed_seed', 36873697);

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
      resolveMethodBind('GPUParticles2D', 'set_seed', 1286410249);

  void setSeed(int seed) {
    final arg0 = malloc<Int64>()..value = seed;
    try {
      ptrcallVoid(_mb_set_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seed =
      resolveMethodBind('GPUParticles2D', 'get_seed', 3905245786);

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

}
