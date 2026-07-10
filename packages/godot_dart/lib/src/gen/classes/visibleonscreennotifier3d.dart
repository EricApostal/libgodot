// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisibleOnScreenNotifier3D extends VisualInstance3D {
  VisibleOnScreenNotifier3D(super.nativePtr);

  static final Pointer<Void> _mb_set_aabb =
      resolveMethodBind('VisibleOnScreenNotifier3D', 'set_aabb', 259215842);

  void setAabb(AABB rect) {
    final arg0 = malloc<Uint8>(AABB.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_aabb, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_on_screen =
      resolveMethodBind('VisibleOnScreenNotifier3D', 'is_on_screen', 36873697);

  bool isOnScreen() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_on_screen, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
