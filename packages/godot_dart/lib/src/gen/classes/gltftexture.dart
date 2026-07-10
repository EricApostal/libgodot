// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFTexture extends Resource {
  GLTFTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFTexture.create() {
    return GLTFTexture(resolveClassConstructor('GLTFTexture'));
  }

  static final Pointer<Void> _mb_get_src_image =
      resolveMethodBind('GLTFTexture', 'get_src_image', 3905245786);

  int getSrcImage() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_src_image, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_src_image =
      resolveMethodBind('GLTFTexture', 'set_src_image', 1286410249);

  void setSrcImage(int srcImage) {
    final arg0 = malloc<Int64>()..value = srcImage;
    try {
      ptrcallVoid(_mb_set_src_image, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sampler =
      resolveMethodBind('GLTFTexture', 'get_sampler', 3905245786);

  int getSampler() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sampler, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sampler =
      resolveMethodBind('GLTFTexture', 'set_sampler', 1286410249);

  void setSampler(int sampler) {
    final arg0 = malloc<Int64>()..value = sampler;
    try {
      ptrcallVoid(_mb_set_sampler, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
