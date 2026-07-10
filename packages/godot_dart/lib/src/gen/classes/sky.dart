// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Sky extends Resource {
  Sky(super.nativePtr);

  /// Constructs a brand-new engine-owned Sky instance
  /// (via classdb_construct_object3), not an existing one.
  factory Sky.create() {
    return Sky(resolveClassConstructor('Sky'));
  }

  static final Pointer<Void> _mb_set_radiance_size =
      resolveMethodBind('Sky', 'set_radiance_size', 1512957179);

  void setRadianceSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_radiance_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radiance_size =
      resolveMethodBind('Sky', 'get_radiance_size', 2708733976);

  int getRadianceSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_radiance_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_process_mode =
      resolveMethodBind('Sky', 'set_process_mode', 875986769);

  void setProcessMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_process_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_process_mode =
      resolveMethodBind('Sky', 'get_process_mode', 731245043);

  int getProcessMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_process_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_material =
      resolveMethodBind('Sky', 'set_material', 2757459619);

  void setMaterial(Material material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_material =
      resolveMethodBind('Sky', 'get_material', 5934680);

  Material? getMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
