// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Path2D extends Node2D {
  Path2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Path2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Path2D.create() {
    return Path2D(resolveClassConstructor('Path2D'));
  }

  static final Pointer<Void> _mb_set_curve =
      resolveMethodBind('Path2D', 'set_curve', 659985499);

  void setCurve(Curve2D curve) {
    final arg0 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_curve, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_curve =
      resolveMethodBind('Path2D', 'get_curve', 660369445);

  Curve2D? getCurve() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_curve, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
