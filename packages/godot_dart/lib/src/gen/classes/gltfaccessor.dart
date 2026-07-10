// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFAccessor extends Resource {
  GLTFAccessor(super.nativePtr);

  // Skipped to_dictionary(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_buffer_view =
      resolveMethodBind('GLTFAccessor', 'get_buffer_view', 3905245786);

  int getBufferView() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_buffer_view, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_buffer_view =
      resolveMethodBind('GLTFAccessor', 'set_buffer_view', 1286410249);

  void setBufferView(int bufferView) {
    final arg0 = malloc<Int64>()..value = bufferView;
    try {
      ptrcallVoid(_mb_set_buffer_view, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_byte_offset =
      resolveMethodBind('GLTFAccessor', 'get_byte_offset', 3905245786);

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
      resolveMethodBind('GLTFAccessor', 'set_byte_offset', 1286410249);

  void setByteOffset(int byteOffset) {
    final arg0 = malloc<Int64>()..value = byteOffset;
    try {
      ptrcallVoid(_mb_set_byte_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_component_type =
      resolveMethodBind('GLTFAccessor', 'get_component_type', 852227802);

  int getComponentType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_component_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_component_type =
      resolveMethodBind('GLTFAccessor', 'set_component_type', 1780020221);

  void setComponentType(int componentType) {
    final arg0 = malloc<Int64>()..value = componentType;
    try {
      ptrcallVoid(_mb_set_component_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_normalized =
      resolveMethodBind('GLTFAccessor', 'get_normalized', 36873697);

  bool getNormalized() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_normalized, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_normalized =
      resolveMethodBind('GLTFAccessor', 'set_normalized', 2586408642);

  void setNormalized(bool normalized) {
    final arg0 = malloc<Uint8>()..value = normalized ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_normalized, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_count =
      resolveMethodBind('GLTFAccessor', 'get_count', 3905245786);

  int getCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_count =
      resolveMethodBind('GLTFAccessor', 'set_count', 1286410249);

  void setCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_accessor_type =
      resolveMethodBind('GLTFAccessor', 'get_accessor_type', 1998183368);

  int getAccessorType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_accessor_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accessor_type =
      resolveMethodBind('GLTFAccessor', 'set_accessor_type', 2347728198);

  void setAccessorType(int accessorType) {
    final arg0 = malloc<Int64>()..value = accessorType;
    try {
      ptrcallVoid(_mb_set_accessor_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_type =
      resolveMethodBind('GLTFAccessor', 'get_type', 3905245786);

  int getType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_type =
      resolveMethodBind('GLTFAccessor', 'set_type', 1286410249);

  void setType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_min(): unsupported return type "PackedFloat64Array".
  // Skipped set_min(): an argument type is unsupported.
  // Skipped get_max(): unsupported return type "PackedFloat64Array".
  // Skipped set_max(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_sparse_count =
      resolveMethodBind('GLTFAccessor', 'get_sparse_count', 3905245786);

  int getSparseCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sparse_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sparse_count =
      resolveMethodBind('GLTFAccessor', 'set_sparse_count', 1286410249);

  void setSparseCount(int sparseCount) {
    final arg0 = malloc<Int64>()..value = sparseCount;
    try {
      ptrcallVoid(_mb_set_sparse_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sparse_indices_buffer_view =
      resolveMethodBind('GLTFAccessor', 'get_sparse_indices_buffer_view', 3905245786);

  int getSparseIndicesBufferView() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sparse_indices_buffer_view, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sparse_indices_buffer_view =
      resolveMethodBind('GLTFAccessor', 'set_sparse_indices_buffer_view', 1286410249);

  void setSparseIndicesBufferView(int sparseIndicesBufferView) {
    final arg0 = malloc<Int64>()..value = sparseIndicesBufferView;
    try {
      ptrcallVoid(_mb_set_sparse_indices_buffer_view, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sparse_indices_byte_offset =
      resolveMethodBind('GLTFAccessor', 'get_sparse_indices_byte_offset', 3905245786);

  int getSparseIndicesByteOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sparse_indices_byte_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sparse_indices_byte_offset =
      resolveMethodBind('GLTFAccessor', 'set_sparse_indices_byte_offset', 1286410249);

  void setSparseIndicesByteOffset(int sparseIndicesByteOffset) {
    final arg0 = malloc<Int64>()..value = sparseIndicesByteOffset;
    try {
      ptrcallVoid(_mb_set_sparse_indices_byte_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sparse_indices_component_type =
      resolveMethodBind('GLTFAccessor', 'get_sparse_indices_component_type', 852227802);

  int getSparseIndicesComponentType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sparse_indices_component_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sparse_indices_component_type =
      resolveMethodBind('GLTFAccessor', 'set_sparse_indices_component_type', 1780020221);

  void setSparseIndicesComponentType(int sparseIndicesComponentType) {
    final arg0 = malloc<Int64>()..value = sparseIndicesComponentType;
    try {
      ptrcallVoid(_mb_set_sparse_indices_component_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sparse_values_buffer_view =
      resolveMethodBind('GLTFAccessor', 'get_sparse_values_buffer_view', 3905245786);

  int getSparseValuesBufferView() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sparse_values_buffer_view, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sparse_values_buffer_view =
      resolveMethodBind('GLTFAccessor', 'set_sparse_values_buffer_view', 1286410249);

  void setSparseValuesBufferView(int sparseValuesBufferView) {
    final arg0 = malloc<Int64>()..value = sparseValuesBufferView;
    try {
      ptrcallVoid(_mb_set_sparse_values_buffer_view, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sparse_values_byte_offset =
      resolveMethodBind('GLTFAccessor', 'get_sparse_values_byte_offset', 3905245786);

  int getSparseValuesByteOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sparse_values_byte_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sparse_values_byte_offset =
      resolveMethodBind('GLTFAccessor', 'set_sparse_values_byte_offset', 1286410249);

  void setSparseValuesByteOffset(int sparseValuesByteOffset) {
    final arg0 = malloc<Int64>()..value = sparseValuesByteOffset;
    try {
      ptrcallVoid(_mb_set_sparse_values_byte_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
