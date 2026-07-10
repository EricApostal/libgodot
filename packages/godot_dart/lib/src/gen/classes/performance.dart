// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Performance extends GodotObject {
  Performance(super.nativePtr);

  /// Constructs a brand-new engine-owned Performance instance
  /// (via classdb_construct_object3), not an existing one.
  factory Performance.create() {
    return Performance(resolveClassConstructor('Performance'));
  }

  static final Pointer<Void> _mb_get_monitor =
      resolveMethodBind('Performance', 'get_monitor', 1943275655);

  double getMonitor(int monitor) {
    final arg0 = malloc<Int64>()..value = monitor;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_monitor, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped add_custom_monitor(): an argument type is unsupported.
  static final Pointer<Void> _mb_remove_custom_monitor =
      resolveMethodBind('Performance', 'remove_custom_monitor', 3304788590);

  void removeCustomMonitor(String id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), id);
    try {
      ptrcallVoid(_mb_remove_custom_monitor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_custom_monitor =
      resolveMethodBind('Performance', 'has_custom_monitor', 2041966384);

  bool hasCustomMonitor(String id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), id);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_custom_monitor, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_custom_monitor(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_monitor_modification_time =
      resolveMethodBind('Performance', 'get_monitor_modification_time', 2455072627);

  int getMonitorModificationTime() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_monitor_modification_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_custom_monitor_names(): unsupported return type "typedarray::StringName".
  // Skipped get_custom_monitor_types(): unsupported return type "PackedInt32Array".
}
