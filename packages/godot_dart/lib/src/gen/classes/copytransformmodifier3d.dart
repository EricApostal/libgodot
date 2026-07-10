// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CopyTransformModifier3D extends BoneConstraint3D {
  CopyTransformModifier3D(super.nativePtr);

  /// Constructs a brand-new engine-owned CopyTransformModifier3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory CopyTransformModifier3D.create() {
    return CopyTransformModifier3D(resolveClassConstructor('CopyTransformModifier3D'));
  }

  static final Pointer<Void> _mb_set_copy_flags =
      resolveMethodBind('CopyTransformModifier3D', 'set_copy_flags', 2252507859);

  void setCopyFlags(int index, int copyFlags) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = copyFlags;
    try {
      ptrcallVoid(_mb_set_copy_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_copy_flags =
      resolveMethodBind('CopyTransformModifier3D', 'get_copy_flags', 1685185931);

  int getCopyFlags(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_copy_flags, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_axis_flags =
      resolveMethodBind('CopyTransformModifier3D', 'set_axis_flags', 2044211897);

  void setAxisFlags(int index, int axisFlags) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = axisFlags;
    try {
      ptrcallVoid(_mb_set_axis_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_axis_flags =
      resolveMethodBind('CopyTransformModifier3D', 'get_axis_flags', 992162046);

  int getAxisFlags(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_axis_flags, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_invert_flags =
      resolveMethodBind('CopyTransformModifier3D', 'set_invert_flags', 2044211897);

  void setInvertFlags(int index, int axisFlags) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Int64>()..value = axisFlags;
    try {
      ptrcallVoid(_mb_set_invert_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_invert_flags =
      resolveMethodBind('CopyTransformModifier3D', 'get_invert_flags', 992162046);

  int getInvertFlags(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_invert_flags, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_copy_position =
      resolveMethodBind('CopyTransformModifier3D', 'set_copy_position', 300928843);

  void setCopyPosition(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_copy_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_position_copying =
      resolveMethodBind('CopyTransformModifier3D', 'is_position_copying', 1116898809);

  bool isPositionCopying(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_position_copying, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_copy_rotation =
      resolveMethodBind('CopyTransformModifier3D', 'set_copy_rotation', 300928843);

  void setCopyRotation(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_copy_rotation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_rotation_copying =
      resolveMethodBind('CopyTransformModifier3D', 'is_rotation_copying', 1116898809);

  bool isRotationCopying(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_rotation_copying, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_copy_scale =
      resolveMethodBind('CopyTransformModifier3D', 'set_copy_scale', 300928843);

  void setCopyScale(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_copy_scale, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_scale_copying =
      resolveMethodBind('CopyTransformModifier3D', 'is_scale_copying', 1116898809);

  bool isScaleCopying(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_scale_copying, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_axis_x_enabled =
      resolveMethodBind('CopyTransformModifier3D', 'set_axis_x_enabled', 300928843);

  void setAxisXEnabled(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_axis_x_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_axis_x_enabled =
      resolveMethodBind('CopyTransformModifier3D', 'is_axis_x_enabled', 1116898809);

  bool isAxisXEnabled(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_axis_x_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_axis_y_enabled =
      resolveMethodBind('CopyTransformModifier3D', 'set_axis_y_enabled', 300928843);

  void setAxisYEnabled(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_axis_y_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_axis_y_enabled =
      resolveMethodBind('CopyTransformModifier3D', 'is_axis_y_enabled', 1116898809);

  bool isAxisYEnabled(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_axis_y_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_axis_z_enabled =
      resolveMethodBind('CopyTransformModifier3D', 'set_axis_z_enabled', 300928843);

  void setAxisZEnabled(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_axis_z_enabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_axis_z_enabled =
      resolveMethodBind('CopyTransformModifier3D', 'is_axis_z_enabled', 1116898809);

  bool isAxisZEnabled(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_axis_z_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_axis_x_inverted =
      resolveMethodBind('CopyTransformModifier3D', 'set_axis_x_inverted', 300928843);

  void setAxisXInverted(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_axis_x_inverted, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_axis_x_inverted =
      resolveMethodBind('CopyTransformModifier3D', 'is_axis_x_inverted', 1116898809);

  bool isAxisXInverted(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_axis_x_inverted, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_axis_y_inverted =
      resolveMethodBind('CopyTransformModifier3D', 'set_axis_y_inverted', 300928843);

  void setAxisYInverted(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_axis_y_inverted, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_axis_y_inverted =
      resolveMethodBind('CopyTransformModifier3D', 'is_axis_y_inverted', 1116898809);

  bool isAxisYInverted(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_axis_y_inverted, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_axis_z_inverted =
      resolveMethodBind('CopyTransformModifier3D', 'set_axis_z_inverted', 300928843);

  void setAxisZInverted(int index, bool enabled) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_axis_z_inverted, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_axis_z_inverted =
      resolveMethodBind('CopyTransformModifier3D', 'is_axis_z_inverted', 1116898809);

  bool isAxisZInverted(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_axis_z_inverted, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_relative =
      resolveMethodBind('CopyTransformModifier3D', 'set_relative', 300928843);

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
      resolveMethodBind('CopyTransformModifier3D', 'is_relative', 1116898809);

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
      resolveMethodBind('CopyTransformModifier3D', 'set_additive', 300928843);

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
      resolveMethodBind('CopyTransformModifier3D', 'is_additive', 1116898809);

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
