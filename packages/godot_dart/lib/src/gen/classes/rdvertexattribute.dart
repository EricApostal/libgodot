// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDVertexAttribute extends RefCounted {
  RDVertexAttribute(super.nativePtr);

  /// Constructs a brand-new engine-owned RDVertexAttribute instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDVertexAttribute.create() {
    return RDVertexAttribute(resolveClassConstructor('RDVertexAttribute'));
  }

  static final Pointer<Void> _mb_set_binding =
      resolveMethodBind('RDVertexAttribute', 'set_binding', 1286410249);

  void setBinding(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_binding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_binding =
      resolveMethodBind('RDVertexAttribute', 'get_binding', 3905245786);

  int getBinding() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_binding, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_location =
      resolveMethodBind('RDVertexAttribute', 'set_location', 1286410249);

  void setLocation(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_location, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_location =
      resolveMethodBind('RDVertexAttribute', 'get_location', 3905245786);

  int getLocation() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_location, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_offset =
      resolveMethodBind('RDVertexAttribute', 'set_offset', 1286410249);

  void setOffset(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset =
      resolveMethodBind('RDVertexAttribute', 'get_offset', 3905245786);

  int getOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_format =
      resolveMethodBind('RDVertexAttribute', 'set_format', 565531219);

  void setFormat(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('RDVertexAttribute', 'get_format', 2235804183);

  int getFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_stride =
      resolveMethodBind('RDVertexAttribute', 'set_stride', 1286410249);

  void setStride(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_stride, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_stride =
      resolveMethodBind('RDVertexAttribute', 'get_stride', 3905245786);

  int getStride() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_stride, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_frequency =
      resolveMethodBind('RDVertexAttribute', 'set_frequency', 522141836);

  void setFrequency(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_frequency, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frequency =
      resolveMethodBind('RDVertexAttribute', 'get_frequency', 4154106413);

  int getFrequency() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frequency, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
