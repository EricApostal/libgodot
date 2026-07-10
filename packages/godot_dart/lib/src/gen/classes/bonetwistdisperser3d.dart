// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class BoneTwistDisperser3D extends SkeletonModifier3D {
  BoneTwistDisperser3D(super.nativePtr);

  /// Constructs a brand-new engine-owned BoneTwistDisperser3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory BoneTwistDisperser3D.create() {
    return BoneTwistDisperser3D(resolveClassConstructor('BoneTwistDisperser3D'));
  }

  static final Pointer<Void> _mb_set_setting_count =
      resolveMethodBind('BoneTwistDisperser3D', 'set_setting_count', 1286410249);

  void setSettingCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_setting_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_setting_count =
      resolveMethodBind('BoneTwistDisperser3D', 'get_setting_count', 3905245786);

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

  static final Pointer<Void> _mb_clear_settings =
      resolveMethodBind('BoneTwistDisperser3D', 'clear_settings', 3218959716);

  void clearSettings() {
    try {
      ptrcallVoid(_mb_clear_settings, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mutable_bone_axes =
      resolveMethodBind('BoneTwistDisperser3D', 'set_mutable_bone_axes', 2586408642);

  void setMutableBoneAxes(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_mutable_bone_axes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_bone_axes_mutable =
      resolveMethodBind('BoneTwistDisperser3D', 'are_bone_axes_mutable', 36873697);

  bool areBoneAxesMutable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_bone_axes_mutable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_root_bone_name =
      resolveMethodBind('BoneTwistDisperser3D', 'set_root_bone_name', 501894301);

  void setRootBoneName(int index, String boneName) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_root_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_root_bone_name =
      resolveMethodBind('BoneTwistDisperser3D', 'get_root_bone_name', 844755477);

  String getRootBoneName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_root_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_root_bone =
      resolveMethodBind('BoneTwistDisperser3D', 'set_root_bone', 3937882851);

  void setRootBone(int index, int bone) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_root_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_root_bone =
      resolveMethodBind('BoneTwistDisperser3D', 'get_root_bone', 923996154);

  int getRootBone(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_root_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_end_bone_name =
      resolveMethodBind('BoneTwistDisperser3D', 'set_end_bone_name', 501894301);

  void setEndBoneName(int index, String boneName) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_end_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_end_bone_name =
      resolveMethodBind('BoneTwistDisperser3D', 'get_end_bone_name', 844755477);

  String getEndBoneName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_end_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_end_bone =
      resolveMethodBind('BoneTwistDisperser3D', 'set_end_bone', 3937882851);

  void setEndBone(int index, int bone) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_end_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_end_bone =
      resolveMethodBind('BoneTwistDisperser3D', 'get_end_bone', 923996154);

  int getEndBone(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_end_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_reference_bone_name =
      resolveMethodBind('BoneTwistDisperser3D', 'get_reference_bone_name', 844755477);

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

  static final Pointer<Void> _mb_get_reference_bone =
      resolveMethodBind('BoneTwistDisperser3D', 'get_reference_bone', 923996154);

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

  static final Pointer<Void> _mb_set_extend_end_bone =
      resolveMethodBind('BoneTwistDisperser3D', 'set_extend_end_bone', 300928843);

  void setExtendEndBone(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_extend_end_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_end_bone_extended =
      resolveMethodBind('BoneTwistDisperser3D', 'is_end_bone_extended', 1116898809);

  bool isEndBoneExtended(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_end_bone_extended, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_end_bone_direction =
      resolveMethodBind('BoneTwistDisperser3D', 'set_end_bone_direction', 2838484201);

  void setEndBoneDirection(int index, int boneDirection) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = boneDirection;
    try {
      ptrcallVoid(_mb_set_end_bone_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_end_bone_direction =
      resolveMethodBind('BoneTwistDisperser3D', 'get_end_bone_direction', 1843036459);

  int getEndBoneDirection(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_end_bone_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_twist_from_rest =
      resolveMethodBind('BoneTwistDisperser3D', 'set_twist_from_rest', 300928843);

  void setTwistFromRest(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_twist_from_rest, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_twist_from_rest =
      resolveMethodBind('BoneTwistDisperser3D', 'is_twist_from_rest', 1116898809);

  bool isTwistFromRest(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_twist_from_rest, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_twist_from =
      resolveMethodBind('BoneTwistDisperser3D', 'set_twist_from', 2823819782);

  void setTwistFrom(int index, Quaternion from) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Quaternion.nativeSize);
    from.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_twist_from, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_twist_from =
      resolveMethodBind('BoneTwistDisperser3D', 'get_twist_from', 476865136);

  Quaternion getTwistFrom(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_twist_from, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_disperse_mode =
      resolveMethodBind('BoneTwistDisperser3D', 'set_disperse_mode', 2954194337);

  void setDisperseMode(int index, int disperseMode) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = disperseMode;
    try {
      ptrcallVoid(_mb_set_disperse_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_disperse_mode =
      resolveMethodBind('BoneTwistDisperser3D', 'get_disperse_mode', 1326397005);

  int getDisperseMode(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_disperse_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_weight_position =
      resolveMethodBind('BoneTwistDisperser3D', 'set_weight_position', 1602489585);

  void setWeightPosition(int index, double weightPosition) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = weightPosition;
    try {
      ptrcallVoid(_mb_set_weight_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_weight_position =
      resolveMethodBind('BoneTwistDisperser3D', 'get_weight_position', 2339986948);

  double getWeightPosition(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_weight_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_damping_curve =
      resolveMethodBind('BoneTwistDisperser3D', 'set_damping_curve', 1447180063);

  void setDampingCurve(int index, Curve curve) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_damping_curve, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_damping_curve =
      resolveMethodBind('BoneTwistDisperser3D', 'get_damping_curve', 747537754);

  Curve? getDampingCurve(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_damping_curve, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_bone_name =
      resolveMethodBind('BoneTwistDisperser3D', 'get_joint_bone_name', 1391810591);

  String getJointBoneName(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_joint_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_joint_bone =
      resolveMethodBind('BoneTwistDisperser3D', 'get_joint_bone', 3175239445);

  int getJointBone(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_joint_twist_amount =
      resolveMethodBind('BoneTwistDisperser3D', 'get_joint_twist_amount', 3085491603);

  double getJointTwistAmount(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joint_twist_amount, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_twist_amount =
      resolveMethodBind('BoneTwistDisperser3D', 'set_joint_twist_amount', 3506521499);

  void setJointTwistAmount(int index, int joint, double twistAmount) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Double>()..value = twistAmount;
    try {
      ptrcallVoid(_mb_set_joint_twist_amount, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_count =
      resolveMethodBind('BoneTwistDisperser3D', 'get_joint_count', 923996154);

  int getJointCount(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
