// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PathFollow3D extends Node3D {
  PathFollow3D(super.nativePtr);

  static final Pointer<Void> _mb_set_progress =
      resolveMethodBind('PathFollow3D', 'set_progress', 373806689);

  void setProgress(double progress) {
    final arg0 = malloc<Double>()..value = progress;
    try {
      ptrcallVoid(_mb_set_progress, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_progress =
      resolveMethodBind('PathFollow3D', 'get_progress', 1740695150);

  double getProgress() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_progress, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_h_offset =
      resolveMethodBind('PathFollow3D', 'set_h_offset', 373806689);

  void setHOffset(double hOffset) {
    final arg0 = malloc<Double>()..value = hOffset;
    try {
      ptrcallVoid(_mb_set_h_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_h_offset =
      resolveMethodBind('PathFollow3D', 'get_h_offset', 1740695150);

  double getHOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_h_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_v_offset =
      resolveMethodBind('PathFollow3D', 'set_v_offset', 373806689);

  void setVOffset(double vOffset) {
    final arg0 = malloc<Double>()..value = vOffset;
    try {
      ptrcallVoid(_mb_set_v_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_v_offset =
      resolveMethodBind('PathFollow3D', 'get_v_offset', 1740695150);

  double getVOffset() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_v_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_progress_ratio =
      resolveMethodBind('PathFollow3D', 'set_progress_ratio', 373806689);

  void setProgressRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_set_progress_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_progress_ratio =
      resolveMethodBind('PathFollow3D', 'get_progress_ratio', 1740695150);

  double getProgressRatio() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_progress_ratio, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation_mode =
      resolveMethodBind('PathFollow3D', 'set_rotation_mode', 1640311967);

  void setRotationMode(int rotationMode) {
    final arg0 = malloc<Int64>()..value = rotationMode;
    try {
      ptrcallVoid(_mb_set_rotation_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation_mode =
      resolveMethodBind('PathFollow3D', 'get_rotation_mode', 3814010545);

  int getRotationMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rotation_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cubic_interpolation =
      resolveMethodBind('PathFollow3D', 'set_cubic_interpolation', 2586408642);

  void setCubicInterpolation(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_cubic_interpolation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cubic_interpolation =
      resolveMethodBind('PathFollow3D', 'get_cubic_interpolation', 36873697);

  bool getCubicInterpolation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_cubic_interpolation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_model_front =
      resolveMethodBind('PathFollow3D', 'set_use_model_front', 2586408642);

  void setUseModelFront(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_model_front, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_model_front =
      resolveMethodBind('PathFollow3D', 'is_using_model_front', 36873697);

  bool isUsingModelFront() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_model_front, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop =
      resolveMethodBind('PathFollow3D', 'set_loop', 2586408642);

  void setLoop(bool loop) {
    final arg0 = malloc<Uint8>()..value = loop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_loop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_loop =
      resolveMethodBind('PathFollow3D', 'has_loop', 36873697);

  bool hasLoop() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_loop, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tilt_enabled =
      resolveMethodBind('PathFollow3D', 'set_tilt_enabled', 2586408642);

  void setTiltEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tilt_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_tilt_enabled =
      resolveMethodBind('PathFollow3D', 'is_tilt_enabled', 36873697);

  bool isTiltEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tilt_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
