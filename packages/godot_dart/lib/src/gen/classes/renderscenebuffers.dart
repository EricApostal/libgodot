// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RenderSceneBuffers extends RefCounted {
  RenderSceneBuffers(super.nativePtr);

  static final Pointer<Void> _mb_configure =
      resolveMethodBind('RenderSceneBuffers', 'configure', 3072623270);

  void configure(RenderSceneBuffersConfiguration config) {
    final arg0 = malloc<Pointer<Void>>()..value = config.nativePtr;
    try {
      ptrcallVoid(_mb_configure, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
