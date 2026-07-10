// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ResourceLoader extends GodotObject {
  ResourceLoader(super.nativePtr);

  static ResourceLoader? _singleton;
  static ResourceLoader get singleton {
    return _singleton ??= ResourceLoader(resolveSingleton('ResourceLoader'));
  }

  /// Constructs a brand-new engine-owned ResourceLoader instance
  /// (via classdb_construct_object3), not an existing one.
  factory ResourceLoader.create() {
    return ResourceLoader(resolveClassConstructor('ResourceLoader'));
  }

  static final Pointer<Void> _mb_load_threaded_request =
      resolveMethodBind('ResourceLoader', 'load_threaded_request', 3614384323);

  int loadThreadedRequest(String path, String typeHint, bool useSubThreads, int cacheMode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), typeHint);
    final arg2 = malloc<Uint8>()..value = useSubThreads ? 1 : 0;
    final arg3 = malloc<Int64>()..value = cacheMode;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load_threaded_request, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped load_threaded_get_status(): an argument type is unsupported.
  static final Pointer<Void> _mb_load_threaded_get =
      resolveMethodBind('ResourceLoader', 'load_threaded_get', 1748875256);

  Resource? loadThreadedGet(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_load_threaded_get, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_load =
      resolveMethodBind('ResourceLoader', 'load', 3358495409);

  Resource? load(String path, String typeHint, int cacheMode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), typeHint);
    final arg2 = malloc<Int64>()..value = cacheMode;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_load, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped get_recognized_extensions_for_type(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_add_resource_format_loader =
      resolveMethodBind('ResourceLoader', 'add_resource_format_loader', 2896595483);

  void addResourceFormatLoader(ResourceFormatLoader formatLoader, bool atFront) {
    final arg0 = malloc<Pointer<Void>>()..value = formatLoader.nativePtr;
    final arg1 = malloc<Uint8>()..value = atFront ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_resource_format_loader, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_resource_format_loader =
      resolveMethodBind('ResourceLoader', 'remove_resource_format_loader', 405397102);

  void removeResourceFormatLoader(ResourceFormatLoader formatLoader) {
    final arg0 = malloc<Pointer<Void>>()..value = formatLoader.nativePtr;
    try {
      ptrcallVoid(_mb_remove_resource_format_loader, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_abort_on_missing_resources =
      resolveMethodBind('ResourceLoader', 'set_abort_on_missing_resources', 2586408642);

  void setAbortOnMissingResources(bool abort) {
    final arg0 = malloc<Uint8>()..value = abort ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_abort_on_missing_resources, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_dependencies(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_has_cached =
      resolveMethodBind('ResourceLoader', 'has_cached', 2323990056);

  bool hasCached(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_cached, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cached_ref =
      resolveMethodBind('ResourceLoader', 'get_cached_ref', 1748875256);

  Resource? getCachedRef(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_cached_ref, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_exists =
      resolveMethodBind('ResourceLoader', 'exists', 4185558881);

  bool exists(String path, String typeHint) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), typeHint);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_exists, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_resource_uid =
      resolveMethodBind('ResourceLoader', 'get_resource_uid', 1597066294);

  int getResourceUid(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_resource_uid, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_resource_type =
      resolveMethodBind('ResourceLoader', 'get_resource_type', 1703090593);

  String getResourceType(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_resource_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped list_directory(): unsupported return type "PackedStringArray".
}
