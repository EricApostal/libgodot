// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeBillboard extends VisualShaderNode {
  VisualShaderNodeBillboard(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeBillboard instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeBillboard.create() {
    return VisualShaderNodeBillboard(resolveClassConstructor('VisualShaderNodeBillboard'));
  }

  static final Pointer<Void> _mb_set_billboard_type =
      resolveMethodBind('VisualShaderNodeBillboard', 'set_billboard_type', 1227463289);

  void setBillboardType(int billboardType) {
    final arg0 = malloc<Int64>()..value = billboardType;
    try {
      ptrcallVoid(_mb_set_billboard_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_billboard_type =
      resolveMethodBind('VisualShaderNodeBillboard', 'get_billboard_type', 3724188517);

  int getBillboardType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_billboard_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_scale_enabled =
      resolveMethodBind('VisualShaderNodeBillboard', 'set_keep_scale_enabled', 2586408642);

  void setKeepScaleEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_scale_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_keep_scale_enabled =
      resolveMethodBind('VisualShaderNodeBillboard', 'is_keep_scale_enabled', 36873697);

  bool isKeepScaleEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_keep_scale_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
