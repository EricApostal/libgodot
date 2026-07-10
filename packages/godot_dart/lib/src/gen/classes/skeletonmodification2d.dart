// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModification2D extends Resource {
  SkeletonModification2D(super.nativePtr);

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('SkeletonModification2D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enabled =
      resolveMethodBind('SkeletonModification2D', 'get_enabled', 2240911060);

  bool getEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_modification_stack =
      resolveMethodBind('SkeletonModification2D', 'get_modification_stack', 2137761694);

  SkeletonModificationStack2D? getModificationStack() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_modification_stack, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkeletonModificationStack2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_is_setup =
      resolveMethodBind('SkeletonModification2D', 'set_is_setup', 2586408642);

  void setIsSetup(bool isSetup) {
    final arg0 = malloc<Uint8>()..value = isSetup ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_is_setup, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_is_setup =
      resolveMethodBind('SkeletonModification2D', 'get_is_setup', 36873697);

  bool getIsSetup() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_setup, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_execution_mode =
      resolveMethodBind('SkeletonModification2D', 'set_execution_mode', 1286410249);

  void setExecutionMode(int executionMode) {
    final arg0 = malloc<Int64>()..value = executionMode;
    try {
      ptrcallVoid(_mb_set_execution_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_execution_mode =
      resolveMethodBind('SkeletonModification2D', 'get_execution_mode', 3905245786);

  int getExecutionMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_execution_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clamp_angle =
      resolveMethodBind('SkeletonModification2D', 'clamp_angle', 1229502682);

  double clampAngle(double angle, double min, double max, bool invert) {
    final arg0 = malloc<Double>()..value = angle;
    final arg1 = malloc<Double>()..value = min;
    final arg2 = malloc<Double>()..value = max;
    final arg3 = malloc<Uint8>()..value = invert ? 1 : 0;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_clamp_angle, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_editor_draw_gizmo =
      resolveMethodBind('SkeletonModification2D', 'set_editor_draw_gizmo', 2586408642);

  void setEditorDrawGizmo(bool drawGizmo) {
    final arg0 = malloc<Uint8>()..value = drawGizmo ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editor_draw_gizmo, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_editor_draw_gizmo =
      resolveMethodBind('SkeletonModification2D', 'get_editor_draw_gizmo', 36873697);

  bool getEditorDrawGizmo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_editor_draw_gizmo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
