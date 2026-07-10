// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SubViewportContainer extends Container {
  SubViewportContainer(super.nativePtr);

  /// Constructs a brand-new engine-owned SubViewportContainer instance
  /// (via classdb_construct_object3), not an existing one.
  factory SubViewportContainer.create() {
    return SubViewportContainer(resolveClassConstructor('SubViewportContainer'));
  }

  static final Pointer<Void> _mb_set_stretch =
      resolveMethodBind('SubViewportContainer', 'set_stretch', 2586408642);

  void setStretch(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_stretch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_stretch_enabled =
      resolveMethodBind('SubViewportContainer', 'is_stretch_enabled', 36873697);

  bool isStretchEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_stretch_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stretch_shrink =
      resolveMethodBind('SubViewportContainer', 'set_stretch_shrink', 1286410249);

  void setStretchShrink(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_stretch_shrink, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stretch_shrink =
      resolveMethodBind('SubViewportContainer', 'get_stretch_shrink', 3905245786);

  int getStretchShrink() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stretch_shrink, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mouse_target =
      resolveMethodBind('SubViewportContainer', 'set_mouse_target', 2586408642);

  void setMouseTarget(bool amount) {
    final arg0 = malloc<Uint8>()..value = amount ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_mouse_target, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_mouse_target_enabled =
      resolveMethodBind('SubViewportContainer', 'is_mouse_target_enabled', 2240911060);

  bool isMouseTargetEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_mouse_target_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
