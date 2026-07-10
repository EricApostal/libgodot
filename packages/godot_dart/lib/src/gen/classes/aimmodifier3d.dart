// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AimModifier3D extends BoneConstraint3D {
  AimModifier3D(super.nativePtr);

  /// Constructs a brand-new engine-owned AimModifier3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory AimModifier3D.create() {
    return AimModifier3D(resolveClassConstructor('AimModifier3D'));
  }

  static final Pointer<Void> _mb_set_forward_axis =
      resolveMethodBind('AimModifier3D', 'set_forward_axis', 2496831085);

  void setForwardAxis(int index, int axis) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_forward_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_forward_axis =
      resolveMethodBind('AimModifier3D', 'get_forward_axis', 3949866735);

  int getForwardAxis(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_forward_axis, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_euler =
      resolveMethodBind('AimModifier3D', 'set_use_euler', 300928843);

  void setUseEuler(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_euler, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_using_euler =
      resolveMethodBind('AimModifier3D', 'is_using_euler', 1116898809);

  bool isUsingEuler(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_euler, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_primary_rotation_axis =
      resolveMethodBind('AimModifier3D', 'set_primary_rotation_axis', 776736805);

  void setPrimaryRotationAxis(int index, int axis) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_primary_rotation_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_primary_rotation_axis =
      resolveMethodBind('AimModifier3D', 'get_primary_rotation_axis', 4131134770);

  int getPrimaryRotationAxis(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_primary_rotation_axis, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_use_secondary_rotation =
      resolveMethodBind('AimModifier3D', 'set_use_secondary_rotation', 300928843);

  void setUseSecondaryRotation(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_secondary_rotation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_using_secondary_rotation =
      resolveMethodBind('AimModifier3D', 'is_using_secondary_rotation', 1116898809);

  bool isUsingSecondaryRotation(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_secondary_rotation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_relative =
      resolveMethodBind('AimModifier3D', 'set_relative', 300928843);

  void setRelative(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_relative, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_relative =
      resolveMethodBind('AimModifier3D', 'is_relative', 1116898809);

  bool isRelative(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_relative, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
