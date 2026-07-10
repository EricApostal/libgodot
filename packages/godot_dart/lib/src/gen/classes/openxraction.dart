// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRAction extends Resource {
  OpenXRAction(super.nativePtr);

  static final Pointer<Void> _mb_set_localized_name =
      resolveMethodBind('OpenXRAction', 'set_localized_name', 83702148);

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
      resolveMethodBind('OpenXRAction', 'get_localized_name', 201670096);

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

  static final Pointer<Void> _mb_set_action_type =
      resolveMethodBind('OpenXRAction', 'set_action_type', 1675238366);

  void setActionType(int actionType) {
    final arg0 = malloc<Int64>()..value = actionType;
    try {
      ptrcallVoid(_mb_set_action_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_type =
      resolveMethodBind('OpenXRAction', 'get_action_type', 3536542431);

  int getActionType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_action_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_toplevel_paths(): an argument type is unsupported.
  // Skipped get_toplevel_paths(): unsupported return type "PackedStringArray".
}
