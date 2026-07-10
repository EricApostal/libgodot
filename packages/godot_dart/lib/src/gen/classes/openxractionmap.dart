// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRActionMap extends Resource {
  OpenXRActionMap(super.nativePtr);

  // Skipped set_action_sets(): an argument type is unsupported.
  // Skipped get_action_sets(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_action_set_count =
      resolveMethodBind('OpenXRActionMap', 'get_action_set_count', 3905245786);

  int getActionSetCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_action_set_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_action_set =
      resolveMethodBind('OpenXRActionMap', 'find_action_set', 1888809267);

  OpenXRActionSet? findActionSet(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_action_set, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRActionSet(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_set =
      resolveMethodBind('OpenXRActionMap', 'get_action_set', 1789580336);

  OpenXRActionSet? getActionSet(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_action_set, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRActionSet(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_action_set =
      resolveMethodBind('OpenXRActionMap', 'add_action_set', 2093310581);

  void addActionSet(OpenXRActionSet actionSet) {
    final arg0 = malloc<Pointer<Void>>()..value = actionSet.nativePtr;
    try {
      ptrcallVoid(_mb_add_action_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_action_set =
      resolveMethodBind('OpenXRActionMap', 'remove_action_set', 2093310581);

  void removeActionSet(OpenXRActionSet actionSet) {
    final arg0 = malloc<Pointer<Void>>()..value = actionSet.nativePtr;
    try {
      ptrcallVoid(_mb_remove_action_set, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_interaction_profiles(): an argument type is unsupported.
  // Skipped get_interaction_profiles(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_interaction_profile_count =
      resolveMethodBind('OpenXRActionMap', 'get_interaction_profile_count', 3905245786);

  int getInteractionProfileCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_interaction_profile_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_interaction_profile =
      resolveMethodBind('OpenXRActionMap', 'find_interaction_profile', 3095875538);

  OpenXRInteractionProfile? findInteractionProfile(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_interaction_profile, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRInteractionProfile(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interaction_profile =
      resolveMethodBind('OpenXRActionMap', 'get_interaction_profile', 2546151210);

  OpenXRInteractionProfile? getInteractionProfile(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_interaction_profile, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRInteractionProfile(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_interaction_profile =
      resolveMethodBind('OpenXRActionMap', 'add_interaction_profile', 2697953512);

  void addInteractionProfile(OpenXRInteractionProfile interactionProfile) {
    final arg0 = malloc<Pointer<Void>>()..value = interactionProfile.nativePtr;
    try {
      ptrcallVoid(_mb_add_interaction_profile, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_interaction_profile =
      resolveMethodBind('OpenXRActionMap', 'remove_interaction_profile', 2697953512);

  void removeInteractionProfile(OpenXRInteractionProfile interactionProfile) {
    final arg0 = malloc<Pointer<Void>>()..value = interactionProfile.nativePtr;
    try {
      ptrcallVoid(_mb_remove_interaction_profile, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_default_action_sets =
      resolveMethodBind('OpenXRActionMap', 'create_default_action_sets', 3218959716);

  void createDefaultActionSets() {
    try {
      ptrcallVoid(_mb_create_default_action_sets, nativePtr, []);
    } finally {
    }
  }

}
