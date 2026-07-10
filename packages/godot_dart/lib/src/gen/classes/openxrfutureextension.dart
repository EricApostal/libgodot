// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRFutureExtension extends OpenXRExtensionWrapper {
  OpenXRFutureExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRFutureExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRFutureExtension.create() {
    return OpenXRFutureExtension(resolveClassConstructor('OpenXRFutureExtension'));
  }

  static final Pointer<Void> _mb_is_active =
      resolveMethodBind('OpenXRFutureExtension', 'is_active', 36873697);

  bool isActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped register_future(): an argument type is unsupported.
  static final Pointer<Void> _mb_cancel_future =
      resolveMethodBind('OpenXRFutureExtension', 'cancel_future', 1286410249);

  void cancelFuture(int future) {
    final arg0 = malloc<Int64>()..value = future;
    try {
      ptrcallVoid(_mb_cancel_future, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
