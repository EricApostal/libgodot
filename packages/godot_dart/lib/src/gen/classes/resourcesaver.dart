// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ResourceSaver extends GodotObject {
  ResourceSaver(super.nativePtr);

  static ResourceSaver? _singleton;
  static ResourceSaver get singleton {
    return _singleton ??= ResourceSaver(resolveSingleton('ResourceSaver'));
  }

  /// Constructs a brand-new engine-owned ResourceSaver instance
  /// (via classdb_construct_object3), not an existing one.
  factory ResourceSaver.create() {
    return ResourceSaver(resolveClassConstructor('ResourceSaver'));
  }

  static final Pointer<Void> _mb_save =
      resolveMethodBind('ResourceSaver', 'save', 2983274697);

  int save(Resource resource, String path, int flags) {
    final arg0 = malloc<Pointer<Void>>()..value = resource.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), path);
    final arg2 = malloc<Int64>()..value = flags;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_uid =
      resolveMethodBind('ResourceSaver', 'set_uid', 993915709);

  int setUid(String resource, int uid) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), resource);
    final arg1 = malloc<Int64>()..value = uid;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_set_uid, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  // Skipped get_recognized_extensions(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_add_resource_format_saver =
      resolveMethodBind('ResourceSaver', 'add_resource_format_saver', 362894272);

  void addResourceFormatSaver(ResourceFormatSaver formatSaver, bool atFront) {
    final arg0 = malloc<Pointer<Void>>()..value = formatSaver.nativePtr;
    final arg1 = malloc<Uint8>()..value = atFront ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_resource_format_saver, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_resource_format_saver =
      resolveMethodBind('ResourceSaver', 'remove_resource_format_saver', 3373026878);

  void removeResourceFormatSaver(ResourceFormatSaver formatSaver) {
    final arg0 = malloc<Pointer<Void>>()..value = formatSaver.nativePtr;
    try {
      ptrcallVoid(_mb_remove_resource_format_saver, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_resource_id_for_path =
      resolveMethodBind('ResourceSaver', 'get_resource_id_for_path', 150756522);

  int getResourceIdForPath(String path, bool generate) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>()..value = generate ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_resource_id_for_path, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

}
