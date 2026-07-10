// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFBufferView extends Resource {
  GLTFBufferView(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFBufferView instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFBufferView.create() {
    return GLTFBufferView(resolveClassConstructor('GLTFBufferView'));
  }

  // Skipped load_buffer_view_data(): unsupported return type "PackedByteArray".
  // Skipped to_dictionary(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_buffer =
      resolveMethodBind('GLTFBufferView', 'get_buffer', 3905245786);

  int getBuffer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_buffer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_buffer =
      resolveMethodBind('GLTFBufferView', 'set_buffer', 1286410249);

  void setBuffer(int buffer) {
    final arg0 = malloc<Int64>()..value = buffer;
    try {
      ptrcallVoid(_mb_set_buffer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_byte_offset =
      resolveMethodBind('GLTFBufferView', 'get_byte_offset', 3905245786);

  int getByteOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_byte_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_byte_offset =
      resolveMethodBind('GLTFBufferView', 'set_byte_offset', 1286410249);

  void setByteOffset(int byteOffset) {
    final arg0 = malloc<Int64>()..value = byteOffset;
    try {
      ptrcallVoid(_mb_set_byte_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_byte_length =
      resolveMethodBind('GLTFBufferView', 'get_byte_length', 3905245786);

  int getByteLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_byte_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_byte_length =
      resolveMethodBind('GLTFBufferView', 'set_byte_length', 1286410249);

  void setByteLength(int byteLength) {
    final arg0 = malloc<Int64>()..value = byteLength;
    try {
      ptrcallVoid(_mb_set_byte_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_byte_stride =
      resolveMethodBind('GLTFBufferView', 'get_byte_stride', 3905245786);

  int getByteStride() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_byte_stride, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_byte_stride =
      resolveMethodBind('GLTFBufferView', 'set_byte_stride', 1286410249);

  void setByteStride(int byteStride) {
    final arg0 = malloc<Int64>()..value = byteStride;
    try {
      ptrcallVoid(_mb_set_byte_stride, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_indices =
      resolveMethodBind('GLTFBufferView', 'get_indices', 36873697);

  bool getIndices() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_indices, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_indices =
      resolveMethodBind('GLTFBufferView', 'set_indices', 2586408642);

  void setIndices(bool indices) {
    final arg0 = malloc<Uint8>()..value = indices ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_indices, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertex_attributes =
      resolveMethodBind('GLTFBufferView', 'get_vertex_attributes', 36873697);

  bool getVertexAttributes() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_vertex_attributes, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertex_attributes =
      resolveMethodBind('GLTFBufferView', 'set_vertex_attributes', 2586408642);

  void setVertexAttributes(bool isAttributes) {
    final arg0 = malloc<Uint8>()..value = isAttributes ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_vertex_attributes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
