// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ResourceUID extends GodotObject {
  ResourceUID(super.nativePtr);

  static ResourceUID? _singleton;
  static ResourceUID get singleton {
    return _singleton ??= ResourceUID(resolveSingleton('ResourceUID'));
  }

  static final Pointer<Void> _mb_id_to_text =
      resolveMethodBind('ResourceUID', 'id_to_text', 844755477);

  String idToText(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_id_to_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_text_to_id =
      resolveMethodBind('ResourceUID', 'text_to_id', 1321353865);

  int textToId(String textId) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), textId);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_text_to_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_id =
      resolveMethodBind('ResourceUID', 'create_id', 2455072627);

  int createId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_id_for_path =
      resolveMethodBind('ResourceUID', 'create_id_for_path', 1597066294);

  int createIdForPath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_id_for_path, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_id =
      resolveMethodBind('ResourceUID', 'has_id', 1116898809);

  bool hasId(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_id =
      resolveMethodBind('ResourceUID', 'add_id', 501894301);

  void addId(int id, String path) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), path);
    try {
      ptrcallVoid(_mb_add_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_id =
      resolveMethodBind('ResourceUID', 'set_id', 501894301);

  void setId(int id, String path) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), path);
    try {
      ptrcallVoid(_mb_set_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_id_path =
      resolveMethodBind('ResourceUID', 'get_id_path', 844755477);

  String getIdPath(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_id_path, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_remove_id =
      resolveMethodBind('ResourceUID', 'remove_id', 1286410249);

  void removeId(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
