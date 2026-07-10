// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeParticleMultiplyByAxisAngle extends VisualShaderNode {
  VisualShaderNodeParticleMultiplyByAxisAngle(super.nativePtr);

  static final Pointer<Void> _mb_set_degrees_mode =
      resolveMethodBind('VisualShaderNodeParticleMultiplyByAxisAngle', 'set_degrees_mode', 2586408642);

  void setDegreesMode(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_degrees_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_degrees_mode =
      resolveMethodBind('VisualShaderNodeParticleMultiplyByAxisAngle', 'is_degrees_mode', 36873697);

  bool isDegreesMode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_degrees_mode, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
