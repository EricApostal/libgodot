// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDAccelerationStructureGeometry extends RefCounted {
  RDAccelerationStructureGeometry(super.nativePtr);

  static final Pointer<Void> _mb_set_flags =
      resolveMethodBind('RDAccelerationStructureGeometry', 'set_flags', 1046628555);

  void setFlags(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flags =
      resolveMethodBind('RDAccelerationStructureGeometry', 'get_flags', 1694887119);

  int getFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_vertex_buffer(): an argument type is unsupported.
  // Skipped get_vertex_buffer(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_vertex_offset =
      resolveMethodBind('RDAccelerationStructureGeometry', 'set_vertex_offset', 1286410249);

  void setVertexOffset(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_vertex_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertex_offset =
      resolveMethodBind('RDAccelerationStructureGeometry', 'get_vertex_offset', 3905245786);

  int getVertexOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertex_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertex_stride =
      resolveMethodBind('RDAccelerationStructureGeometry', 'set_vertex_stride', 1286410249);

  void setVertexStride(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_vertex_stride, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertex_stride =
      resolveMethodBind('RDAccelerationStructureGeometry', 'get_vertex_stride', 3905245786);

  int getVertexStride() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertex_stride, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertex_count =
      resolveMethodBind('RDAccelerationStructureGeometry', 'set_vertex_count', 1286410249);

  void setVertexCount(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_vertex_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertex_count =
      resolveMethodBind('RDAccelerationStructureGeometry', 'get_vertex_count', 3905245786);

  int getVertexCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertex_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vertex_format =
      resolveMethodBind('RDAccelerationStructureGeometry', 'set_vertex_format', 565531219);

  void setVertexFormat(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_vertex_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vertex_format =
      resolveMethodBind('RDAccelerationStructureGeometry', 'get_vertex_format', 2235804183);

  int getVertexFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vertex_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_index_buffer(): an argument type is unsupported.
  // Skipped get_index_buffer(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_index_offset =
      resolveMethodBind('RDAccelerationStructureGeometry', 'set_index_offset', 1286410249);

  void setIndexOffset(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_index_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_index_offset =
      resolveMethodBind('RDAccelerationStructureGeometry', 'get_index_offset', 3905245786);

  int getIndexOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_index_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_index_count =
      resolveMethodBind('RDAccelerationStructureGeometry', 'set_index_count', 1286410249);

  void setIndexCount(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_index_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_index_count =
      resolveMethodBind('RDAccelerationStructureGeometry', 'get_index_count', 3905245786);

  int getIndexCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_index_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
