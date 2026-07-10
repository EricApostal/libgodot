// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRIPBinding extends Resource {
  OpenXRIPBinding(super.nativePtr);

  static final Pointer<Void> _mb_set_action =
      resolveMethodBind('OpenXRIPBinding', 'set_action', 349361333);

  void setAction(OpenXRAction action) {
    final arg0 = malloc<Pointer<Void>>()..value = action.nativePtr;
    try {
      ptrcallVoid(_mb_set_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action =
      resolveMethodBind('OpenXRIPBinding', 'get_action', 4072409085);

  OpenXRAction? getAction() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_action, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRAction(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_binding_path =
      resolveMethodBind('OpenXRIPBinding', 'set_binding_path', 83702148);

  void setBindingPath(String bindingPath) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), bindingPath);
    try {
      ptrcallVoid(_mb_set_binding_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_binding_path =
      resolveMethodBind('OpenXRIPBinding', 'get_binding_path', 201670096);

  String getBindingPath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_binding_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_binding_modifier_count =
      resolveMethodBind('OpenXRIPBinding', 'get_binding_modifier_count', 3905245786);

  int getBindingModifierCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_binding_modifier_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_binding_modifier =
      resolveMethodBind('OpenXRIPBinding', 'get_binding_modifier', 3538296211);

  OpenXRActionBindingModifier? getBindingModifier(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_binding_modifier, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRActionBindingModifier(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_binding_modifiers(): an argument type is unsupported.
  // Skipped get_binding_modifiers(): unsupported return type "Array".
  // Skipped set_paths(): an argument type is unsupported.
  // Skipped get_paths(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_path_count =
      resolveMethodBind('OpenXRIPBinding', 'get_path_count', 3905245786);

  int getPathCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_path_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_path =
      resolveMethodBind('OpenXRIPBinding', 'has_path', 3927539163);

  bool hasPath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_path, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_path =
      resolveMethodBind('OpenXRIPBinding', 'add_path', 83702148);

  void addPath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_add_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_path =
      resolveMethodBind('OpenXRIPBinding', 'remove_path', 83702148);

  void removePath(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      ptrcallVoid(_mb_remove_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

}
