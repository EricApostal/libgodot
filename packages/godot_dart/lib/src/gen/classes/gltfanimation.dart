// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFAnimation extends Resource {
  GLTFAnimation(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFAnimation instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFAnimation.create() {
    return GLTFAnimation(resolveClassConstructor('GLTFAnimation'));
  }

  static final Pointer<Void> _mb_get_original_name =
      resolveMethodBind('GLTFAnimation', 'get_original_name', 2841200299);

  String getOriginalName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_original_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_original_name =
      resolveMethodBind('GLTFAnimation', 'set_original_name', 83702148);

  void setOriginalName(String originalName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), originalName);
    try {
      ptrcallVoid(_mb_set_original_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_loop =
      resolveMethodBind('GLTFAnimation', 'get_loop', 36873697);

  bool getLoop() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_loop, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_loop =
      resolveMethodBind('GLTFAnimation', 'set_loop', 2586408642);

  void setLoop(bool loop) {
    final arg0 = malloc<Uint8>()..value = loop ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_loop, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_additional_data(): unsupported return type "Variant".
  // Skipped set_additional_data(): an argument type is unsupported.
}
