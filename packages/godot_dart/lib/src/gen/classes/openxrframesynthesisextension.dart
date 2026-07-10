// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRFrameSynthesisExtension extends OpenXRExtensionWrapper {
  OpenXRFrameSynthesisExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRFrameSynthesisExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRFrameSynthesisExtension.create() {
    return OpenXRFrameSynthesisExtension(resolveClassConstructor('OpenXRFrameSynthesisExtension'));
  }

  static final Pointer<Void> _mb_is_available =
      resolveMethodBind('OpenXRFrameSynthesisExtension', 'is_available', 36873697);

  bool isAvailable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_available, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_enabled =
      resolveMethodBind('OpenXRFrameSynthesisExtension', 'is_enabled', 36873697);

  bool isEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('OpenXRFrameSynthesisExtension', 'set_enabled', 2586408642);

  void setEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_relax_frame_interval =
      resolveMethodBind('OpenXRFrameSynthesisExtension', 'get_relax_frame_interval', 36873697);

  bool getRelaxFrameInterval() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_relax_frame_interval, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_relax_frame_interval =
      resolveMethodBind('OpenXRFrameSynthesisExtension', 'set_relax_frame_interval', 2586408642);

  void setRelaxFrameInterval(bool relaxFrameInterval) {
    final arg0 = malloc<Uint8>()..value = relaxFrameInterval ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_relax_frame_interval, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_skip_next_frame =
      resolveMethodBind('OpenXRFrameSynthesisExtension', 'skip_next_frame', 3218959716);

  void skipNextFrame() {
    try {
      ptrcallVoid(_mb_skip_next_frame, nativePtr, []);
    } finally {
    }
  }

}
