// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Resource extends RefCounted {
  Resource(super.nativePtr);

  static final Pointer<Void> _mb_set_path =
      resolveMethodBind('Resource', 'set_path', 83702148);

  void setPath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_set_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_take_over_path =
      resolveMethodBind('Resource', 'take_over_path', 83702148);

  void takeOverPath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_take_over_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_path =
      resolveMethodBind('Resource', 'get_path', 201670096);

  String getPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_path_cache =
      resolveMethodBind('Resource', 'set_path_cache', 83702148);

  void setPathCache(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_set_path_cache, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_name =
      resolveMethodBind('Resource', 'set_name', 83702148);

  void setName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_name =
      resolveMethodBind('Resource', 'get_name', 201670096);

  String getName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_local_to_scene =
      resolveMethodBind('Resource', 'set_local_to_scene', 2586408642);

  void setLocalToScene(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_local_to_scene, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_local_to_scene =
      resolveMethodBind('Resource', 'is_local_to_scene', 36873697);

  bool isLocalToScene() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_local_to_scene, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_local_scene =
      resolveMethodBind('Resource', 'get_local_scene', 3160264692);

  Node? getLocalScene() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_local_scene, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_setup_local_to_scene =
      resolveMethodBind('Resource', 'setup_local_to_scene', 3218959716);

  void setupLocalToScene() {
    try {
      ptrcallVoid(_mb_setup_local_to_scene, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset_state =
      resolveMethodBind('Resource', 'reset_state', 3218959716);

  void resetState() {
    try {
      ptrcallVoid(_mb_reset_state, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_id_for_path =
      resolveMethodBind('Resource', 'set_id_for_path', 3186203200);

  void setIdForPath(String path, String id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), id);
    try {
      ptrcallVoid(_mb_set_id_for_path, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_id_for_path =
      resolveMethodBind('Resource', 'get_id_for_path', 3135753539);

  String getIdForPath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_id_for_path, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_is_built_in =
      resolveMethodBind('Resource', 'is_built_in', 36873697);

  bool isBuiltIn() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_built_in, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scene_unique_id =
      resolveMethodBind('Resource', 'set_scene_unique_id', 83702148);

  void setSceneUniqueId(String id) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), id);
    try {
      ptrcallVoid(_mb_set_scene_unique_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scene_unique_id =
      resolveMethodBind('Resource', 'get_scene_unique_id', 201670096);

  String getSceneUniqueId() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_scene_unique_id, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_emit_changed =
      resolveMethodBind('Resource', 'emit_changed', 3218959716);

  void emitChanged() {
    try {
      ptrcallVoid(_mb_emit_changed, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_duplicate =
      resolveMethodBind('Resource', 'duplicate', 482882304);

  Resource? duplicate(bool deep) {
    final arg0 = malloc<Uint8>()..value = deep ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_duplicate, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_duplicate_deep =
      resolveMethodBind('Resource', 'duplicate_deep', 905779109);

  Resource? duplicateDeep(int deepSubresourcesMode) {
    final arg0 = malloc<Int64>()..value = deepSubresourcesMode;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_duplicate_deep, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_copy_from_resource =
      resolveMethodBind('Resource', 'copy_from_resource', 3338311164);

  int copyFromResource(Resource resource) {
    final arg0 = malloc<Pointer<Void>>()..value = resource.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_copy_from_resource, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
