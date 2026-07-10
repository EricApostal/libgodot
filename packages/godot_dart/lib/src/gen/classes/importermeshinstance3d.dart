// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ImporterMeshInstance3D extends Node3D {
  ImporterMeshInstance3D(super.nativePtr);

  /// Constructs a brand-new engine-owned ImporterMeshInstance3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory ImporterMeshInstance3D.create() {
    return ImporterMeshInstance3D(resolveClassConstructor('ImporterMeshInstance3D'));
  }

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('ImporterMeshInstance3D', 'set_mesh', 2255166972);

  void setMesh(ImporterMesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('ImporterMeshInstance3D', 'get_mesh', 3161779525);

  ImporterMesh? getMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ImporterMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_skin =
      resolveMethodBind('ImporterMeshInstance3D', 'set_skin', 3971435618);

  void setSkin(Skin skin) {
    final arg0 = malloc<Pointer<Void>>()..value = skin.nativePtr;
    try {
      ptrcallVoid(_mb_set_skin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skin =
      resolveMethodBind('ImporterMeshInstance3D', 'get_skin', 2074563878);

  Skin? getSkin() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_skin, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skin(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_skeleton_path(): an argument type is unsupported.
  // Skipped get_skeleton_path(): unsupported return type "NodePath".
  static final Pointer<Void> _mb_set_layer_mask =
      resolveMethodBind('ImporterMeshInstance3D', 'set_layer_mask', 1286410249);

  void setLayerMask(int layerMask) {
    final arg0 = malloc<Int64>()..value = layerMask;
    try {
      ptrcallVoid(_mb_set_layer_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layer_mask =
      resolveMethodBind('ImporterMeshInstance3D', 'get_layer_mask', 3905245786);

  int getLayerMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layer_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cast_shadows_setting =
      resolveMethodBind('ImporterMeshInstance3D', 'set_cast_shadows_setting', 856677339);

  void setCastShadowsSetting(int shadowCastingSetting) {
    final arg0 = malloc<Int64>()..value = shadowCastingSetting;
    try {
      ptrcallVoid(_mb_set_cast_shadows_setting, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cast_shadows_setting =
      resolveMethodBind('ImporterMeshInstance3D', 'get_cast_shadows_setting', 3383019359);

  int getCastShadowsSetting() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cast_shadows_setting, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_end_margin =
      resolveMethodBind('ImporterMeshInstance3D', 'set_visibility_range_end_margin', 373806689);

  void setVisibilityRangeEndMargin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_end_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_end_margin =
      resolveMethodBind('ImporterMeshInstance3D', 'get_visibility_range_end_margin', 1740695150);

  double getVisibilityRangeEndMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_end_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_end =
      resolveMethodBind('ImporterMeshInstance3D', 'set_visibility_range_end', 373806689);

  void setVisibilityRangeEnd(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_end, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_end =
      resolveMethodBind('ImporterMeshInstance3D', 'get_visibility_range_end', 1740695150);

  double getVisibilityRangeEnd() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_end, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_begin_margin =
      resolveMethodBind('ImporterMeshInstance3D', 'set_visibility_range_begin_margin', 373806689);

  void setVisibilityRangeBeginMargin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_begin_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_begin_margin =
      resolveMethodBind('ImporterMeshInstance3D', 'get_visibility_range_begin_margin', 1740695150);

  double getVisibilityRangeBeginMargin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_begin_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_begin =
      resolveMethodBind('ImporterMeshInstance3D', 'set_visibility_range_begin', 373806689);

  void setVisibilityRangeBegin(double distance) {
    final arg0 = malloc<Double>()..value = distance;
    try {
      ptrcallVoid(_mb_set_visibility_range_begin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_begin =
      resolveMethodBind('ImporterMeshInstance3D', 'get_visibility_range_begin', 1740695150);

  double getVisibilityRangeBegin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_range_fade_mode =
      resolveMethodBind('ImporterMeshInstance3D', 'set_visibility_range_fade_mode', 1440117808);

  void setVisibilityRangeFadeMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_visibility_range_fade_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_range_fade_mode =
      resolveMethodBind('ImporterMeshInstance3D', 'get_visibility_range_fade_mode', 2067221882);

  int getVisibilityRangeFadeMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visibility_range_fade_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
