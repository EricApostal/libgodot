// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GPUParticles3D extends GeometryInstance3D {
  GPUParticles3D(super.nativePtr);

  /// Constructs a brand-new engine-owned GPUParticles3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory GPUParticles3D.create() {
    return GPUParticles3D(resolveClassConstructor('GPUParticles3D'));
  }

  static final Pointer<Void> _mb_set_emitting =
      resolveMethodBind('GPUParticles3D', 'set_emitting', 2586408642);

  void setEmitting(bool emitting) {
    final arg0 = malloc<Uint8>()..value = emitting ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_emitting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_amount =
      resolveMethodBind('GPUParticles3D', 'set_amount', 1286410249);

  void setAmount(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_amount, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_lifetime =
      resolveMethodBind('GPUParticles3D', 'set_lifetime', 373806689);

  void setLifetime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_lifetime, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_one_shot =
      resolveMethodBind('GPUParticles3D', 'set_one_shot', 2586408642);

  void setOneShot(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_one_shot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pre_process_time =
      resolveMethodBind('GPUParticles3D', 'set_pre_process_time', 373806689);

  void setPreProcessTime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_pre_process_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_explosiveness_ratio =
      resolveMethodBind('GPUParticles3D', 'set_explosiveness_ratio', 373806689);

  void setExplosivenessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_explosiveness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_randomness_ratio =
      resolveMethodBind('GPUParticles3D', 'set_randomness_ratio', 373806689);

  void setRandomnessRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_randomness_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visibility_aabb =
      resolveMethodBind('GPUParticles3D', 'set_visibility_aabb', 259215842);

  void setVisibilityAabb(AABB aabb) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    aabb.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_visibility_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_local_coordinates =
      resolveMethodBind('GPUParticles3D', 'set_use_local_coordinates', 2586408642);

  void setUseLocalCoordinates(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_local_coordinates, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fixed_fps =
      resolveMethodBind('GPUParticles3D', 'set_fixed_fps', 1286410249);

  void setFixedFps(int fps) {
    final arg0 = malloc<Int64>()..value = fps;
    try {
      ptrcallVoid(_mb_set_fixed_fps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_fractional_delta =
      resolveMethodBind('GPUParticles3D', 'set_fractional_delta', 2586408642);

  void setFractionalDelta(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fractional_delta, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_interpolate =
      resolveMethodBind('GPUParticles3D', 'set_interpolate', 2586408642);

  void setInterpolate(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_interpolate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_process_material =
      resolveMethodBind('GPUParticles3D', 'set_process_material', 2757459619);

  void setProcessMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_process_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('GPUParticles3D', 'set_speed_scale', 373806689);

  void setSpeedScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_base_size =
      resolveMethodBind('GPUParticles3D', 'set_collision_base_size', 373806689);

  void setCollisionBaseSize(double size) {
    final arg0 = malloc<Double>()..value = size;
    try {
      ptrcallVoid(_mb_set_collision_base_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_interp_to_end =
      resolveMethodBind('GPUParticles3D', 'set_interp_to_end', 373806689);

  void setInterpToEnd(double interp) {
    final arg0 = malloc<Double>()..value = interp;
    try {
      ptrcallVoid(_mb_set_interp_to_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_emitting =
      resolveMethodBind('GPUParticles3D', 'is_emitting', 36873697);

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
      resolveMethodBind('GPUParticles3D', 'get_amount', 3905245786);

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
      resolveMethodBind('GPUParticles3D', 'get_lifetime', 1740695150);

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
      resolveMethodBind('GPUParticles3D', 'get_one_shot', 36873697);

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
      resolveMethodBind('GPUParticles3D', 'get_pre_process_time', 1740695150);

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
      resolveMethodBind('GPUParticles3D', 'get_explosiveness_ratio', 1740695150);

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
      resolveMethodBind('GPUParticles3D', 'get_randomness_ratio', 1740695150);

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
      resolveMethodBind('GPUParticles3D', 'get_visibility_aabb', 1068685055);

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

  static final Pointer<Void> _mb_get_use_local_coordinates =
      resolveMethodBind('GPUParticles3D', 'get_use_local_coordinates', 36873697);

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
      resolveMethodBind('GPUParticles3D', 'get_fixed_fps', 3905245786);

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
      resolveMethodBind('GPUParticles3D', 'get_fractional_delta', 36873697);

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
      resolveMethodBind('GPUParticles3D', 'get_interpolate', 36873697);

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
      resolveMethodBind('GPUParticles3D', 'get_process_material', 5934680);

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
      resolveMethodBind('GPUParticles3D', 'get_speed_scale', 1740695150);

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
      resolveMethodBind('GPUParticles3D', 'get_collision_base_size', 1740695150);

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
      resolveMethodBind('GPUParticles3D', 'get_interp_to_end', 1740695150);

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

  static final Pointer<Void> _mb_set_use_fixed_seed =
      resolveMethodBind('GPUParticles3D', 'set_use_fixed_seed', 2586408642);

  void setUseFixedSeed(bool useFixedSeed) {
    final arg0 = malloc<Uint8>()..value = useFixedSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_fixed_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_fixed_seed =
      resolveMethodBind('GPUParticles3D', 'get_use_fixed_seed', 36873697);

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
      resolveMethodBind('GPUParticles3D', 'set_seed', 1286410249);

  void setSeed(int seed) {
    final arg0 = malloc<Int64>()..value = seed;
    try {
      ptrcallVoid(_mb_set_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seed =
      resolveMethodBind('GPUParticles3D', 'get_seed', 3905245786);

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
      resolveMethodBind('GPUParticles3D', 'set_draw_order', 1208074815);

  void setDrawOrder(int order) {
    final arg0 = malloc<Int64>()..value = order;
    try {
      ptrcallVoid(_mb_set_draw_order, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_draw_order =
      resolveMethodBind('GPUParticles3D', 'get_draw_order', 3770381780);

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

  static final Pointer<Void> _mb_set_draw_passes =
      resolveMethodBind('GPUParticles3D', 'set_draw_passes', 1286410249);

  void setDrawPasses(int passes) {
    final arg0 = malloc<Int64>()..value = passes;
    try {
      ptrcallVoid(_mb_set_draw_passes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_draw_pass_mesh =
      resolveMethodBind('GPUParticles3D', 'set_draw_pass_mesh', 969122797);

  void setDrawPassMesh(int pass, Mesh mesh) {
    final arg0 = malloc<Int64>()..value = pass;
    final arg1 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_draw_pass_mesh, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_draw_passes =
      resolveMethodBind('GPUParticles3D', 'get_draw_passes', 3905245786);

  int getDrawPasses() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_draw_passes, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_draw_pass_mesh =
      resolveMethodBind('GPUParticles3D', 'get_draw_pass_mesh', 1576363275);

  Mesh? getDrawPassMesh(int pass) {
    final arg0 = malloc<Int64>()..value = pass;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_draw_pass_mesh, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Mesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_skin =
      resolveMethodBind('GPUParticles3D', 'set_skin', 3971435618);

  void setSkin(Skin skin) {
    final arg0 = malloc<Pointer<Void>>()..value = skin.nativePtr;
    try {
      ptrcallVoid(_mb_set_skin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skin =
      resolveMethodBind('GPUParticles3D', 'get_skin', 2074563878);

  Skin? getSkin() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_skin, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skin(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_restart =
      resolveMethodBind('GPUParticles3D', 'restart', 107499316);

  void restart(bool keepSeed) {
    final arg0 = malloc<Uint8>()..value = keepSeed ? 1 : 0;
    try {
      ptrcallVoid(_mb_restart, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_capture_aabb =
      resolveMethodBind('GPUParticles3D', 'capture_aabb', 1068685055);

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

  // Skipped set_sub_emitter(): an argument type is unsupported.
  // Skipped get_sub_emitter(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_emit_particle =
      resolveMethodBind('GPUParticles3D', 'emit_particle', 992173727);

  void emitParticle(Transform3D xform, Vector3 velocity, Color color, Color custom, int flags) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    xform.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
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
      resolveMethodBind('GPUParticles3D', 'set_trail_enabled', 2586408642);

  void setTrailEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_trail_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_trail_lifetime =
      resolveMethodBind('GPUParticles3D', 'set_trail_lifetime', 373806689);

  void setTrailLifetime(double secs) {
    final arg0 = malloc<Double>()..value = secs;
    try {
      ptrcallVoid(_mb_set_trail_lifetime, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_trail_enabled =
      resolveMethodBind('GPUParticles3D', 'is_trail_enabled', 36873697);

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
      resolveMethodBind('GPUParticles3D', 'get_trail_lifetime', 1740695150);

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

  static final Pointer<Void> _mb_set_transform_align =
      resolveMethodBind('GPUParticles3D', 'set_transform_align', 3892425954);

  void setTransformAlign(int align) {
    final arg0 = malloc<Int64>()..value = align;
    try {
      ptrcallVoid(_mb_set_transform_align, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform_align =
      resolveMethodBind('GPUParticles3D', 'get_transform_align', 2100992166);

  int getTransformAlign() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transform_align, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform_align_channel_filter =
      resolveMethodBind('GPUParticles3D', 'set_transform_align_channel_filter', 540833286);

  void setTransformAlignChannelFilter(int channelFilter) {
    final arg0 = malloc<Int64>()..value = channelFilter;
    try {
      ptrcallVoid(_mb_set_transform_align_channel_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform_align_channel_filter =
      resolveMethodBind('GPUParticles3D', 'get_transform_align_channel_filter', 1664431231);

  int getTransformAlignChannelFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transform_align_channel_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transform_align_axis =
      resolveMethodBind('GPUParticles3D', 'set_transform_align_axis', 3781785913);

  void setTransformAlignAxis(int align) {
    final arg0 = malloc<Int64>()..value = align;
    try {
      ptrcallVoid(_mb_set_transform_align_axis, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform_align_axis =
      resolveMethodBind('GPUParticles3D', 'get_transform_align_axis', 2427180841);

  int getTransformAlignAxis() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_transform_align_axis, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_convert_from_particles =
      resolveMethodBind('GPUParticles3D', 'convert_from_particles', 1078189570);

  void convertFromParticles(Node particles) {
    final arg0 = malloc<Pointer<Void>>()..value = particles.nativePtr;
    try {
      ptrcallVoid(_mb_convert_from_particles, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_amount_ratio =
      resolveMethodBind('GPUParticles3D', 'set_amount_ratio', 373806689);

  void setAmountRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_amount_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_amount_ratio =
      resolveMethodBind('GPUParticles3D', 'get_amount_ratio', 1740695150);

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

  static final Pointer<Void> _mb_request_particles_process =
      resolveMethodBind('GPUParticles3D', 'request_particles_process', 66938510);

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

}
