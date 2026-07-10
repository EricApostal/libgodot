// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BoneConstraint3D extends SkeletonModifier3D {
  BoneConstraint3D(super.nativePtr);

  /// Constructs a brand-new engine-owned BoneConstraint3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory BoneConstraint3D.create() {
    return BoneConstraint3D(resolveClassConstructor('BoneConstraint3D'));
  }

  static final Pointer<Void> _mb_set_amount =
      resolveMethodBind('BoneConstraint3D', 'set_amount', 1602489585);

  void setAmount(int index, double amount) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = amount;
    try {
      ptrcallVoid(_mb_set_amount, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_amount =
      resolveMethodBind('BoneConstraint3D', 'get_amount', 2339986948);

  double getAmount(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_amount, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_apply_bone_name =
      resolveMethodBind('BoneConstraint3D', 'set_apply_bone_name', 501894301);

  void setApplyBoneName(int index, String boneName) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_apply_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_apply_bone_name =
      resolveMethodBind('BoneConstraint3D', 'get_apply_bone_name', 844755477);

  String getApplyBoneName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_apply_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_apply_bone =
      resolveMethodBind('BoneConstraint3D', 'set_apply_bone', 3937882851);

  void setApplyBone(int index, int bone) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_apply_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_apply_bone =
      resolveMethodBind('BoneConstraint3D', 'get_apply_bone', 923996154);

  int getApplyBone(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_apply_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_type =
      resolveMethodBind('BoneConstraint3D', 'set_reference_type', 1830520418);

  void setReferenceType(int index, int type) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_reference_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_type =
      resolveMethodBind('BoneConstraint3D', 'get_reference_type', 3456416152);

  int getReferenceType(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_reference_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_bone_name =
      resolveMethodBind('BoneConstraint3D', 'set_reference_bone_name', 501894301);

  void setReferenceBoneName(int index, String boneName) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_reference_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_bone_name =
      resolveMethodBind('BoneConstraint3D', 'get_reference_bone_name', 844755477);

  String getReferenceBoneName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_reference_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_bone =
      resolveMethodBind('BoneConstraint3D', 'set_reference_bone', 3937882851);

  void setReferenceBone(int index, int bone) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_reference_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_bone =
      resolveMethodBind('BoneConstraint3D', 'get_reference_bone', 923996154);

  int getReferenceBone(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_reference_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_reference_node(): an argument type is unsupported.
  // Skipped get_reference_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_setting_count =
      resolveMethodBind('BoneConstraint3D', 'set_setting_count', 1286410249);

  void setSettingCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_setting_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_setting_count =
      resolveMethodBind('BoneConstraint3D', 'get_setting_count', 3905245786);

  int getSettingCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_setting_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_setting =
      resolveMethodBind('BoneConstraint3D', 'clear_setting', 3218959716);

  void clearSetting() {
    try {
      ptrcallVoid(_mb_clear_setting, nativePtr, []);
    } finally {
    }
  }

}
