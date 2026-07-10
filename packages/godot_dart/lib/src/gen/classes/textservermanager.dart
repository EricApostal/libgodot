// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TextServerManager extends GodotObject {
  TextServerManager(super.nativePtr);

  static TextServerManager? _singleton;
  static TextServerManager get singleton {
    return _singleton ??= TextServerManager(resolveSingleton('TextServerManager'));
  }

  /// Constructs a brand-new engine-owned TextServerManager instance
  /// (via classdb_construct_object3), not an existing one.
  factory TextServerManager.create() {
    return TextServerManager(resolveClassConstructor('TextServerManager'));
  }

  static final Pointer<Void> _mb_add_interface =
      resolveMethodBind('TextServerManager', 'add_interface', 1799689403);

  void addInterface(TextServer interface_) {
    final arg0 = malloc<Pointer<Void>>()..value = interface_.nativePtr;
    try {
      ptrcallVoid(_mb_add_interface, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interface_count =
      resolveMethodBind('TextServerManager', 'get_interface_count', 3905245786);

  int getInterfaceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_interface_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_remove_interface =
      resolveMethodBind('TextServerManager', 'remove_interface', 1799689403);

  void removeInterface(TextServer interface_) {
    final arg0 = malloc<Pointer<Void>>()..value = interface_.nativePtr;
    try {
      ptrcallVoid(_mb_remove_interface, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interface =
      resolveMethodBind('TextServerManager', 'get_interface', 1672475555);

  TextServer? getInterface(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_interface, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextServer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_interfaces(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_find_interface =
      resolveMethodBind('TextServerManager', 'find_interface', 2240905781);

  TextServer? findInterface(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_interface, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextServer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_primary_interface =
      resolveMethodBind('TextServerManager', 'set_primary_interface', 1799689403);

  void setPrimaryInterface(TextServer index) {
    final arg0 = malloc<Pointer<Void>>()..value = index.nativePtr;
    try {
      ptrcallVoid(_mb_set_primary_interface, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_interface =
      resolveMethodBind('TextServerManager', 'get_primary_interface', 905850878);

  TextServer? getPrimaryInterface() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_primary_interface, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TextServer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
