// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamWAV extends AudioStream {
  AudioStreamWAV(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioStreamWAV instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioStreamWAV.create() {
    return AudioStreamWAV(resolveClassConstructor('AudioStreamWAV'));
  }

  // Skipped set_data(): an argument type is unsupported.
  // Skipped get_data(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_set_format =
      resolveMethodBind('AudioStreamWAV', 'set_format', 60648488);

  void setFormat(int format) {
    final arg0 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_set_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('AudioStreamWAV', 'get_format', 3151724922);

  int getFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop_mode =
      resolveMethodBind('AudioStreamWAV', 'set_loop_mode', 2444882972);

  void setLoopMode(int loopMode) {
    final arg0 = malloc<Int64>()..value = loopMode;
    try {
      ptrcallVoid(_mb_set_loop_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loop_mode =
      resolveMethodBind('AudioStreamWAV', 'get_loop_mode', 393560655);

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

  static final Pointer<Void> _mb_set_loop_begin =
      resolveMethodBind('AudioStreamWAV', 'set_loop_begin', 1286410249);

  void setLoopBegin(int loopBegin) {
    final arg0 = malloc<Int64>()..value = loopBegin;
    try {
      ptrcallVoid(_mb_set_loop_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loop_begin =
      resolveMethodBind('AudioStreamWAV', 'get_loop_begin', 3905245786);

  int getLoopBegin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_loop_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop_end =
      resolveMethodBind('AudioStreamWAV', 'set_loop_end', 1286410249);

  void setLoopEnd(int loopEnd) {
    final arg0 = malloc<Int64>()..value = loopEnd;
    try {
      ptrcallVoid(_mb_set_loop_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loop_end =
      resolveMethodBind('AudioStreamWAV', 'get_loop_end', 3905245786);

  int getLoopEnd() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_loop_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mix_rate =
      resolveMethodBind('AudioStreamWAV', 'set_mix_rate', 1286410249);

  void setMixRate(int mixRate) {
    final arg0 = malloc<Int64>()..value = mixRate;
    try {
      ptrcallVoid(_mb_set_mix_rate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mix_rate =
      resolveMethodBind('AudioStreamWAV', 'get_mix_rate', 3905245786);

  int getMixRate() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mix_rate, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stereo =
      resolveMethodBind('AudioStreamWAV', 'set_stereo', 2586408642);

  void setStereo(bool stereo) {
    final arg0 = malloc<Uint8>()..value = stereo ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_stereo, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_stereo =
      resolveMethodBind('AudioStreamWAV', 'is_stereo', 36873697);

  bool isStereo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_stereo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_tags(): an argument type is unsupported.
  // Skipped get_tags(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_save_to_wav =
      resolveMethodBind('AudioStreamWAV', 'save_to_wav', 166001499);

  int saveToWav(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_to_wav, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

}
