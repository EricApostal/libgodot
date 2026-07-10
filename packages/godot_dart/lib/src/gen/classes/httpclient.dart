// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class HTTPClient extends RefCounted {
  HTTPClient(super.nativePtr);

  /// Constructs a brand-new engine-owned HTTPClient instance
  /// (via classdb_construct_object3), not an existing one.
  factory HTTPClient.create() {
    return HTTPClient(resolveClassConstructor('HTTPClient'));
  }

  static final Pointer<Void> _mb_connect_to_host =
      resolveMethodBind('HTTPClient', 'connect_to_host', 504540374);

  int connectToHost(String host, int port, TLSOptions tlsOptions) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), host);
    final arg1 = malloc<Int64>()..value = port;
    final arg2 = malloc<Pointer<Void>>()..value = tlsOptions.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_connect_to_host, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_connection =
      resolveMethodBind('HTTPClient', 'set_connection', 3281897016);

  void setConnection(StreamPeer connection) {
    final arg0 = malloc<Pointer<Void>>()..value = connection.nativePtr;
    try {
      ptrcallVoid(_mb_set_connection, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_connection =
      resolveMethodBind('HTTPClient', 'get_connection', 2741655269);

  StreamPeer? getConnection() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_connection, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StreamPeer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped request_raw(): an argument type is unsupported.
  // Skipped request(): an argument type is unsupported.
  static final Pointer<Void> _mb_close =
      resolveMethodBind('HTTPClient', 'close', 3218959716);

  void close() {
    try {
      ptrcallVoid(_mb_close, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_response =
      resolveMethodBind('HTTPClient', 'has_response', 36873697);

  bool hasResponse() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_response, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_response_chunked =
      resolveMethodBind('HTTPClient', 'is_response_chunked', 36873697);

  bool isResponseChunked() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_response_chunked, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_response_code =
      resolveMethodBind('HTTPClient', 'get_response_code', 3905245786);

  int getResponseCode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_response_code, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_response_headers(): unsupported return type "PackedStringArray".
  // Skipped get_response_headers_as_dictionary(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_response_body_length =
      resolveMethodBind('HTTPClient', 'get_response_body_length', 3905245786);

  int getResponseBodyLength() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_response_body_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped read_response_body_chunk(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_set_read_chunk_size =
      resolveMethodBind('HTTPClient', 'set_read_chunk_size', 1286410249);

  void setReadChunkSize(int bytes) {
    final arg0 = malloc<Int64>()..value = bytes;
    try {
      ptrcallVoid(_mb_set_read_chunk_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_read_chunk_size =
      resolveMethodBind('HTTPClient', 'get_read_chunk_size', 3905245786);

  int getReadChunkSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_read_chunk_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blocking_mode =
      resolveMethodBind('HTTPClient', 'set_blocking_mode', 2586408642);

  void setBlockingMode(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_blocking_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_blocking_mode_enabled =
      resolveMethodBind('HTTPClient', 'is_blocking_mode_enabled', 36873697);

  bool isBlockingModeEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_blocking_mode_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_status =
      resolveMethodBind('HTTPClient', 'get_status', 1426656811);

  int getStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('HTTPClient', 'poll', 166280745);

  int poll() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_poll, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_http_proxy =
      resolveMethodBind('HTTPClient', 'set_http_proxy', 2956805083);

  void setHttpProxy(String host, int port) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), host);
    final arg1 = malloc<Int64>()..value = port;
    try {
      ptrcallVoid(_mb_set_http_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_https_proxy =
      resolveMethodBind('HTTPClient', 'set_https_proxy', 2956805083);

  void setHttpsProxy(String host, int port) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), host);
    final arg1 = malloc<Int64>()..value = port;
    try {
      ptrcallVoid(_mb_set_https_proxy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped query_string_from_dict(): an argument type is unsupported.
}
