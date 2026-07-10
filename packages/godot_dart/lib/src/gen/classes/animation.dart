// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Animation extends Resource {
  Animation(super.nativePtr);

  /// Constructs a brand-new engine-owned Animation instance
  /// (via classdb_construct_object3), not an existing one.
  factory Animation.create() {
    return Animation(resolveClassConstructor('Animation'));
  }

  static final Pointer<Void> _mb_add_track =
      resolveMethodBind('Animation', 'add_track', 3843682357);

  int addTrack(int type, int atPosition) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = atPosition;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_track, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_track =
      resolveMethodBind('Animation', 'remove_track', 1286410249);

  void removeTrack(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      ptrcallVoid(_mb_remove_track, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_track_count =
      resolveMethodBind('Animation', 'get_track_count', 3905245786);

  int getTrackCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_track_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_track_get_type =
      resolveMethodBind('Animation', 'track_get_type', 3445944217);

  int trackGetType(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_track_get_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped track_get_path(): unsupported return type "NodePath".
  // Skipped track_set_path(): an argument type is unsupported.
  // Skipped find_track(): an argument type is unsupported.
  static final Pointer<Void> _mb_track_move_up =
      resolveMethodBind('Animation', 'track_move_up', 1286410249);

  void trackMoveUp(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      ptrcallVoid(_mb_track_move_up, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_track_move_down =
      resolveMethodBind('Animation', 'track_move_down', 1286410249);

  void trackMoveDown(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      ptrcallVoid(_mb_track_move_down, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_track_move_to =
      resolveMethodBind('Animation', 'track_move_to', 3937882851);

  void trackMoveTo(int trackIdx, int toIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = toIdx;
    try {
      ptrcallVoid(_mb_track_move_to, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_swap =
      resolveMethodBind('Animation', 'track_swap', 3937882851);

  void trackSwap(int trackIdx, int withIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = withIdx;
    try {
      ptrcallVoid(_mb_track_swap, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_set_imported =
      resolveMethodBind('Animation', 'track_set_imported', 300928843);

  void trackSetImported(int trackIdx, bool imported) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Uint8>()..value = imported ? 1 : 0;
    try {
      ptrcallVoid(_mb_track_set_imported, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_is_imported =
      resolveMethodBind('Animation', 'track_is_imported', 1116898809);

  bool trackIsImported(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_track_is_imported, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_track_set_enabled =
      resolveMethodBind('Animation', 'track_set_enabled', 300928843);

  void trackSetEnabled(int trackIdx, bool enabled) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_track_set_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_is_enabled =
      resolveMethodBind('Animation', 'track_is_enabled', 1116898809);

  bool trackIsEnabled(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_track_is_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_position_track_insert_key =
      resolveMethodBind('Animation', 'position_track_insert_key', 2540608232);

  int positionTrackInsertKey(int trackIdx, double time, Vector3 position) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg2, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_position_track_insert_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_rotation_track_insert_key =
      resolveMethodBind('Animation', 'rotation_track_insert_key', 4165004800);

  int rotationTrackInsertKey(int trackIdx, double time, Quaternion rotation) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Uint8>(Quaternion.nativeSize);
    rotation.writeTo(arg2, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_rotation_track_insert_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_scale_track_insert_key =
      resolveMethodBind('Animation', 'scale_track_insert_key', 2540608232);

  int scaleTrackInsertKey(int trackIdx, double time, Vector3 scale) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg2, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_scale_track_insert_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_blend_shape_track_insert_key =
      resolveMethodBind('Animation', 'blend_shape_track_insert_key', 1534913637);

  int blendShapeTrackInsertKey(int trackIdx, double time, double amount) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Double>()..value = amount;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_blend_shape_track_insert_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_position_track_interpolate =
      resolveMethodBind('Animation', 'position_track_interpolate', 3530011197);

  Vector3 positionTrackInterpolate(int trackIdx, double timeSec, bool backward) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = timeSec;
    final arg2 = malloc<Uint8>()..value = backward ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_position_track_interpolate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_rotation_track_interpolate =
      resolveMethodBind('Animation', 'rotation_track_interpolate', 2915876792);

  Quaternion rotationTrackInterpolate(int trackIdx, double timeSec, bool backward) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = timeSec;
    final arg2 = malloc<Uint8>()..value = backward ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_rotation_track_interpolate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_scale_track_interpolate =
      resolveMethodBind('Animation', 'scale_track_interpolate', 3530011197);

  Vector3 scaleTrackInterpolate(int trackIdx, double timeSec, bool backward) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = timeSec;
    final arg2 = malloc<Uint8>()..value = backward ? 1 : 0;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_scale_track_interpolate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_blend_shape_track_interpolate =
      resolveMethodBind('Animation', 'blend_shape_track_interpolate', 2482365182);

  double blendShapeTrackInterpolate(int trackIdx, double timeSec, bool backward) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = timeSec;
    final arg2 = malloc<Uint8>()..value = backward ? 1 : 0;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_blend_shape_track_interpolate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped track_insert_key(): an argument type is unsupported.
  static final Pointer<Void> _mb_track_remove_key =
      resolveMethodBind('Animation', 'track_remove_key', 3937882851);

  void trackRemoveKey(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      ptrcallVoid(_mb_track_remove_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_remove_key_at_time =
      resolveMethodBind('Animation', 'track_remove_key_at_time', 1602489585);

  void trackRemoveKeyAtTime(int trackIdx, double time) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_track_remove_key_at_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped track_set_key_value(): an argument type is unsupported.
  static final Pointer<Void> _mb_track_set_key_transition =
      resolveMethodBind('Animation', 'track_set_key_transition', 3506521499);

  void trackSetKeyTransition(int trackIdx, int keyIdx, double transition) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Double>()..value = transition;
    try {
      ptrcallVoid(_mb_track_set_key_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_track_set_key_time =
      resolveMethodBind('Animation', 'track_set_key_time', 3506521499);

  void trackSetKeyTime(int trackIdx, int keyIdx, double time) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_track_set_key_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_track_get_key_transition =
      resolveMethodBind('Animation', 'track_get_key_transition', 3085491603);

  double trackGetKeyTransition(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_track_get_key_transition, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_get_key_count =
      resolveMethodBind('Animation', 'track_get_key_count', 923996154);

  int trackGetKeyCount(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_track_get_key_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped track_get_key_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_track_get_key_time =
      resolveMethodBind('Animation', 'track_get_key_time', 3085491603);

  double trackGetKeyTime(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_track_get_key_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_find_key =
      resolveMethodBind('Animation', 'track_find_key', 4230953007);

  int trackFindKey(int trackIdx, double time, int findMode, bool limit, bool backward) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Int64>()..value = findMode;
    final arg3 = malloc<Uint8>()..value = limit ? 1 : 0;
    final arg4 = malloc<Uint8>()..value = backward ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_track_find_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_track_set_interpolation_type =
      resolveMethodBind('Animation', 'track_set_interpolation_type', 4112932513);

  void trackSetInterpolationType(int trackIdx, int interpolation) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = interpolation;
    try {
      ptrcallVoid(_mb_track_set_interpolation_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_get_interpolation_type =
      resolveMethodBind('Animation', 'track_get_interpolation_type', 1530756894);

  int trackGetInterpolationType(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_track_get_interpolation_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_track_set_interpolation_loop_wrap =
      resolveMethodBind('Animation', 'track_set_interpolation_loop_wrap', 300928843);

  void trackSetInterpolationLoopWrap(int trackIdx, bool interpolation) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Uint8>()..value = interpolation ? 1 : 0;
    try {
      ptrcallVoid(_mb_track_set_interpolation_loop_wrap, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_track_get_interpolation_loop_wrap =
      resolveMethodBind('Animation', 'track_get_interpolation_loop_wrap', 1116898809);

  bool trackGetInterpolationLoopWrap(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_track_get_interpolation_loop_wrap, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_track_is_compressed =
      resolveMethodBind('Animation', 'track_is_compressed', 1116898809);

  bool trackIsCompressed(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_track_is_compressed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_value_track_set_update_mode =
      resolveMethodBind('Animation', 'value_track_set_update_mode', 2854058312);

  void valueTrackSetUpdateMode(int trackIdx, int mode) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_value_track_set_update_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_value_track_get_update_mode =
      resolveMethodBind('Animation', 'value_track_get_update_mode', 1440326473);

  int valueTrackGetUpdateMode(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_value_track_get_update_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped value_track_interpolate(): unsupported return type "Variant".
  static final Pointer<Void> _mb_method_track_get_name =
      resolveMethodBind('Animation', 'method_track_get_name', 351665558);

  String methodTrackGetName(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_method_track_get_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped method_track_get_params(): unsupported return type "Array".
  static final Pointer<Void> _mb_bezier_track_insert_key =
      resolveMethodBind('Animation', 'bezier_track_insert_key', 3656773645);

  int bezierTrackInsertKey(int trackIdx, double time, double value, Vector2 inHandle, Vector2 outHandle) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Double>()..value = value;
    final arg3 = malloc<Uint8>(Vector2.nativeSize);
    inHandle.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>(Vector2.nativeSize);
    outHandle.writeTo(arg4, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_bezier_track_insert_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_bezier_track_set_key_value =
      resolveMethodBind('Animation', 'bezier_track_set_key_value', 3506521499);

  void bezierTrackSetKeyValue(int trackIdx, int keyIdx, double value) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_bezier_track_set_key_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_bezier_track_set_key_in_handle =
      resolveMethodBind('Animation', 'bezier_track_set_key_in_handle', 1719223284);

  void bezierTrackSetKeyInHandle(int trackIdx, int keyIdx, Vector2 inHandle, double balancedValueTimeRatio) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    inHandle.writeTo(arg2, 0);
    final arg3 = malloc<Double>()..value = balancedValueTimeRatio;
    try {
      ptrcallVoid(_mb_bezier_track_set_key_in_handle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_bezier_track_set_key_out_handle =
      resolveMethodBind('Animation', 'bezier_track_set_key_out_handle', 1719223284);

  void bezierTrackSetKeyOutHandle(int trackIdx, int keyIdx, Vector2 outHandle, double balancedValueTimeRatio) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Uint8>(Vector2.nativeSize);
    outHandle.writeTo(arg2, 0);
    final arg3 = malloc<Double>()..value = balancedValueTimeRatio;
    try {
      ptrcallVoid(_mb_bezier_track_set_key_out_handle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_bezier_track_get_key_value =
      resolveMethodBind('Animation', 'bezier_track_get_key_value', 3085491603);

  double bezierTrackGetKeyValue(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_bezier_track_get_key_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_bezier_track_get_key_in_handle =
      resolveMethodBind('Animation', 'bezier_track_get_key_in_handle', 3016396712);

  Vector2 bezierTrackGetKeyInHandle(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_bezier_track_get_key_in_handle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_bezier_track_get_key_out_handle =
      resolveMethodBind('Animation', 'bezier_track_get_key_out_handle', 3016396712);

  Vector2 bezierTrackGetKeyOutHandle(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_bezier_track_get_key_out_handle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_bezier_track_interpolate =
      resolveMethodBind('Animation', 'bezier_track_interpolate', 1900462983);

  double bezierTrackInterpolate(int trackIdx, double time) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_bezier_track_interpolate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_audio_track_insert_key =
      resolveMethodBind('Animation', 'audio_track_insert_key', 4021027286);

  int audioTrackInsertKey(int trackIdx, double time, Resource stream, double startOffset, double endOffset) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    final arg3 = malloc<Double>()..value = startOffset;
    final arg4 = malloc<Double>()..value = endOffset;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_audio_track_insert_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_audio_track_set_key_stream =
      resolveMethodBind('Animation', 'audio_track_set_key_stream', 3886397084);

  void audioTrackSetKeyStream(int trackIdx, int keyIdx, Resource stream) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Pointer<Void>>()..value = stream.nativePtr;
    try {
      ptrcallVoid(_mb_audio_track_set_key_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_audio_track_set_key_start_offset =
      resolveMethodBind('Animation', 'audio_track_set_key_start_offset', 3506521499);

  void audioTrackSetKeyStartOffset(int trackIdx, int keyIdx, double offset) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_audio_track_set_key_start_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_audio_track_set_key_end_offset =
      resolveMethodBind('Animation', 'audio_track_set_key_end_offset', 3506521499);

  void audioTrackSetKeyEndOffset(int trackIdx, int keyIdx, double offset) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Double>()..value = offset;
    try {
      ptrcallVoid(_mb_audio_track_set_key_end_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_audio_track_get_key_stream =
      resolveMethodBind('Animation', 'audio_track_get_key_stream', 635277205);

  Resource? audioTrackGetKeyStream(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_audio_track_get_key_stream, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_audio_track_get_key_start_offset =
      resolveMethodBind('Animation', 'audio_track_get_key_start_offset', 3085491603);

  double audioTrackGetKeyStartOffset(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_audio_track_get_key_start_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_audio_track_get_key_end_offset =
      resolveMethodBind('Animation', 'audio_track_get_key_end_offset', 3085491603);

  double audioTrackGetKeyEndOffset(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_audio_track_get_key_end_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_audio_track_set_use_blend =
      resolveMethodBind('Animation', 'audio_track_set_use_blend', 300928843);

  void audioTrackSetUseBlend(int trackIdx, bool enable) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_audio_track_set_use_blend, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_audio_track_is_use_blend =
      resolveMethodBind('Animation', 'audio_track_is_use_blend', 1116898809);

  bool audioTrackIsUseBlend(int trackIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_audio_track_is_use_blend, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_animation_track_insert_key =
      resolveMethodBind('Animation', 'animation_track_insert_key', 158676774);

  int animationTrackInsertKey(int trackIdx, double time, String animation) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), animation);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_animation_track_insert_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_animation_track_set_key_animation =
      resolveMethodBind('Animation', 'animation_track_set_key_animation', 117615382);

  void animationTrackSetKeyAnimation(int trackIdx, int keyIdx, String animation) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), animation);
    try {
      ptrcallVoid(_mb_animation_track_set_key_animation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_animation_track_get_key_animation =
      resolveMethodBind('Animation', 'animation_track_get_key_animation', 351665558);

  String animationTrackGetKeyAnimation(int trackIdx, int keyIdx) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Int64>()..value = keyIdx;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_animation_track_get_key_animation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_marker =
      resolveMethodBind('Animation', 'add_marker', 4135858297);

  void addMarker(String name, double time) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = time;
    try {
      ptrcallVoid(_mb_add_marker, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_marker =
      resolveMethodBind('Animation', 'remove_marker', 3304788590);

  void removeMarker(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_marker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_marker =
      resolveMethodBind('Animation', 'has_marker', 2619796661);

  bool hasMarker(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_marker, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_marker_at_time =
      resolveMethodBind('Animation', 'get_marker_at_time', 4079494655);

  String getMarkerAtTime(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_marker_at_time, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_next_marker =
      resolveMethodBind('Animation', 'get_next_marker', 4079494655);

  String getNextMarker(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_next_marker, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_prev_marker =
      resolveMethodBind('Animation', 'get_prev_marker', 4079494655);

  String getPrevMarker(double time) {
    final arg0 = malloc<Double>()..value = time;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_prev_marker, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_marker_time =
      resolveMethodBind('Animation', 'get_marker_time', 2349060816);

  double getMarkerTime(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_marker_time, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_marker_names(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_marker_color =
      resolveMethodBind('Animation', 'get_marker_color', 3742943038);

  Color getMarkerColor(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_marker_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_marker_color =
      resolveMethodBind('Animation', 'set_marker_color', 4260178595);

  void setMarkerColor(String name, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_marker_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_length =
      resolveMethodBind('Animation', 'set_length', 373806689);

  void setLength(double timeSec) {
    final arg0 = malloc<Double>()..value = timeSec;
    try {
      ptrcallVoid(_mb_set_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('Animation', 'get_length', 1740695150);

  double getLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop_mode =
      resolveMethodBind('Animation', 'set_loop_mode', 3155355575);

  void setLoopMode(int loopMode) {
    final arg0 = malloc<Int64>()..value = loopMode;
    try {
      ptrcallVoid(_mb_set_loop_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loop_mode =
      resolveMethodBind('Animation', 'get_loop_mode', 1988889481);

  int getLoopMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_loop_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_step =
      resolveMethodBind('Animation', 'set_step', 373806689);

  void setStep(double sizeSec) {
    final arg0 = malloc<Double>()..value = sizeSec;
    try {
      ptrcallVoid(_mb_set_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_step =
      resolveMethodBind('Animation', 'get_step', 1740695150);

  double getStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('Animation', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_copy_track =
      resolveMethodBind('Animation', 'copy_track', 148001024);

  void copyTrack(int trackIdx, Animation toAnimation) {
    final arg0 = malloc<Int64>()..value = trackIdx;
    final arg1 = malloc<Pointer<Void>>()..value = toAnimation.nativePtr;
    try {
      ptrcallVoid(_mb_copy_track, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_optimize =
      resolveMethodBind('Animation', 'optimize', 3303583852);

  void optimize(double allowedVelocityErr, double allowedAngularErr, int precision) {
    final arg0 = malloc<Double>()..value = allowedVelocityErr;
    final arg1 = malloc<Double>()..value = allowedAngularErr;
    final arg2 = malloc<Int64>()..value = precision;
    try {
      ptrcallVoid(_mb_optimize, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_compress =
      resolveMethodBind('Animation', 'compress', 3608408117);

  void compress(int pageSize, int fps, double splitTolerance) {
    final arg0 = malloc<Int64>()..value = pageSize;
    final arg1 = malloc<Int64>()..value = fps;
    final arg2 = malloc<Double>()..value = splitTolerance;
    try {
      ptrcallVoid(_mb_compress, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_capture_included =
      resolveMethodBind('Animation', 'is_capture_included', 36873697);

  bool isCaptureIncluded() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_capture_included, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
