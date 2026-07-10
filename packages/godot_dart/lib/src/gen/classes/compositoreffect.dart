// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CompositorEffect extends Resource {
  CompositorEffect(super.nativePtr);

  /// Constructs a brand-new engine-owned CompositorEffect instance
  /// (via classdb_construct_object3), not an existing one.
  factory CompositorEffect.create() {
    return CompositorEffect(resolveClassConstructor('CompositorEffect'));
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('CompositorEffect', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enabled =
      resolveMethodBind('CompositorEffect', 'get_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_effect_callback_type =
      resolveMethodBind('CompositorEffect', 'set_effect_callback_type', 1390728419);

  void setEffectCallbackType(int effectCallbackType) {
    final arg0 = malloc<Int64>()..value = effectCallbackType;
    try {
      ptrcallVoid(_mb_set_effect_callback_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_effect_callback_type =
      resolveMethodBind('CompositorEffect', 'get_effect_callback_type', 1221912590);

  int getEffectCallbackType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_effect_callback_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_access_resolved_color =
      resolveMethodBind('CompositorEffect', 'set_access_resolved_color', 2586408642);

  void setAccessResolvedColor(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_access_resolved_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_access_resolved_color =
      resolveMethodBind('CompositorEffect', 'get_access_resolved_color', 36873697);

  bool getAccessResolvedColor() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_access_resolved_color, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_access_resolved_depth =
      resolveMethodBind('CompositorEffect', 'set_access_resolved_depth', 2586408642);

  void setAccessResolvedDepth(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_access_resolved_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_access_resolved_depth =
      resolveMethodBind('CompositorEffect', 'get_access_resolved_depth', 36873697);

  bool getAccessResolvedDepth() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_access_resolved_depth, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_needs_motion_vectors =
      resolveMethodBind('CompositorEffect', 'set_needs_motion_vectors', 2586408642);

  void setNeedsMotionVectors(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_needs_motion_vectors, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_needs_motion_vectors =
      resolveMethodBind('CompositorEffect', 'get_needs_motion_vectors', 36873697);

  bool getNeedsMotionVectors() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_needs_motion_vectors, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_needs_normal_roughness =
      resolveMethodBind('CompositorEffect', 'set_needs_normal_roughness', 2586408642);

  void setNeedsNormalRoughness(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_needs_normal_roughness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_needs_normal_roughness =
      resolveMethodBind('CompositorEffect', 'get_needs_normal_roughness', 36873697);

  bool getNeedsNormalRoughness() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_needs_normal_roughness, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_needs_separate_specular =
      resolveMethodBind('CompositorEffect', 'set_needs_separate_specular', 2586408642);

  void setNeedsSeparateSpecular(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_needs_separate_specular, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_needs_separate_specular =
      resolveMethodBind('CompositorEffect', 'get_needs_separate_specular', 36873697);

  bool getNeedsSeparateSpecular() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_needs_separate_specular, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
