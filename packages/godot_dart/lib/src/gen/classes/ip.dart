// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class IP extends GodotObject {
  IP(super.nativePtr);

  static final Pointer<Void> _mb_resolve_hostname =
      resolveMethodBind('IP', 'resolve_hostname', 4283295457);

  String resolveHostname(String host, int ipType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), host);
    final arg1 = malloc<Int64>()..value = ipType;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_resolve_hostname, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped resolve_hostname_addresses(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_resolve_hostname_queue_item =
      resolveMethodBind('IP', 'resolve_hostname_queue_item', 1749894742);

  int resolveHostnameQueueItem(String host, int ipType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), host);
    final arg1 = malloc<Int64>()..value = ipType;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_resolve_hostname_queue_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_resolve_item_status =
      resolveMethodBind('IP', 'get_resolve_item_status', 3812250196);

  int getResolveItemStatus(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_resolve_item_status, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_resolve_item_address =
      resolveMethodBind('IP', 'get_resolve_item_address', 844755477);

  String getResolveItemAddress(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_resolve_item_address, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_resolve_item_addresses(): unsupported return type "Array".
  static final Pointer<Void> _mb_erase_resolve_item =
      resolveMethodBind('IP', 'erase_resolve_item', 1286410249);

  void eraseResolveItem(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_erase_resolve_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_local_addresses(): unsupported return type "PackedStringArray".
  // Skipped get_local_interfaces(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_clear_cache =
      resolveMethodBind('IP', 'clear_cache', 3005725572);

  void clearCache(String hostname) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), hostname);
    try {
      ptrcallVoid(_mb_clear_cache, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

}
