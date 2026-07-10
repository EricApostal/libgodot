// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisibleOnScreenEnabler3D extends VisibleOnScreenNotifier3D {
  VisibleOnScreenEnabler3D(super.nativePtr);

  static final Pointer<Void> _mb_set_enable_mode =
      resolveMethodBind('VisibleOnScreenEnabler3D', 'set_enable_mode', 320303646);

  void setEnableMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_enable_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_mode =
      resolveMethodBind('VisibleOnScreenEnabler3D', 'get_enable_mode', 3352990031);

  int getEnableMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_enable_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_enable_node_path(): an argument type is unsupported.
  // Skipped get_enable_node_path(): unsupported return type "NodePath".
}
