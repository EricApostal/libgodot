// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Bone2D extends Node2D {
  Bone2D(super.nativePtr);

  /// Constructs a brand-new engine-owned Bone2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory Bone2D.create() {
    return Bone2D(resolveClassConstructor('Bone2D'));
  }

  static final Pointer<Void> _mb_set_rest =
      resolveMethodBind('Bone2D', 'set_rest', 2761652528);

  void setRest(Transform2D rest) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    rest.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rest, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rest =
      resolveMethodBind('Bone2D', 'get_rest', 3814499831);

  Transform2D getRest() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rest, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_apply_rest =
      resolveMethodBind('Bone2D', 'apply_rest', 3218959716);

  void applyRest() {
    try {
      ptrcallVoid(_mb_apply_rest, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_skeleton_rest =
      resolveMethodBind('Bone2D', 'get_skeleton_rest', 3814499831);

  Transform2D getSkeletonRest() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_skeleton_rest, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_index_in_skeleton =
      resolveMethodBind('Bone2D', 'get_index_in_skeleton', 3905245786);

  int getIndexInSkeleton() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_index_in_skeleton, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autocalculate_length_and_angle =
      resolveMethodBind('Bone2D', 'set_autocalculate_length_and_angle', 2586408642);

  void setAutocalculateLengthAndAngle(bool autoCalculate) {
    final arg0 = malloc<Uint8>()..value = autoCalculate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autocalculate_length_and_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autocalculate_length_and_angle =
      resolveMethodBind('Bone2D', 'get_autocalculate_length_and_angle', 36873697);

  bool getAutocalculateLengthAndAngle() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_autocalculate_length_and_angle, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_length =
      resolveMethodBind('Bone2D', 'set_length', 373806689);

  void setLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('Bone2D', 'get_length', 1740695150);

  double getLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bone_angle =
      resolveMethodBind('Bone2D', 'set_bone_angle', 373806689);

  void setBoneAngle(double angle) {
    final arg0 = malloc<Double>()..value = angle;
    try {
      ptrcallVoid(_mb_set_bone_angle, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bone_angle =
      resolveMethodBind('Bone2D', 'get_bone_angle', 1740695150);

  double getBoneAngle() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bone_angle, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
