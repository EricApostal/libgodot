// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SpringBoneSimulator3D extends SkeletonModifier3D {
  SpringBoneSimulator3D(super.nativePtr);

  static final Pointer<Void> _mb_set_root_bone_name =
      resolveMethodBind('SpringBoneSimulator3D', 'set_root_bone_name', 501894301);

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
      resolveMethodBind('SpringBoneSimulator3D', 'get_root_bone_name', 844755477);

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
      resolveMethodBind('SpringBoneSimulator3D', 'set_root_bone', 3937882851);

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
      resolveMethodBind('SpringBoneSimulator3D', 'get_root_bone', 923996154);

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
      resolveMethodBind('SpringBoneSimulator3D', 'set_end_bone_name', 501894301);

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
      resolveMethodBind('SpringBoneSimulator3D', 'get_end_bone_name', 844755477);

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
      resolveMethodBind('SpringBoneSimulator3D', 'set_end_bone', 3937882851);

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
      resolveMethodBind('SpringBoneSimulator3D', 'get_end_bone', 923996154);

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

  static final Pointer<Void> _mb_set_extend_end_bone =
      resolveMethodBind('SpringBoneSimulator3D', 'set_extend_end_bone', 300928843);

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
      resolveMethodBind('SpringBoneSimulator3D', 'is_end_bone_extended', 1116898809);

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
      resolveMethodBind('SpringBoneSimulator3D', 'set_end_bone_direction', 2838484201);

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
      resolveMethodBind('SpringBoneSimulator3D', 'get_end_bone_direction', 1843036459);

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
      resolveMethodBind('SpringBoneSimulator3D', 'set_end_bone_length', 1602489585);

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
      resolveMethodBind('SpringBoneSimulator3D', 'get_end_bone_length', 2339986948);

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

  static final Pointer<Void> _mb_set_center_from =
      resolveMethodBind('SpringBoneSimulator3D', 'set_center_from', 2551505749);

  void setCenterFrom(int index, int centerFrom) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = centerFrom;
    try {
      ptrcallVoid(_mb_set_center_from, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_center_from =
      resolveMethodBind('SpringBoneSimulator3D', 'get_center_from', 2721930813);

  int getCenterFrom(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_center_from, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_center_node(): an argument type is unsupported.
  // Skipped get_center_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_center_bone_name =
      resolveMethodBind('SpringBoneSimulator3D', 'set_center_bone_name', 501894301);

  void setCenterBoneName(int index, String boneName) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), boneName);
    try {
      ptrcallVoid(_mb_set_center_bone_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_center_bone_name =
      resolveMethodBind('SpringBoneSimulator3D', 'get_center_bone_name', 844755477);

  String getCenterBoneName(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_center_bone_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_center_bone =
      resolveMethodBind('SpringBoneSimulator3D', 'set_center_bone', 3937882851);

  void setCenterBone(int index, int bone) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = bone;
    try {
      ptrcallVoid(_mb_set_center_bone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_center_bone =
      resolveMethodBind('SpringBoneSimulator3D', 'get_center_bone', 923996154);

  int getCenterBone(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_center_bone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('SpringBoneSimulator3D', 'set_radius', 1602489585);

  void setRadius(int index, double radius) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('SpringBoneSimulator3D', 'get_radius', 2339986948);

  double getRadius(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radius, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_rotation_axis =
      resolveMethodBind('SpringBoneSimulator3D', 'set_rotation_axis', 1539703856);

  void setRotationAxis(int index, int axis) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_rotation_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_rotation_axis =
      resolveMethodBind('SpringBoneSimulator3D', 'get_rotation_axis', 2844851118);

  int getRotationAxis(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_rotation_axis, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_rotation_axis_vector =
      resolveMethodBind('SpringBoneSimulator3D', 'set_rotation_axis_vector', 1530502735);

  void setRotationAxisVector(int index, Vector3 vector) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    vector.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_rotation_axis_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_rotation_axis_vector =
      resolveMethodBind('SpringBoneSimulator3D', 'get_rotation_axis_vector', 711720468);

  Vector3 getRotationAxisVector(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation_axis_vector, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_radius_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'set_radius_damping_curve', 1447180063);

  void setRadiusDampingCurve(int index, Curve curve) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_radius_damping_curve, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_radius_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'get_radius_damping_curve', 747537754);

  Curve? getRadiusDampingCurve(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_radius_damping_curve, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stiffness =
      resolveMethodBind('SpringBoneSimulator3D', 'set_stiffness', 1602489585);

  void setStiffness(int index, double stiffness) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = stiffness;
    try {
      ptrcallVoid(_mb_set_stiffness, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stiffness =
      resolveMethodBind('SpringBoneSimulator3D', 'get_stiffness', 2339986948);

  double getStiffness(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_stiffness, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_stiffness_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'set_stiffness_damping_curve', 1447180063);

  void setStiffnessDampingCurve(int index, Curve curve) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_stiffness_damping_curve, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_stiffness_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'get_stiffness_damping_curve', 747537754);

  Curve? getStiffnessDampingCurve(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stiffness_damping_curve, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_drag =
      resolveMethodBind('SpringBoneSimulator3D', 'set_drag', 1602489585);

  void setDrag(int index, double drag) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = drag;
    try {
      ptrcallVoid(_mb_set_drag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_drag =
      resolveMethodBind('SpringBoneSimulator3D', 'get_drag', 2339986948);

  double getDrag(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_drag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_drag_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'set_drag_damping_curve', 1447180063);

  void setDragDampingCurve(int index, Curve curve) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_drag_damping_curve, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_drag_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'get_drag_damping_curve', 747537754);

  Curve? getDragDampingCurve(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_drag_damping_curve, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gravity =
      resolveMethodBind('SpringBoneSimulator3D', 'set_gravity', 1602489585);

  void setGravity(int index, double gravity) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = gravity;
    try {
      ptrcallVoid(_mb_set_gravity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_gravity =
      resolveMethodBind('SpringBoneSimulator3D', 'get_gravity', 2339986948);

  double getGravity(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_gravity, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gravity_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'set_gravity_damping_curve', 1447180063);

  void setGravityDampingCurve(int index, Curve curve) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = curve.nativePtr;
    try {
      ptrcallVoid(_mb_set_gravity_damping_curve, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_gravity_damping_curve =
      resolveMethodBind('SpringBoneSimulator3D', 'get_gravity_damping_curve', 747537754);

  Curve? getGravityDampingCurve(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_gravity_damping_curve, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Curve(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_gravity_direction =
      resolveMethodBind('SpringBoneSimulator3D', 'set_gravity_direction', 1530502735);

  void setGravityDirection(int index, Vector3 gravityDirection) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>(Vector3.nativeSize);
    gravityDirection.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_gravity_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_gravity_direction =
      resolveMethodBind('SpringBoneSimulator3D', 'get_gravity_direction', 711720468);

  Vector3 getGravityDirection(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_gravity_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_setting_count =
      resolveMethodBind('SpringBoneSimulator3D', 'set_setting_count', 1286410249);

  void setSettingCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_setting_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_setting_count =
      resolveMethodBind('SpringBoneSimulator3D', 'get_setting_count', 3905245786);

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
      resolveMethodBind('SpringBoneSimulator3D', 'clear_settings', 3218959716);

  void clearSettings() {
    try {
      ptrcallVoid(_mb_clear_settings, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_individual_config =
      resolveMethodBind('SpringBoneSimulator3D', 'set_individual_config', 300928843);

  void setIndividualConfig(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_individual_config, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_config_individual =
      resolveMethodBind('SpringBoneSimulator3D', 'is_config_individual', 1116898809);

  bool isConfigIndividual(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_config_individual, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_joint_bone_name =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_bone_name', 1391810591);

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
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_bone', 3175239445);

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

  static final Pointer<Void> _mb_set_joint_rotation_axis =
      resolveMethodBind('SpringBoneSimulator3D', 'set_joint_rotation_axis', 1391134969);

  void setJointRotationAxis(int index, int joint, int axis) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_joint_rotation_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_rotation_axis =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_rotation_axis', 3312594080);

  int getJointRotationAxis(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_rotation_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_rotation_axis_vector =
      resolveMethodBind('SpringBoneSimulator3D', 'set_joint_rotation_axis_vector', 2866752138);

  void setJointRotationAxisVector(int index, int joint, Vector3 vector) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    vector.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_joint_rotation_axis_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_rotation_axis_vector =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_rotation_axis_vector', 1592972041);

  Vector3 getJointRotationAxisVector(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joint_rotation_axis_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_radius =
      resolveMethodBind('SpringBoneSimulator3D', 'set_joint_radius', 3506521499);

  void setJointRadius(int index, int joint, double radius) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_joint_radius, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_radius =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_radius', 3085491603);

  double getJointRadius(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joint_radius, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_stiffness =
      resolveMethodBind('SpringBoneSimulator3D', 'set_joint_stiffness', 3506521499);

  void setJointStiffness(int index, int joint, double stiffness) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Double>()..value = stiffness;
    try {
      ptrcallVoid(_mb_set_joint_stiffness, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_stiffness =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_stiffness', 3085491603);

  double getJointStiffness(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joint_stiffness, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_drag =
      resolveMethodBind('SpringBoneSimulator3D', 'set_joint_drag', 3506521499);

  void setJointDrag(int index, int joint, double drag) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Double>()..value = drag;
    try {
      ptrcallVoid(_mb_set_joint_drag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_drag =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_drag', 3085491603);

  double getJointDrag(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joint_drag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_gravity =
      resolveMethodBind('SpringBoneSimulator3D', 'set_joint_gravity', 3506521499);

  void setJointGravity(int index, int joint, double gravity) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Double>()..value = gravity;
    try {
      ptrcallVoid(_mb_set_joint_gravity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_gravity =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_gravity', 3085491603);

  double getJointGravity(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_joint_gravity, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_gravity_direction =
      resolveMethodBind('SpringBoneSimulator3D', 'set_joint_gravity_direction', 2866752138);

  void setJointGravityDirection(int index, int joint, Vector3 gravityDirection) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    gravityDirection.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_joint_gravity_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_gravity_direction =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_gravity_direction', 1592972041);

  Vector3 getJointGravityDirection(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joint_gravity_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_joint_count =
      resolveMethodBind('SpringBoneSimulator3D', 'get_joint_count', 923996154);

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

  static final Pointer<Void> _mb_set_enable_all_child_collisions =
      resolveMethodBind('SpringBoneSimulator3D', 'set_enable_all_child_collisions', 300928843);

  void setEnableAllChildCollisions(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_all_child_collisions, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_are_all_child_collisions_enabled =
      resolveMethodBind('SpringBoneSimulator3D', 'are_all_child_collisions_enabled', 1116898809);

  bool areAllChildCollisionsEnabled(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_all_child_collisions_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_exclude_collision_path(): an argument type is unsupported.
  // Skipped get_exclude_collision_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_exclude_collision_count =
      resolveMethodBind('SpringBoneSimulator3D', 'set_exclude_collision_count', 3937882851);

  void setExcludeCollisionCount(int index, int count) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_exclude_collision_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_exclude_collision_count =
      resolveMethodBind('SpringBoneSimulator3D', 'get_exclude_collision_count', 923996154);

  int getExcludeCollisionCount(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_exclude_collision_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_exclude_collisions =
      resolveMethodBind('SpringBoneSimulator3D', 'clear_exclude_collisions', 1286410249);

  void clearExcludeCollisions(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_clear_exclude_collisions, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_collision_path(): an argument type is unsupported.
  // Skipped get_collision_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_collision_count =
      resolveMethodBind('SpringBoneSimulator3D', 'set_collision_count', 3937882851);

  void setCollisionCount(int index, int count) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_collision_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_count =
      resolveMethodBind('SpringBoneSimulator3D', 'get_collision_count', 923996154);

  int getCollisionCount(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_collisions =
      resolveMethodBind('SpringBoneSimulator3D', 'clear_collisions', 1286410249);

  void clearCollisions(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_clear_collisions, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_external_force =
      resolveMethodBind('SpringBoneSimulator3D', 'set_external_force', 3460891852);

  void setExternalForce(Vector3 force) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    force.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_external_force, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_external_force =
      resolveMethodBind('SpringBoneSimulator3D', 'get_external_force', 3360562783);

  Vector3 getExternalForce() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_external_force, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mutable_bone_axes =
      resolveMethodBind('SpringBoneSimulator3D', 'set_mutable_bone_axes', 2586408642);

  void setMutableBoneAxes(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_mutable_bone_axes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_bone_axes_mutable =
      resolveMethodBind('SpringBoneSimulator3D', 'are_bone_axes_mutable', 36873697);

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

  static final Pointer<Void> _mb_reset =
      resolveMethodBind('SpringBoneSimulator3D', 'reset', 3218959716);

  void reset() {
    try {
      ptrcallVoid(_mb_reset, nativePtr, []);
    } finally {
    }
  }

}
