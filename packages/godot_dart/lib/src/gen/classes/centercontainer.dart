// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CenterContainer extends Container {
  CenterContainer(super.nativePtr);

  /// Constructs a brand-new engine-owned CenterContainer instance
  /// (via classdb_construct_object3), not an existing one.
  factory CenterContainer.create() {
    return CenterContainer(resolveClassConstructor('CenterContainer'));
  }

  static final Pointer<Void> _mb_set_use_top_left =
      resolveMethodBind('CenterContainer', 'set_use_top_left', 2586408642);

  void setUseTopLeft(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_top_left, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_top_left =
      resolveMethodBind('CenterContainer', 'is_using_top_left', 36873697);

  bool isUsingTopLeft() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_top_left, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
