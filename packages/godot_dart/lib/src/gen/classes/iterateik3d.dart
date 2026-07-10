// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class IterateIK3D extends ChainIK3D {
  IterateIK3D(super.nativePtr);

  static final Pointer<Void> _mb_set_max_iterations =
      resolveMethodBind('IterateIK3D', 'set_max_iterations', 1286410249);

  void setMaxIterations(int maxIterations) {
    final arg0 = malloc<Int64>()..value = maxIterations;
    try {
      ptrcallVoid(_mb_set_max_iterations, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_iterations =
      resolveMethodBind('IterateIK3D', 'get_max_iterations', 3905245786);

  int getMaxIterations() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_iterations, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_distance =
      resolveMethodBind('IterateIK3D', 'set_min_distance', 373806689);

  void setMinDistance(double minDistance) {
    final arg0 = malloc<Double>()..value = minDistance;
    try {
      ptrcallVoid(_mb_set_min_distance, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_distance =
      resolveMethodBind('IterateIK3D', 'get_min_distance', 1740695150);

  double getMinDistance() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_distance, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_angular_delta_limit =
      resolveMethodBind('IterateIK3D', 'set_angular_delta_limit', 373806689);

  void setAngularDeltaLimit(double angularDeltaLimit) {
    final arg0 = malloc<Double>()..value = angularDeltaLimit;
    try {
      ptrcallVoid(_mb_set_angular_delta_limit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_delta_limit =
      resolveMethodBind('IterateIK3D', 'get_angular_delta_limit', 1740695150);

  double getAngularDeltaLimit() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_angular_delta_limit, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_deterministic =
      resolveMethodBind('IterateIK3D', 'set_deterministic', 2586408642);

  void setDeterministic(bool deterministic) {
    final arg0 = malloc<Uint8>()..value = deterministic ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deterministic, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_deterministic =
      resolveMethodBind('IterateIK3D', 'is_deterministic', 36873697);

  bool isDeterministic() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_deterministic, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_target_node(): an argument type is unsupported.
  // Skipped get_target_node(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_joint_rotation_axis =
      resolveMethodBind('IterateIK3D', 'set_joint_rotation_axis', 1391134969);

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
      resolveMethodBind('IterateIK3D', 'get_joint_rotation_axis', 3312594080);

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
      resolveMethodBind('IterateIK3D', 'set_joint_rotation_axis_vector', 2866752138);

  void setJointRotationAxisVector(int index, int joint, Vector3 axisVector) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    axisVector.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_joint_rotation_axis_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_rotation_axis_vector =
      resolveMethodBind('IterateIK3D', 'get_joint_rotation_axis_vector', 1592972041);

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

  static final Pointer<Void> _mb_set_joint_limitation =
      resolveMethodBind('IterateIK3D', 'set_joint_limitation', 1194636955);

  void setJointLimitation(int index, int joint, JointLimitation3D limitation) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Pointer<Void>>()..value = limitation.nativePtr;
    try {
      ptrcallVoid(_mb_set_joint_limitation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_limitation =
      resolveMethodBind('IterateIK3D', 'get_joint_limitation', 91665146);

  JointLimitation3D? getJointLimitation(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_joint_limitation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : JointLimitation3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_limitation_right_axis =
      resolveMethodBind('IterateIK3D', 'set_joint_limitation_right_axis', 3838967147);

  void setJointLimitationRightAxis(int index, int joint, int direction) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_joint_limitation_right_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_limitation_right_axis =
      resolveMethodBind('IterateIK3D', 'get_joint_limitation_right_axis', 623936134);

  int getJointLimitationRightAxis(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_joint_limitation_right_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_limitation_right_axis_vector =
      resolveMethodBind('IterateIK3D', 'set_joint_limitation_right_axis_vector', 2866752138);

  void setJointLimitationRightAxisVector(int index, int joint, Vector3 vector) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Uint8>(Vector3.nativeSize);
    vector.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_joint_limitation_right_axis_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_limitation_right_axis_vector =
      resolveMethodBind('IterateIK3D', 'get_joint_limitation_right_axis_vector', 1592972041);

  Vector3 getJointLimitationRightAxisVector(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joint_limitation_right_axis_vector, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_joint_limitation_rotation_offset =
      resolveMethodBind('IterateIK3D', 'set_joint_limitation_rotation_offset', 4188936002);

  void setJointLimitationRotationOffset(int index, int joint, Quaternion offset) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    final arg2 = malloc<Uint8>(Quaternion.nativeSize);
    offset.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_joint_limitation_rotation_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_joint_limitation_rotation_offset =
      resolveMethodBind('IterateIK3D', 'get_joint_limitation_rotation_offset', 2722473700);

  Quaternion getJointLimitationRotationOffset(int index, int joint) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = joint;
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_joint_limitation_rotation_offset, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
