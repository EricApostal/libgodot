// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRActionSet extends Resource {
  OpenXRActionSet(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRActionSet instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRActionSet.create() {
    return OpenXRActionSet(resolveClassConstructor('OpenXRActionSet'));
  }

  static final Pointer<Void> _mb_set_localized_name =
      resolveMethodBind('OpenXRActionSet', 'set_localized_name', 83702148);

  void setLocalizedName(String localizedName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), localizedName);
    try {
      ptrcallVoid(_mb_set_localized_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_localized_name =
      resolveMethodBind('OpenXRActionSet', 'get_localized_name', 201670096);

  String getLocalizedName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_localized_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_priority =
      resolveMethodBind('OpenXRActionSet', 'set_priority', 1286410249);

  void setPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_priority =
      resolveMethodBind('OpenXRActionSet', 'get_priority', 3905245786);

  int getPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_action_count =
      resolveMethodBind('OpenXRActionSet', 'get_action_count', 3905245786);

  int getActionCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_action_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_actions(): an argument type is unsupported.
  // Skipped get_actions(): unsupported return type "Array".
  static final Pointer<Void> _mb_add_action =
      resolveMethodBind('OpenXRActionSet', 'add_action', 349361333);

  void addAction(OpenXRAction action) {
    final arg0 = malloc<Pointer<Void>>()..value = action.nativePtr;
    try {
      ptrcallVoid(_mb_add_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_action =
      resolveMethodBind('OpenXRActionSet', 'remove_action', 349361333);

  void removeAction(OpenXRAction action) {
    final arg0 = malloc<Pointer<Void>>()..value = action.nativePtr;
    try {
      ptrcallVoid(_mb_remove_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
