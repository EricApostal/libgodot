// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class UPNP extends RefCounted {
  UPNP(super.nativePtr);

  static final Pointer<Void> _mb_get_device_count =
      resolveMethodBind('UPNP', 'get_device_count', 3905245786);

  int getDeviceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_device_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_device =
      resolveMethodBind('UPNP', 'get_device', 2193290270);

  UPNPDevice? getDevice(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_device, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : UPNPDevice(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_device =
      resolveMethodBind('UPNP', 'add_device', 986715920);

  void addDevice(UPNPDevice device) {
    final arg0 = malloc<Pointer<Void>>()..value = device.nativePtr;
    try {
      ptrcallVoid(_mb_add_device, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_device =
      resolveMethodBind('UPNP', 'set_device', 3015133723);

  void setDevice(int index, UPNPDevice device) {
    final arg0 = malloc<Int64>()..value = index;
    final arg1 = malloc<Pointer<Void>>()..value = device.nativePtr;
    try {
      ptrcallVoid(_mb_set_device, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_device =
      resolveMethodBind('UPNP', 'remove_device', 1286410249);

  void removeDevice(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_device, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_devices =
      resolveMethodBind('UPNP', 'clear_devices', 3218959716);

  void clearDevices() {
    try {
      ptrcallVoid(_mb_clear_devices, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_gateway =
      resolveMethodBind('UPNP', 'get_gateway', 2276800779);

  UPNPDevice? getGateway() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_gateway, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : UPNPDevice(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_discover =
      resolveMethodBind('UPNP', 'discover', 1575334765);

  int discover(int timeout, int ttl, String deviceFilter) {
    final arg0 = malloc<Int64>()..value = timeout;
    final arg1 = malloc<Int64>()..value = ttl;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), deviceFilter);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_discover, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_query_external_address =
      resolveMethodBind('UPNP', 'query_external_address', 201670096);

  String queryExternalAddress() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_query_external_address, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_port_mapping =
      resolveMethodBind('UPNP', 'add_port_mapping', 818314583);

  int addPortMapping(int port, int portInternal, String desc, String proto, int duration) {
    final arg0 = malloc<Int64>()..value = port;
    final arg1 = malloc<Int64>()..value = portInternal;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), desc);
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg3.cast(), proto);
    final arg4 = malloc<Int64>()..value = duration;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_add_port_mapping, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      BuiltinMarshal.destroyGDString(arg3.cast());
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  static final Pointer<Void> _mb_delete_port_mapping =
      resolveMethodBind('UPNP', 'delete_port_mapping', 3444187325);

  int deletePortMapping(int port, String proto) {
    final arg0 = malloc<Int64>()..value = port;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), proto);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_delete_port_mapping, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_discover_multicast_if =
      resolveMethodBind('UPNP', 'set_discover_multicast_if', 83702148);

  void setDiscoverMulticastIf(String mIf) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), mIf);
    try {
      ptrcallVoid(_mb_set_discover_multicast_if, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_discover_multicast_if =
      resolveMethodBind('UPNP', 'get_discover_multicast_if', 201670096);

  String getDiscoverMulticastIf() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_discover_multicast_if, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_discover_local_port =
      resolveMethodBind('UPNP', 'set_discover_local_port', 1286410249);

  void setDiscoverLocalPort(int port) {
    final arg0 = malloc<Int64>()..value = port;
    try {
      ptrcallVoid(_mb_set_discover_local_port, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_discover_local_port =
      resolveMethodBind('UPNP', 'get_discover_local_port', 3905245786);

  int getDiscoverLocalPort() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_discover_local_port, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_discover_ipv6 =
      resolveMethodBind('UPNP', 'set_discover_ipv6', 2586408642);

  void setDiscoverIpv6(bool ipv6) {
    final arg0 = malloc<Uint8>()..value = ipv6 ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_discover_ipv6, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_discover_ipv6 =
      resolveMethodBind('UPNP', 'is_discover_ipv6', 36873697);

  bool isDiscoverIpv6() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_discover_ipv6, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
