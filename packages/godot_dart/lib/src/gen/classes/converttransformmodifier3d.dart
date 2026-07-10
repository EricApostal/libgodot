// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ConvertTransformModifier3D extends BoneConstraint3D {
  ConvertTransformModifier3D(super.nativePtr);

  /// Constructs a brand-new engine-owned ConvertTransformModifier3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory ConvertTransformModifier3D.create() {
    return ConvertTransformModifier3D(resolveClassConstructor('ConvertTransformModifier3D'));
  }

  static final Pointer<Void> _mb_set_apply_transform_mode =
      resolveMethodBind('ConvertTransformModifier3D', 'set_apply_transform_mode', 1386463405);

  void setApplyTransformMode(int index, int transformMode) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = transformMode;
    try {
      ptrcallVoid(_mb_set_apply_transform_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_apply_transform_mode =
      resolveMethodBind('ConvertTransformModifier3D', 'get_apply_transform_mode', 3234663511);

  int getApplyTransformMode(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_apply_transform_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_apply_axis =
      resolveMethodBind('ConvertTransformModifier3D', 'set_apply_axis', 776736805);

  void setApplyAxis(int index, int axis) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_apply_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_apply_axis =
      resolveMethodBind('ConvertTransformModifier3D', 'get_apply_axis', 4131134770);

  int getApplyAxis(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_apply_axis, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_apply_range_min =
      resolveMethodBind('ConvertTransformModifier3D', 'set_apply_range_min', 1602489585);

  void setApplyRangeMin(int index, double rangeMin) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = rangeMin;
    try {
      ptrcallVoid(_mb_set_apply_range_min, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_apply_range_min =
      resolveMethodBind('ConvertTransformModifier3D', 'get_apply_range_min', 2339986948);

  double getApplyRangeMin(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_apply_range_min, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_apply_range_max =
      resolveMethodBind('ConvertTransformModifier3D', 'set_apply_range_max', 1602489585);

  void setApplyRangeMax(int index, double rangeMax) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = rangeMax;
    try {
      ptrcallVoid(_mb_set_apply_range_max, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_apply_range_max =
      resolveMethodBind('ConvertTransformModifier3D', 'get_apply_range_max', 2339986948);

  double getApplyRangeMax(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_apply_range_max, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_transform_mode =
      resolveMethodBind('ConvertTransformModifier3D', 'set_reference_transform_mode', 1386463405);

  void setReferenceTransformMode(int index, int transformMode) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = transformMode;
    try {
      ptrcallVoid(_mb_set_reference_transform_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_transform_mode =
      resolveMethodBind('ConvertTransformModifier3D', 'get_reference_transform_mode', 3234663511);

  int getReferenceTransformMode(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_reference_transform_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_axis =
      resolveMethodBind('ConvertTransformModifier3D', 'set_reference_axis', 776736805);

  void setReferenceAxis(int index, int axis) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = axis;
    try {
      ptrcallVoid(_mb_set_reference_axis, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_axis =
      resolveMethodBind('ConvertTransformModifier3D', 'get_reference_axis', 4131134770);

  int getReferenceAxis(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_reference_axis, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_range_min =
      resolveMethodBind('ConvertTransformModifier3D', 'set_reference_range_min', 1602489585);

  void setReferenceRangeMin(int index, double rangeMin) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = rangeMin;
    try {
      ptrcallVoid(_mb_set_reference_range_min, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_range_min =
      resolveMethodBind('ConvertTransformModifier3D', 'get_reference_range_min', 2339986948);

  double getReferenceRangeMin(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_reference_range_min, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_reference_range_max =
      resolveMethodBind('ConvertTransformModifier3D', 'set_reference_range_max', 1602489585);

  void setReferenceRangeMax(int index, double rangeMax) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Double>()..value = rangeMax;
    try {
      ptrcallVoid(_mb_set_reference_range_max, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_reference_range_max =
      resolveMethodBind('ConvertTransformModifier3D', 'get_reference_range_max', 2339986948);

  double getReferenceRangeMax(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_reference_range_max, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_relative =
      resolveMethodBind('ConvertTransformModifier3D', 'set_relative', 300928843);

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
      resolveMethodBind('ConvertTransformModifier3D', 'is_relative', 1116898809);

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

  static final Pointer<Void> _mb_set_additive =
      resolveMethodBind('ConvertTransformModifier3D', 'set_additive', 300928843);

  void setAdditive(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_additive, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_additive =
      resolveMethodBind('ConvertTransformModifier3D', 'is_additive', 1116898809);

  bool isAdditive(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_additive, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
