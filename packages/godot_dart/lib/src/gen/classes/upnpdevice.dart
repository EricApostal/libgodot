// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class UPNPDevice extends RefCounted {
  UPNPDevice(super.nativePtr);

  /// Constructs a brand-new engine-owned UPNPDevice instance
  /// (via classdb_construct_object3), not an existing one.
  factory UPNPDevice.create() {
    return UPNPDevice(resolveClassConstructor('UPNPDevice'));
  }

  static final Pointer<Void> _mb_is_valid_gateway =
      resolveMethodBind('UPNPDevice', 'is_valid_gateway', 36873697);

  bool isValidGateway() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_valid_gateway, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_query_external_address =
      resolveMethodBind('UPNPDevice', 'query_external_address', 201670096);

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
      resolveMethodBind('UPNPDevice', 'add_port_mapping', 818314583);

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
      resolveMethodBind('UPNPDevice', 'delete_port_mapping', 3444187325);

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

  static final Pointer<Void> _mb_set_description_url =
      resolveMethodBind('UPNPDevice', 'set_description_url', 83702148);

  void setDescriptionUrl(String url) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), url);
    try {
      ptrcallVoid(_mb_set_description_url, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_description_url =
      resolveMethodBind('UPNPDevice', 'get_description_url', 201670096);

  String getDescriptionUrl() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_description_url, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_service_type =
      resolveMethodBind('UPNPDevice', 'set_service_type', 83702148);

  void setServiceType(String type) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), type);
    try {
      ptrcallVoid(_mb_set_service_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_service_type =
      resolveMethodBind('UPNPDevice', 'get_service_type', 201670096);

  String getServiceType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_service_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_igd_control_url =
      resolveMethodBind('UPNPDevice', 'set_igd_control_url', 83702148);

  void setIgdControlUrl(String url) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), url);
    try {
      ptrcallVoid(_mb_set_igd_control_url, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_igd_control_url =
      resolveMethodBind('UPNPDevice', 'get_igd_control_url', 201670096);

  String getIgdControlUrl() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_igd_control_url, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_igd_service_type =
      resolveMethodBind('UPNPDevice', 'set_igd_service_type', 83702148);

  void setIgdServiceType(String type) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), type);
    try {
      ptrcallVoid(_mb_set_igd_service_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_igd_service_type =
      resolveMethodBind('UPNPDevice', 'get_igd_service_type', 201670096);

  String getIgdServiceType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_igd_service_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_igd_our_addr =
      resolveMethodBind('UPNPDevice', 'set_igd_our_addr', 83702148);

  void setIgdOurAddr(String addr) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), addr);
    try {
      ptrcallVoid(_mb_set_igd_our_addr, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_igd_our_addr =
      resolveMethodBind('UPNPDevice', 'get_igd_our_addr', 201670096);

  String getIgdOurAddr() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_igd_our_addr, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_igd_status =
      resolveMethodBind('UPNPDevice', 'set_igd_status', 519504122);

  void setIgdStatus(int status) {
    final arg0 = malloc<Int64>()..value = status;
    try {
      ptrcallVoid(_mb_set_igd_status, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_igd_status =
      resolveMethodBind('UPNPDevice', 'get_igd_status', 180887011);

  int getIgdStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_igd_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
