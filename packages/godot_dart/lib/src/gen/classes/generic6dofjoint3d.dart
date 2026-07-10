// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Generic6DOFJoint3D extends Joint3D {
  Generic6DOFJoint3D(super.nativePtr);

  static final Pointer<Void> _mb_set_param_x =
      resolveMethodBind('Generic6DOFJoint3D', 'set_param_x', 2018184242);

  void setParamX(int param, double value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_param_x, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param_x =
      resolveMethodBind('Generic6DOFJoint3D', 'get_param_x', 2599835054);

  double getParamX(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_param_x, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_param_y =
      resolveMethodBind('Generic6DOFJoint3D', 'set_param_y', 2018184242);

  void setParamY(int param, double value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_param_y, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param_y =
      resolveMethodBind('Generic6DOFJoint3D', 'get_param_y', 2599835054);

  double getParamY(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_param_y, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_param_z =
      resolveMethodBind('Generic6DOFJoint3D', 'set_param_z', 2018184242);

  void setParamZ(int param, double value) {
    final arg0 = malloc<Int64>()..value = param;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_param_z, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_param_z =
      resolveMethodBind('Generic6DOFJoint3D', 'get_param_z', 2599835054);

  double getParamZ(int param) {
    final arg0 = malloc<Int64>()..value = param;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_param_z, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_flag_x =
      resolveMethodBind('Generic6DOFJoint3D', 'set_flag_x', 2451594564);

  void setFlagX(int flag, bool value) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flag_x, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_flag_x =
      resolveMethodBind('Generic6DOFJoint3D', 'get_flag_x', 2122427807);

  bool getFlagX(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flag_x, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_flag_y =
      resolveMethodBind('Generic6DOFJoint3D', 'set_flag_y', 2451594564);

  void setFlagY(int flag, bool value) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flag_y, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_flag_y =
      resolveMethodBind('Generic6DOFJoint3D', 'get_flag_y', 2122427807);

  bool getFlagY(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flag_y, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_flag_z =
      resolveMethodBind('Generic6DOFJoint3D', 'set_flag_z', 2451594564);

  void setFlagZ(int flag, bool value) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flag_z, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_flag_z =
      resolveMethodBind('Generic6DOFJoint3D', 'get_flag_z', 2122427807);

  bool getFlagZ(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flag_z, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_angular_target_rotation =
      resolveMethodBind('Generic6DOFJoint3D', 'set_angular_target_rotation', 1727505552);

  void setAngularTargetRotation(Quaternion targetRotation) {
    final arg0 = malloc<Uint8>(Quaternion.nativeSize);
    targetRotation.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_angular_target_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_angular_target_rotation =
      resolveMethodBind('Generic6DOFJoint3D', 'get_angular_target_rotation', 1222331677);

  Quaternion getAngularTargetRotation() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_angular_target_rotation, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_target_rotation =
      resolveMethodBind('Generic6DOFJoint3D', 'has_target_rotation', 36873697);

  bool hasTargetRotation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_target_rotation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_angular_target_rotation =
      resolveMethodBind('Generic6DOFJoint3D', 'clear_angular_target_rotation', 3218959716);

  void clearAngularTargetRotation() {
    try {
      ptrcallVoid(_mb_clear_angular_target_rotation, nativePtr, []);
    } finally {
    }
  }

}
