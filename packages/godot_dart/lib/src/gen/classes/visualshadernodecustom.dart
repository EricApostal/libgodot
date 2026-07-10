// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeCustom extends VisualShaderNode {
  VisualShaderNodeCustom(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeCustom instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeCustom.create() {
    return VisualShaderNodeCustom(resolveClassConstructor('VisualShaderNodeCustom'));
  }

  static final Pointer<Void> _mb_get_option_index =
      resolveMethodBind('VisualShaderNodeCustom', 'get_option_index', 923996154);

  int getOptionIndex(int option) {
    final arg0 = malloc<Int64>()..value = option;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_option_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
