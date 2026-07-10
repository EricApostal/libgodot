// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDAccelerationStructureInstance extends RefCounted {
  RDAccelerationStructureInstance(super.nativePtr);

  static final Pointer<Void> _mb_set_transform =
      resolveMethodBind('RDAccelerationStructureInstance', 'set_transform', 2952846383);

  void setTransform(Transform3D pMember) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    pMember.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_transform =
      resolveMethodBind('RDAccelerationStructureInstance', 'get_transform', 3229777777);

  Transform3D getTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_id =
      resolveMethodBind('RDAccelerationStructureInstance', 'set_id', 1286410249);

  void setId(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_id =
      resolveMethodBind('RDAccelerationStructureInstance', 'get_id', 3905245786);

  int getId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mask =
      resolveMethodBind('RDAccelerationStructureInstance', 'set_mask', 1286410249);

  void setMask(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mask =
      resolveMethodBind('RDAccelerationStructureInstance', 'get_mask', 3905245786);

  int getMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hit_sbt_range =
      resolveMethodBind('RDAccelerationStructureInstance', 'set_hit_sbt_range', 1286410249);

  void setHitSbtRange(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_hit_sbt_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_hit_sbt_range =
      resolveMethodBind('RDAccelerationStructureInstance', 'get_hit_sbt_range', 3905245786);

  int getHitSbtRange() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_hit_sbt_range, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flags =
      resolveMethodBind('RDAccelerationStructureInstance', 'set_flags', 2971840141);

  void setFlags(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_flags =
      resolveMethodBind('RDAccelerationStructureInstance', 'get_flags', 2410182637);

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

  // Skipped set_blas(): an argument type is unsupported.
  // Skipped get_blas(): unsupported return type "RID".
}
