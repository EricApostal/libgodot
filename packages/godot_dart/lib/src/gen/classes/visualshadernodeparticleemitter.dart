// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeParticleEmitter extends VisualShaderNode {
  VisualShaderNodeParticleEmitter(super.nativePtr);

  static final Pointer<Void> _mb_set_mode_2d =
      resolveMethodBind('VisualShaderNodeParticleEmitter', 'set_mode_2d', 2586408642);

  void setMode2d(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_mode_2d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_mode_2d =
      resolveMethodBind('VisualShaderNodeParticleEmitter', 'is_mode_2d', 36873697);

  bool isMode2d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_mode_2d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
