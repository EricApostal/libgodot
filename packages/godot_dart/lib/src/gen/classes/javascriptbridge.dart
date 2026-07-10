// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JavaScriptBridge extends GodotObject {
  JavaScriptBridge(super.nativePtr);

  static JavaScriptBridge? _singleton;
  static JavaScriptBridge get singleton {
    return _singleton ??= JavaScriptBridge(resolveSingleton('JavaScriptBridge'));
  }

  // Skipped eval(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_interface =
      resolveMethodBind('JavaScriptBridge', 'get_interface', 1355533281);

  JavaScriptObject? getInterface(String interface_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), interface_);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_interface, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : JavaScriptObject(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped create_callback(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_js_buffer =
      resolveMethodBind('JavaScriptBridge', 'is_js_buffer', 821968997);

  bool isJsBuffer(JavaScriptObject javascriptObject) {
    final arg0 = malloc<Pointer<Void>>()..value = javascriptObject.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_js_buffer, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped js_buffer_to_packed_byte_array(): unsupported return type "PackedByteArray".
  // Skipped download_buffer(): an argument type is unsupported.
  static final Pointer<Void> _mb_pwa_needs_update =
      resolveMethodBind('JavaScriptBridge', 'pwa_needs_update', 36873697);

  bool pwaNeedsUpdate() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_pwa_needs_update, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_pwa_update =
      resolveMethodBind('JavaScriptBridge', 'pwa_update', 166280745);

  int pwaUpdate() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_pwa_update, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_force_fs_sync =
      resolveMethodBind('JavaScriptBridge', 'force_fs_sync', 3218959716);

  void forceFsSync() {
    try {
      ptrcallVoid(_mb_force_fs_sync, nativePtr, []);
    } finally {
    }
  }

}
