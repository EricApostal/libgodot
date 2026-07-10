// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class HTTPRequest extends Node {
  HTTPRequest(super.nativePtr);

  /// Constructs a brand-new engine-owned HTTPRequest instance
  /// (via classdb_construct_object3), not an existing one.
  factory HTTPRequest.create() {
    return HTTPRequest(resolveClassConstructor('HTTPRequest'));
  }

  // Skipped request(): an argument type is unsupported.
  // Skipped request_raw(): an argument type is unsupported.
  static final Pointer<Void> _mb_cancel_request =
      resolveMethodBind('HTTPRequest', 'cancel_request', 3218959716);

  void cancelRequest() {
    try {
      ptrcallVoid(_mb_cancel_request, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tls_options =
      resolveMethodBind('HTTPRequest', 'set_tls_options', 2210231844);

  void setTlsOptions(TLSOptions clientOptions) {
    final arg0 = malloc<Pointer<Void>>()..value = clientOptions.nativePtr;
    try {
      ptrcallVoid(_mb_set_tls_options, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_http_client_status =
      resolveMethodBind('HTTPRequest', 'get_http_client_status', 1426656811);

  int getHttpClientStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_http_client_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_threads =
      resolveMethodBind('HTTPRequest', 'set_use_threads', 2586408642);

  void setUseThreads(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_threads, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_threads =
      resolveMethodBind('HTTPRequest', 'is_using_threads', 36873697);

  bool isUsingThreads() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_threads, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accept_gzip =
      resolveMethodBind('HTTPRequest', 'set_accept_gzip', 2586408642);

  void setAcceptGzip(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_accept_gzip, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_accepting_gzip =
      resolveMethodBind('HTTPRequest', 'is_accepting_gzip', 36873697);

  bool isAcceptingGzip() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_accepting_gzip, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_body_size_limit =
      resolveMethodBind('HTTPRequest', 'set_body_size_limit', 1286410249);

  void setBodySizeLimit(int bytes) {
    final arg0 = malloc<Int64>()..value = bytes;
    try {
      ptrcallVoid(_mb_set_body_size_limit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_body_size_limit =
      resolveMethodBind('HTTPRequest', 'get_body_size_limit', 3905245786);

  int getBodySizeLimit() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_body_size_limit, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_redirects =
      resolveMethodBind('HTTPRequest', 'set_max_redirects', 1286410249);

  void setMaxRedirects(int amount) {
    final arg0 = malloc<Int64>()..value = amount;
    try {
      ptrcallVoid(_mb_set_max_redirects, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_redirects =
      resolveMethodBind('HTTPRequest', 'get_max_redirects', 3905245786);

  int getMaxRedirects() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_redirects, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_download_file =
      resolveMethodBind('HTTPRequest', 'set_download_file', 83702148);

  void setDownloadFile(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_set_download_file, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_download_file =
      resolveMethodBind('HTTPRequest', 'get_download_file', 201670096);

  String getDownloadFile() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_download_file, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_partial_download =
      resolveMethodBind('HTTPRequest', 'set_keep_partial_download', 2586408642);

  void setKeepPartialDownload(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_partial_download, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_keeping_partial_download =
      resolveMethodBind('HTTPRequest', 'is_keeping_partial_download', 36873697);

  bool isKeepingPartialDownload() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_keeping_partial_download, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_append_to_download_file =
      resolveMethodBind('HTTPRequest', 'set_append_to_download_file', 2586408642);

  void setAppendToDownloadFile(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_append_to_download_file, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_appending_to_download_file =
      resolveMethodBind('HTTPRequest', 'is_appending_to_download_file', 36873697);

  bool isAppendingToDownloadFile() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_appending_to_download_file, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_downloaded_bytes =
      resolveMethodBind('HTTPRequest', 'get_downloaded_bytes', 3905245786);

  int getDownloadedBytes() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_downloaded_bytes, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_body_size =
      resolveMethodBind('HTTPRequest', 'get_body_size', 3905245786);

  int getBodySize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_body_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_timeout =
      resolveMethodBind('HTTPRequest', 'set_timeout', 373806689);

  void setTimeout(double timeout) {
    final arg0 = malloc<Double>()..value = timeout;
    try {
      ptrcallVoid(_mb_set_timeout, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_timeout =
      resolveMethodBind('HTTPRequest', 'get_timeout', 191475506);

  double getTimeout() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_timeout, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_download_chunk_size =
      resolveMethodBind('HTTPRequest', 'set_download_chunk_size', 1286410249);

  void setDownloadChunkSize(int chunkSize) {
    final arg0 = malloc<Int64>()..value = chunkSize;
    try {
      ptrcallVoid(_mb_set_download_chunk_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_download_chunk_size =
      resolveMethodBind('HTTPRequest', 'get_download_chunk_size', 3905245786);

  int getDownloadChunkSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_download_chunk_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_http_proxy =
      resolveMethodBind('HTTPRequest', 'set_http_proxy', 2956805083);

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
      resolveMethodBind('HTTPRequest', 'set_https_proxy', 2956805083);

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

}
