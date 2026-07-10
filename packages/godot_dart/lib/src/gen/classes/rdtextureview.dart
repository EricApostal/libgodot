// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDTextureView extends RefCounted {
  RDTextureView(super.nativePtr);

  /// Constructs a brand-new engine-owned RDTextureView instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDTextureView.create() {
    return RDTextureView(resolveClassConstructor('RDTextureView'));
  }

  static final Pointer<Void> _mb_set_format_override =
      resolveMethodBind('RDTextureView', 'set_format_override', 565531219);

  void setFormatOverride(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_format_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_format_override =
      resolveMethodBind('RDTextureView', 'get_format_override', 2235804183);

  int getFormatOverride() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format_override, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_swizzle_r =
      resolveMethodBind('RDTextureView', 'set_swizzle_r', 3833362581);

  void setSwizzleR(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_swizzle_r, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_swizzle_r =
      resolveMethodBind('RDTextureView', 'get_swizzle_r', 4150792614);

  int getSwizzleR() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_swizzle_r, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_swizzle_g =
      resolveMethodBind('RDTextureView', 'set_swizzle_g', 3833362581);

  void setSwizzleG(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_swizzle_g, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_swizzle_g =
      resolveMethodBind('RDTextureView', 'get_swizzle_g', 4150792614);

  int getSwizzleG() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_swizzle_g, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_swizzle_b =
      resolveMethodBind('RDTextureView', 'set_swizzle_b', 3833362581);

  void setSwizzleB(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_swizzle_b, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_swizzle_b =
      resolveMethodBind('RDTextureView', 'get_swizzle_b', 4150792614);

  int getSwizzleB() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_swizzle_b, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_swizzle_a =
      resolveMethodBind('RDTextureView', 'set_swizzle_a', 3833362581);

  void setSwizzleA(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_swizzle_a, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_swizzle_a =
      resolveMethodBind('RDTextureView', 'get_swizzle_a', 4150792614);

  int getSwizzleA() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_swizzle_a, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
