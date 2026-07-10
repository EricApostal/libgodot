// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CanvasItemMaterial extends Material {
  CanvasItemMaterial(super.nativePtr);

  static final Pointer<Void> _mb_set_blend_mode =
      resolveMethodBind('CanvasItemMaterial', 'set_blend_mode', 1786054936);

  void setBlendMode(int blendMode) {
    final arg0 = malloc<Int64>()..value = blendMode;
    try {
      ptrcallVoid(_mb_set_blend_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_mode =
      resolveMethodBind('CanvasItemMaterial', 'get_blend_mode', 3318684035);

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

  static final Pointer<Void> _mb_set_light_mode =
      resolveMethodBind('CanvasItemMaterial', 'set_light_mode', 628074070);

  void setLightMode(int lightMode) {
    final arg0 = malloc<Int64>()..value = lightMode;
    try {
      ptrcallVoid(_mb_set_light_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_light_mode =
      resolveMethodBind('CanvasItemMaterial', 'get_light_mode', 3863292382);

  int getLightMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_light_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particles_animation =
      resolveMethodBind('CanvasItemMaterial', 'set_particles_animation', 2586408642);

  void setParticlesAnimation(bool particlesAnim) {
    final arg0 = malloc<Uint8>()..value = particlesAnim ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_particles_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_particles_animation =
      resolveMethodBind('CanvasItemMaterial', 'get_particles_animation', 36873697);

  bool getParticlesAnimation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_particles_animation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particles_anim_h_frames =
      resolveMethodBind('CanvasItemMaterial', 'set_particles_anim_h_frames', 1286410249);

  void setParticlesAnimHFrames(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      ptrcallVoid(_mb_set_particles_anim_h_frames, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_particles_anim_h_frames =
      resolveMethodBind('CanvasItemMaterial', 'get_particles_anim_h_frames', 3905245786);

  int getParticlesAnimHFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_particles_anim_h_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particles_anim_v_frames =
      resolveMethodBind('CanvasItemMaterial', 'set_particles_anim_v_frames', 1286410249);

  void setParticlesAnimVFrames(int frames) {
    final arg0 = malloc<Int64>()..value = frames;
    try {
      ptrcallVoid(_mb_set_particles_anim_v_frames, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_particles_anim_v_frames =
      resolveMethodBind('CanvasItemMaterial', 'get_particles_anim_v_frames', 3905245786);

  int getParticlesAnimVFrames() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_particles_anim_v_frames, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_particles_anim_loop =
      resolveMethodBind('CanvasItemMaterial', 'set_particles_anim_loop', 2586408642);

  void setParticlesAnimLoop(bool loop) {
    final arg0 = malloc<Uint8>()..value = loop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_particles_anim_loop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_particles_anim_loop =
      resolveMethodBind('CanvasItemMaterial', 'get_particles_anim_loop', 36873697);

  bool getParticlesAnimLoop() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_particles_anim_loop, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
