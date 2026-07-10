// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationPlayer extends AnimationMixer {
  AnimationPlayer(super.nativePtr);

  static final Pointer<Void> _mb_animation_set_next =
      resolveMethodBind('AnimationPlayer', 'animation_set_next', 3740211285);

  void animationSetNext(String animationFrom, String animationTo) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animationFrom);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), animationTo);
    try {
      ptrcallVoid(_mb_animation_set_next, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_animation_get_next =
      resolveMethodBind('AnimationPlayer', 'animation_get_next', 1965194235);

  String animationGetNext(String animationFrom) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animationFrom);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_animation_get_next, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_blend_time =
      resolveMethodBind('AnimationPlayer', 'set_blend_time', 3231131886);

  void setBlendTime(String animationFrom, String animationTo, double sec) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animationFrom);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), animationTo);
    final arg2 = malloc<Double>()..value = sec;
    try {
      ptrcallVoid(_mb_set_blend_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_blend_time =
      resolveMethodBind('AnimationPlayer', 'get_blend_time', 1958752504);

  double getBlendTime(String animationFrom, String animationTo) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animationFrom);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), animationTo);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_blend_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_default_blend_time =
      resolveMethodBind('AnimationPlayer', 'set_default_blend_time', 373806689);

  void setDefaultBlendTime(double sec) {
    final arg0 = malloc<Double>()..value = sec;
    try {
      ptrcallVoid(_mb_set_default_blend_time, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_blend_time =
      resolveMethodBind('AnimationPlayer', 'get_default_blend_time', 1740695150);

  double getDefaultBlendTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_default_blend_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_capture =
      resolveMethodBind('AnimationPlayer', 'set_auto_capture', 2586408642);

  void setAutoCapture(bool autoCapture) {
    final arg0 = malloc<Uint8>()..value = autoCapture ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_capture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_auto_capture =
      resolveMethodBind('AnimationPlayer', 'is_auto_capture', 36873697);

  bool isAutoCapture() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_capture, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_capture_duration =
      resolveMethodBind('AnimationPlayer', 'set_auto_capture_duration', 373806689);

  void setAutoCaptureDuration(double autoCaptureDuration) {
    final arg0 = malloc<Double>()..value = autoCaptureDuration;
    try {
      ptrcallVoid(_mb_set_auto_capture_duration, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_capture_duration =
      resolveMethodBind('AnimationPlayer', 'get_auto_capture_duration', 1740695150);

  double getAutoCaptureDuration() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_auto_capture_duration, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_capture_transition_type =
      resolveMethodBind('AnimationPlayer', 'set_auto_capture_transition_type', 1058637742);

  void setAutoCaptureTransitionType(int autoCaptureTransitionType) {
    final arg0 = malloc<Int64>()..value = autoCaptureTransitionType;
    try {
      ptrcallVoid(_mb_set_auto_capture_transition_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_capture_transition_type =
      resolveMethodBind('AnimationPlayer', 'get_auto_capture_transition_type', 3842314528);

  int getAutoCaptureTransitionType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_auto_capture_transition_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_capture_ease_type =
      resolveMethodBind('AnimationPlayer', 'set_auto_capture_ease_type', 1208105857);

  void setAutoCaptureEaseType(int autoCaptureEaseType) {
    final arg0 = malloc<Int64>()..value = autoCaptureEaseType;
    try {
      ptrcallVoid(_mb_set_auto_capture_ease_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_auto_capture_ease_type =
      resolveMethodBind('AnimationPlayer', 'get_auto_capture_ease_type', 631880200);

  int getAutoCaptureEaseType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_auto_capture_ease_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_play =
      resolveMethodBind('AnimationPlayer', 'play', 3118260607);

  void play(String name, double customBlend, double customSpeed, bool fromEnd) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = customBlend;
    final arg2 = malloc<Double>()..value = customSpeed;
    final arg3 = malloc<Uint8>()..value = fromEnd ? 1 : 0;
    try {
      ptrcallVoid(_mb_play, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_play_section_with_markers =
      resolveMethodBind('AnimationPlayer', 'play_section_with_markers', 1421431412);

  void playSectionWithMarkers(String name, String startMarker, String endMarker, double customBlend, double customSpeed, bool fromEnd) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), startMarker);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), endMarker);
    final arg3 = malloc<Double>()..value = customBlend;
    final arg4 = malloc<Double>()..value = customSpeed;
    final arg5 = malloc<Uint8>()..value = fromEnd ? 1 : 0;
    try {
      ptrcallVoid(_mb_play_section_with_markers, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_play_section =
      resolveMethodBind('AnimationPlayer', 'play_section', 284774635);

  void playSection(String name, double startTime, double endTime, double customBlend, double customSpeed, bool fromEnd) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = startTime;
    final arg2 = malloc<Double>()..value = endTime;
    final arg3 = malloc<Double>()..value = customBlend;
    final arg4 = malloc<Double>()..value = customSpeed;
    final arg5 = malloc<Uint8>()..value = fromEnd ? 1 : 0;
    try {
      ptrcallVoid(_mb_play_section, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_play_backwards =
      resolveMethodBind('AnimationPlayer', 'play_backwards', 2787282401);

  void playBackwards(String name, double customBlend) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = customBlend;
    try {
      ptrcallVoid(_mb_play_backwards, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_play_section_with_markers_backwards =
      resolveMethodBind('AnimationPlayer', 'play_section_with_markers_backwards', 910195100);

  void playSectionWithMarkersBackwards(String name, String startMarker, String endMarker, double customBlend) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), startMarker);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), endMarker);
    final arg3 = malloc<Double>()..value = customBlend;
    try {
      ptrcallVoid(_mb_play_section_with_markers_backwards, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_play_section_backwards =
      resolveMethodBind('AnimationPlayer', 'play_section_backwards', 831955981);

  void playSectionBackwards(String name, double startTime, double endTime, double customBlend) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = startTime;
    final arg2 = malloc<Double>()..value = endTime;
    final arg3 = malloc<Double>()..value = customBlend;
    try {
      ptrcallVoid(_mb_play_section_backwards, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_play_with_capture =
      resolveMethodBind('AnimationPlayer', 'play_with_capture', 1572969103);

  void playWithCapture(String name, double duration, double customBlend, double customSpeed, bool fromEnd, int transType, int easeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Double>()..value = duration;
    final arg2 = malloc<Double>()..value = customBlend;
    final arg3 = malloc<Double>()..value = customSpeed;
    final arg4 = malloc<Uint8>()..value = fromEnd ? 1 : 0;
    final arg5 = malloc<Int64>()..value = transType;
    final arg6 = malloc<Int64>()..value = easeType;
    try {
      ptrcallVoid(_mb_play_with_capture, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_pause =
      resolveMethodBind('AnimationPlayer', 'pause', 3218959716);

  void pause() {
    try {
      ptrcallVoid(_mb_pause, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('AnimationPlayer', 'stop', 107499316);

  void stop(bool keepState) {
    final arg0 = malloc<Uint8>()..value = keepState ? 1 : 0;
    try {
      ptrcallVoid(_mb_stop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_playing =
      resolveMethodBind('AnimationPlayer', 'is_playing', 36873697);

  bool isPlaying() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_playing, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_animation_active =
      resolveMethodBind('AnimationPlayer', 'is_animation_active', 36873697);

  bool isAnimationActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_animation_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_current_animation =
      resolveMethodBind('AnimationPlayer', 'set_current_animation', 3304788590);

  void setCurrentAnimation(String animation) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animation);
    try {
      ptrcallVoid(_mb_set_current_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_animation =
      resolveMethodBind('AnimationPlayer', 'get_current_animation', 2002593661);

  String getCurrentAnimation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_animation, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_assigned_animation =
      resolveMethodBind('AnimationPlayer', 'set_assigned_animation', 3304788590);

  void setAssignedAnimation(String animation) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animation);
    try {
      ptrcallVoid(_mb_set_assigned_animation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_assigned_animation =
      resolveMethodBind('AnimationPlayer', 'get_assigned_animation', 2002593661);

  String getAssignedAnimation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_assigned_animation, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_queue =
      resolveMethodBind('AnimationPlayer', 'queue', 3304788590);

  void queue(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_queue, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_queue(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_clear_queue =
      resolveMethodBind('AnimationPlayer', 'clear_queue', 3218959716);

  void clearQueue() {
    try {
      ptrcallVoid(_mb_clear_queue, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_speed_scale =
      resolveMethodBind('AnimationPlayer', 'set_speed_scale', 373806689);

  void setSpeedScale(double speed) {
    final arg0 = malloc<Double>()..value = speed;
    try {
      ptrcallVoid(_mb_set_speed_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_speed_scale =
      resolveMethodBind('AnimationPlayer', 'get_speed_scale', 1740695150);

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

  static final Pointer<Void> _mb_get_playing_speed =
      resolveMethodBind('AnimationPlayer', 'get_playing_speed', 1740695150);

  double getPlayingSpeed() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_playing_speed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autoplay =
      resolveMethodBind('AnimationPlayer', 'set_autoplay', 3304788590);

  void setAutoplay(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_autoplay, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autoplay =
      resolveMethodBind('AnimationPlayer', 'get_autoplay', 2002593661);

  String getAutoplay() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_autoplay, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_movie_quit_on_finish_enabled =
      resolveMethodBind('AnimationPlayer', 'set_movie_quit_on_finish_enabled', 2586408642);

  void setMovieQuitOnFinishEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_movie_quit_on_finish_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_movie_quit_on_finish_enabled =
      resolveMethodBind('AnimationPlayer', 'is_movie_quit_on_finish_enabled', 36873697);

  bool isMovieQuitOnFinishEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_movie_quit_on_finish_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clear_cache_on_stop_enabled =
      resolveMethodBind('AnimationPlayer', 'set_clear_cache_on_stop_enabled', 2586408642);

  void setClearCacheOnStopEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_clear_cache_on_stop_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_clear_cache_on_stop_enabled =
      resolveMethodBind('AnimationPlayer', 'is_clear_cache_on_stop_enabled', 36873697);

  bool isClearCacheOnStopEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_clear_cache_on_stop_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_animation_position =
      resolveMethodBind('AnimationPlayer', 'get_current_animation_position', 1740695150);

  double getCurrentAnimationPosition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_current_animation_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_animation_length =
      resolveMethodBind('AnimationPlayer', 'get_current_animation_length', 1740695150);

  double getCurrentAnimationLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_current_animation_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_section_with_markers =
      resolveMethodBind('AnimationPlayer', 'set_section_with_markers', 794792241);

  void setSectionWithMarkers(String startMarker, String endMarker) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), startMarker);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), endMarker);
    try {
      ptrcallVoid(_mb_set_section_with_markers, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_section =
      resolveMethodBind('AnimationPlayer', 'set_section', 3749779719);

  void setSection(double startTime, double endTime) {
    final arg0 = malloc<Double>()..value = startTime;
    final arg1 = malloc<Double>()..value = endTime;
    try {
      ptrcallVoid(_mb_set_section, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_reset_section =
      resolveMethodBind('AnimationPlayer', 'reset_section', 3218959716);

  void resetSection() {
    try {
      ptrcallVoid(_mb_reset_section, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_section_start_time =
      resolveMethodBind('AnimationPlayer', 'get_section_start_time', 1740695150);

  double getSectionStartTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_section_start_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_section_end_time =
      resolveMethodBind('AnimationPlayer', 'get_section_end_time', 1740695150);

  double getSectionEndTime() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_section_end_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_section =
      resolveMethodBind('AnimationPlayer', 'has_section', 36873697);

  bool hasSection() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_section, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_seek =
      resolveMethodBind('AnimationPlayer', 'seek', 1807872683);

  void seek(double seconds, bool update, bool updateOnly) {
    final arg0 = malloc<Double>()..value = seconds;
    final arg1 = malloc<Uint8>()..value = update ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = updateOnly ? 1 : 0;
    try {
      ptrcallVoid(_mb_seek, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_process_callback =
      resolveMethodBind('AnimationPlayer', 'set_process_callback', 1663839457);

  void setProcessCallback(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_process_callback, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_callback =
      resolveMethodBind('AnimationPlayer', 'get_process_callback', 4207496604);

  int getProcessCallback() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_callback, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_method_call_mode =
      resolveMethodBind('AnimationPlayer', 'set_method_call_mode', 3413514846);

  void setMethodCallMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_method_call_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_method_call_mode =
      resolveMethodBind('AnimationPlayer', 'get_method_call_mode', 3583380054);

  int getMethodCallMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_method_call_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_root(): an argument type is unsupported.
  // Skipped get_root(): unsupported return type "NodePath".
}
