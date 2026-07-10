// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationMixer extends Node {
  AnimationMixer(super.nativePtr);

  // Skipped virtual _post_process_key_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_add_animation_library =
      resolveMethodBind('AnimationMixer', 'add_animation_library', 618909818);

  int addAnimationLibrary(String name, AnimationLibrary library_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = library_.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_animation_library, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_animation_library =
      resolveMethodBind('AnimationMixer', 'remove_animation_library', 3304788590);

  void removeAnimationLibrary(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_animation_library, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rename_animation_library =
      resolveMethodBind('AnimationMixer', 'rename_animation_library', 3740211285);

  void renameAnimationLibrary(String name, String newname) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), newname);
    try {
      ptrcallVoid(_mb_rename_animation_library, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_animation_library =
      resolveMethodBind('AnimationMixer', 'has_animation_library', 2619796661);

  bool hasAnimationLibrary(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_animation_library, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_animation_library =
      resolveMethodBind('AnimationMixer', 'get_animation_library', 147342321);

  AnimationLibrary? getAnimationLibrary(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_animation_library, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AnimationLibrary(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_animation_library_list(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_has_animation =
      resolveMethodBind('AnimationMixer', 'has_animation', 2619796661);

  bool hasAnimation(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_animation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_animation =
      resolveMethodBind('AnimationMixer', 'get_animation', 2933122410);

  Animation? getAnimation(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_animation, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Animation(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_animation_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_active =
      resolveMethodBind('AnimationMixer', 'set_active', 2586408642);

  void setActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_active =
      resolveMethodBind('AnimationMixer', 'is_active', 36873697);

  bool isActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_deterministic =
      resolveMethodBind('AnimationMixer', 'set_deterministic', 2586408642);

  void setDeterministic(bool deterministic) {
    final arg0 = malloc<Uint8>()..value = deterministic ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deterministic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_deterministic =
      resolveMethodBind('AnimationMixer', 'is_deterministic', 36873697);

  bool isDeterministic() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_deterministic, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_root_node(): an argument type is unsupported.
  // Skipped get_root_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_callback_mode_process =
      resolveMethodBind('AnimationMixer', 'set_callback_mode_process', 2153733086);

  void setCallbackModeProcess(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_callback_mode_process, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_callback_mode_process =
      resolveMethodBind('AnimationMixer', 'get_callback_mode_process', 1394468472);

  int getCallbackModeProcess() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_callback_mode_process, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_callback_mode_method =
      resolveMethodBind('AnimationMixer', 'set_callback_mode_method', 742218271);

  void setCallbackModeMethod(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_callback_mode_method, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_callback_mode_method =
      resolveMethodBind('AnimationMixer', 'get_callback_mode_method', 489449656);

  int getCallbackModeMethod() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_callback_mode_method, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_callback_mode_discrete =
      resolveMethodBind('AnimationMixer', 'set_callback_mode_discrete', 1998944670);

  void setCallbackModeDiscrete(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_callback_mode_discrete, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_callback_mode_discrete =
      resolveMethodBind('AnimationMixer', 'get_callback_mode_discrete', 3493168860);

  int getCallbackModeDiscrete() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_callback_mode_discrete, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_audio_max_polyphony =
      resolveMethodBind('AnimationMixer', 'set_audio_max_polyphony', 1286410249);

  void setAudioMaxPolyphony(int maxPolyphony) {
    final arg0 = malloc<Int64>()..value = maxPolyphony;
    try {
      ptrcallVoid(_mb_set_audio_max_polyphony, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_audio_max_polyphony =
      resolveMethodBind('AnimationMixer', 'get_audio_max_polyphony', 3905245786);

  int getAudioMaxPolyphony() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_audio_max_polyphony, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_root_motion_track(): an argument type is unsupported.
  // Skipped get_root_motion_track(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_root_motion_local =
      resolveMethodBind('AnimationMixer', 'set_root_motion_local', 2586408642);

  void setRootMotionLocal(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_root_motion_local, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_root_motion_local =
      resolveMethodBind('AnimationMixer', 'is_root_motion_local', 36873697);

  bool isRootMotionLocal() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_root_motion_local, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_root_motion_position =
      resolveMethodBind('AnimationMixer', 'get_root_motion_position', 3360562783);

  Vector3 getRootMotionPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_root_motion_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_root_motion_rotation =
      resolveMethodBind('AnimationMixer', 'get_root_motion_rotation', 1222331677);

  Quaternion getRootMotionRotation() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_root_motion_rotation, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_root_motion_scale =
      resolveMethodBind('AnimationMixer', 'get_root_motion_scale', 3360562783);

  Vector3 getRootMotionScale() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_root_motion_scale, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_root_motion_position_accumulator =
      resolveMethodBind('AnimationMixer', 'get_root_motion_position_accumulator', 3360562783);

  Vector3 getRootMotionPositionAccumulator() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_root_motion_position_accumulator, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_root_motion_rotation_accumulator =
      resolveMethodBind('AnimationMixer', 'get_root_motion_rotation_accumulator', 1222331677);

  Quaternion getRootMotionRotationAccumulator() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_root_motion_rotation_accumulator, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_root_motion_scale_accumulator =
      resolveMethodBind('AnimationMixer', 'get_root_motion_scale_accumulator', 3360562783);

  Vector3 getRootMotionScaleAccumulator() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_root_motion_scale_accumulator, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_caches =
      resolveMethodBind('AnimationMixer', 'clear_caches', 3218959716);

  void clearCaches() {
    try {
      ptrcallVoid(_mb_clear_caches, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_advance =
      resolveMethodBind('AnimationMixer', 'advance', 373806689);

  void advance(double delta) {
    final arg0 = malloc<Double>()..value = delta;
    try {
      ptrcallVoid(_mb_advance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_capture =
      resolveMethodBind('AnimationMixer', 'capture', 1333632127);

  void capture(String name, double duration, int transType, int easeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = duration;
    final arg2 = malloc<Int64>()..value = transType;
    final arg3 = malloc<Int64>()..value = easeType;
    try {
      ptrcallVoid(_mb_capture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_reset_on_save_enabled =
      resolveMethodBind('AnimationMixer', 'set_reset_on_save_enabled', 2586408642);

  void setResetOnSaveEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_reset_on_save_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_reset_on_save_enabled =
      resolveMethodBind('AnimationMixer', 'is_reset_on_save_enabled', 36873697);

  bool isResetOnSaveEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_reset_on_save_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_animation =
      resolveMethodBind('AnimationMixer', 'find_animation', 1559484580);

  String findAnimation(Animation animation) {
    final arg0 = malloc<Pointer<Void>>()..value = animation.nativePtr;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_find_animation, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_find_animation_library =
      resolveMethodBind('AnimationMixer', 'find_animation_library', 1559484580);

  String findAnimationLibrary(Animation animation) {
    final arg0 = malloc<Pointer<Void>>()..value = animation.nativePtr;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_find_animation_library, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
