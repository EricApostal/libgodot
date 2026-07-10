// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRVRS extends GodotObject {
  XRVRS(super.nativePtr);

  /// Constructs a brand-new engine-owned XRVRS instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRVRS.create() {
    return XRVRS(resolveClassConstructor('XRVRS'));
  }

  static final Pointer<Void> _mb_get_vrs_min_radius =
      resolveMethodBind('XRVRS', 'get_vrs_min_radius', 1740695150);

  double getVrsMinRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vrs_min_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_min_radius =
      resolveMethodBind('XRVRS', 'set_vrs_min_radius', 373806689);

  void setVrsMinRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_vrs_min_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vrs_strength =
      resolveMethodBind('XRVRS', 'get_vrs_strength', 1740695150);

  double getVrsStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_vrs_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_strength =
      resolveMethodBind('XRVRS', 'set_vrs_strength', 373806689);

  void setVrsStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_vrs_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vrs_render_region =
      resolveMethodBind('XRVRS', 'get_vrs_render_region', 410525958);

  Rect2i getVrsRenderRegion() {
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_vrs_render_region, nativePtr, [], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_render_region =
      resolveMethodBind('XRVRS', 'set_vrs_render_region', 1763793166);

  void setVrsRenderRegion(Rect2i renderRegion) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    renderRegion.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_vrs_render_region, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped make_vrs_texture(): unsupported return type "RID".
}
