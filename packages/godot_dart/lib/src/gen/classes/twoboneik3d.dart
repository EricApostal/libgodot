// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TwoBoneIK3D extends IKModifier3D {
  TwoBoneIK3D(super.nativePtr);

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  // Skipped set_pole_node(): an argument type is unsupported.
  // Skipped get_pole_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_root_bone_name =
      resolveMethodBind('TwoBoneIK3D', 'set_root_bone_name', 501894301);

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
      resolveMethodBind('TwoBoneIK3D', 'get_root_bone_name', 844755477);

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
      resolveMethodBind('TwoBoneIK3D', 'set_root_bone', 3937882851);

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
      resolveMethodBind('TwoBoneIK3D', 'get_root_bone', 923996154);

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

  static final Pointer<Void> _mb_set_middle_bone_name =
      resolveMethodBind('TwoBoneIK3D', 'set_middle_bone_name', 501894301);

  void setMiddleBoneName(int index, String boneName) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_middle_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_middle_bone_name =
      resolveMethodBind('TwoBoneIK3D', 'get_middle_bone_name', 844755477);

  String getMiddleBoneName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_middle_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_middle_bone =
      resolveMethodBind('TwoBoneIK3D', 'set_middle_bone', 3937882851);

  void setMiddleBone(int index, int bone) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_middle_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_middle_bone =
      resolveMethodBind('TwoBoneIK3D', 'get_middle_bone', 923996154);

  int getMiddleBone(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_middle_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pole_direction =
      resolveMethodBind('TwoBoneIK3D', 'set_pole_direction', 258741388);

  void setPoleDirection(int index, int direction) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_pole_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_pole_direction =
      resolveMethodBind('TwoBoneIK3D', 'get_pole_direction', 377522128);

  int getPoleDirection(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_pole_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_pole_direction_vector =
      resolveMethodBind('TwoBoneIK3D', 'set_pole_direction_vector', 1530502735);

  void setPoleDirectionVector(int index, Vector3 vector) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    vector.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_pole_direction_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_pole_direction_vector =
      resolveMethodBind('TwoBoneIK3D', 'get_pole_direction_vector', 711720468);

  Vector3 getPoleDirectionVector(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_pole_direction_vector, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_end_bone_name =
      resolveMethodBind('TwoBoneIK3D', 'set_end_bone_name', 501894301);

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
      resolveMethodBind('TwoBoneIK3D', 'get_end_bone_name', 844755477);

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
      resolveMethodBind('TwoBoneIK3D', 'set_end_bone', 3937882851);

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
      resolveMethodBind('TwoBoneIK3D', 'get_end_bone', 923996154);

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

  static final Pointer<Void> _mb_set_use_virtual_end =
      resolveMethodBind('TwoBoneIK3D', 'set_use_virtual_end', 300928843);

  void setUseVirtualEnd(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_virtual_end, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_using_virtual_end =
      resolveMethodBind('TwoBoneIK3D', 'is_using_virtual_end', 1116898809);

  bool isUsingVirtualEnd(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_virtual_end, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_extend_end_bone =
      resolveMethodBind('TwoBoneIK3D', 'set_extend_end_bone', 300928843);

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
      resolveMethodBind('TwoBoneIK3D', 'is_end_bone_extended', 1116898809);

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
      resolveMethodBind('TwoBoneIK3D', 'set_end_bone_direction', 2838484201);

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
      resolveMethodBind('TwoBoneIK3D', 'get_end_bone_direction', 1843036459);

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

  static final Pointer<Void> _mb_set_end_bone_length =
      resolveMethodBind('TwoBoneIK3D', 'set_end_bone_length', 1602489585);

  void setEndBoneLength(int index, double length) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_end_bone_length, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_end_bone_length =
      resolveMethodBind('TwoBoneIK3D', 'get_end_bone_length', 2339986948);

  double getEndBoneLength(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_end_bone_length, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
