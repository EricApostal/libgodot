// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class LimitAngularVelocityModifier3D extends SkeletonModifier3D {
  LimitAngularVelocityModifier3D(super.nativePtr);

  /// Constructs a brand-new engine-owned LimitAngularVelocityModifier3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory LimitAngularVelocityModifier3D.create() {
    return LimitAngularVelocityModifier3D(resolveClassConstructor('LimitAngularVelocityModifier3D'));
  }

  static final Pointer<Void> _mb_set_root_bone_name =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'set_root_bone_name', 501894301);

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
      resolveMethodBind('LimitAngularVelocityModifier3D', 'get_root_bone_name', 844755477);

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
      resolveMethodBind('LimitAngularVelocityModifier3D', 'set_root_bone', 3937882851);

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
      resolveMethodBind('LimitAngularVelocityModifier3D', 'get_root_bone', 923996154);

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
      resolveMethodBind('LimitAngularVelocityModifier3D', 'set_end_bone_name', 501894301);

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
      resolveMethodBind('LimitAngularVelocityModifier3D', 'get_end_bone_name', 844755477);

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
      resolveMethodBind('LimitAngularVelocityModifier3D', 'set_end_bone', 3937882851);

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
      resolveMethodBind('LimitAngularVelocityModifier3D', 'get_end_bone', 923996154);

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

  static final Pointer<Void> _mb_set_chain_count =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'set_chain_count', 1286410249);

  void setChainCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_chain_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_chain_count =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'get_chain_count', 3905245786);

  int getChainCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_chain_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_chains =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'clear_chains', 3218959716);

  void clearChains() {
    try {
      ptrcallVoid(_mb_clear_chains, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_angular_velocity =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'set_max_angular_velocity', 373806689);

  void setMaxAngularVelocity(double angularVelocity) {
    final arg0 = malloc<Double>()..value = angularVelocity;
    try {
      ptrcallVoid(_mb_set_max_angular_velocity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_angular_velocity =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'get_max_angular_velocity', 1740695150);

  double getMaxAngularVelocity() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_angular_velocity, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_exclude =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'set_exclude', 2586408642);

  void setExclude(bool exclude) {
    final arg0 = malloc<Uint8>()..value = exclude ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_exclude, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_exclude =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'is_exclude', 36873697);

  bool isExclude() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_exclude, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset =
      resolveMethodBind('LimitAngularVelocityModifier3D', 'reset', 3218959716);

  void reset() {
    try {
      ptrcallVoid(_mb_reset, nativePtr, []);
    } finally {
    }
  }

}
