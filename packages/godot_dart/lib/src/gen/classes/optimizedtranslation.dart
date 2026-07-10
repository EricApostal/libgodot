// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OptimizedTranslation extends Translation {
  OptimizedTranslation(super.nativePtr);

  static final Pointer<Void> _mb_generate =
      resolveMethodBind('OptimizedTranslation', 'generate', 2141509306);

  bool generate(Translation from) {
    final arg0 = malloc<Pointer<Void>>()..value = from.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_generate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
