// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeSample3D extends VisualShaderNode {
  VisualShaderNodeSample3D(super.nativePtr);

  static final Pointer<Void> _mb_set_source =
      resolveMethodBind('VisualShaderNodeSample3D', 'set_source', 3315130991);

  void setSource(int value) {
    final arg0 = malloc<Int64>()..value = value;
    try {
      ptrcallVoid(_mb_set_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_source =
      resolveMethodBind('VisualShaderNodeSample3D', 'get_source', 1079494121);

  int getSource() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_source, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
