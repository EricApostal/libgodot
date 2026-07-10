// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRInteractionProfile extends Resource {
  OpenXRInteractionProfile(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRInteractionProfile instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRInteractionProfile.create() {
    return OpenXRInteractionProfile(resolveClassConstructor('OpenXRInteractionProfile'));
  }

  static final Pointer<Void> _mb_set_interaction_profile_path =
      resolveMethodBind('OpenXRInteractionProfile', 'set_interaction_profile_path', 83702148);

  void setInteractionProfilePath(String interactionProfilePath) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), interactionProfilePath);
    try {
      ptrcallVoid(_mb_set_interaction_profile_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interaction_profile_path =
      resolveMethodBind('OpenXRInteractionProfile', 'get_interaction_profile_path', 201670096);

  String getInteractionProfilePath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_interaction_profile_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_binding_count =
      resolveMethodBind('OpenXRInteractionProfile', 'get_binding_count', 3905245786);

  int getBindingCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_binding_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_binding =
      resolveMethodBind('OpenXRInteractionProfile', 'get_binding', 3934429652);

  OpenXRIPBinding? getBinding(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_binding, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRIPBinding(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_bindings(): an argument type is unsupported.
  // Skipped get_bindings(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_binding_modifier_count =
      resolveMethodBind('OpenXRInteractionProfile', 'get_binding_modifier_count', 3905245786);

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
      resolveMethodBind('OpenXRInteractionProfile', 'get_binding_modifier', 2419896583);

  OpenXRIPBindingModifier? getBindingModifier(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_binding_modifier, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRIPBindingModifier(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_binding_modifiers(): an argument type is unsupported.
  // Skipped get_binding_modifiers(): unsupported return type "Array".
}
