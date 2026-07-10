// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeStateMachinePlayback extends Resource {
  AnimationNodeStateMachinePlayback(super.nativePtr);

  static final Pointer<Void> _mb_travel =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'travel', 3823612587);

  void travel(String toNode, bool resetOnTeleport) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), toNode);
    final arg1 = malloc<Uint8>()..value = resetOnTeleport ? 1 : 0;
    try {
      ptrcallVoid(_mb_travel, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_start =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'start', 3823612587);

  void start(String node, bool reset) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), node);
    final arg1 = malloc<Uint8>()..value = reset ? 1 : 0;
    try {
      ptrcallVoid(_mb_start, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_next =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'next', 3218959716);

  void next() {
    try {
      ptrcallVoid(_mb_next, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_stop =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'stop', 3218959716);

  void stop() {
    try {
      ptrcallVoid(_mb_stop, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_playing =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'is_playing', 36873697);

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

  static final Pointer<Void> _mb_get_current_node =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_current_node', 2002593661);

  String getCurrentNode() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_node, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_play_position =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_current_play_position', 1740695150);

  double getCurrentPlayPosition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_current_play_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_length =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_current_length', 1740695150);

  double getCurrentLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_current_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fading_from_node =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_fading_from_node', 2002593661);

  String getFadingFromNode() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_fading_from_node, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fading_from_play_position =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_fading_from_play_position', 1740695150);

  double getFadingFromPlayPosition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fading_from_play_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fading_from_length =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_fading_from_length', 1740695150);

  double getFadingFromLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fading_from_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fading_position =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_fading_position', 1740695150);

  double getFadingPosition() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fading_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_fading_length =
      resolveMethodBind('AnimationNodeStateMachinePlayback', 'get_fading_length', 1740695150);

  double getFadingLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fading_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_travel_path(): unsupported return type "typedarray::StringName".
}
