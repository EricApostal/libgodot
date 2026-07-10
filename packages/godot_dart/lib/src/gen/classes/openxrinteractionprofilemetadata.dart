// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRInteractionProfileMetadata extends GodotObject {
  OpenXRInteractionProfileMetadata(super.nativePtr);

  static final Pointer<Void> _mb_register_profile_rename =
      resolveMethodBind('OpenXRInteractionProfileMetadata', 'register_profile_rename', 3186203200);

  void registerProfileRename(String oldName, String newName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), newName);
    try {
      ptrcallVoid(_mb_register_profile_rename, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_register_path_rename =
      resolveMethodBind('OpenXRInteractionProfileMetadata', 'register_path_rename', 3186203200);

  void registerPathRename(String oldName, String newName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), newName);
    try {
      ptrcallVoid(_mb_register_path_rename, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_register_top_level_path =
      resolveMethodBind('OpenXRInteractionProfileMetadata', 'register_top_level_path', 254767734);

  void registerTopLevelPath(String displayName, String openxrPath, String openxrExtensionNames) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), displayName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), openxrPath);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), openxrExtensionNames);
    try {
      ptrcallVoid(_mb_register_top_level_path, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_register_interaction_profile =
      resolveMethodBind('OpenXRInteractionProfileMetadata', 'register_interaction_profile', 254767734);

  void registerInteractionProfile(String displayName, String openxrPath, String openxrExtensionNames) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), displayName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), openxrPath);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), openxrExtensionNames);
    try {
      ptrcallVoid(_mb_register_interaction_profile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_register_io_path =
      resolveMethodBind('OpenXRInteractionProfileMetadata', 'register_io_path', 3443511926);

  void registerIoPath(String interactionProfile, String displayName, String toplevelPath, String openxrPath, String openxrExtensionNames, int actionType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), interactionProfile);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), displayName);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), toplevelPath);
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg3.cast(), openxrPath);
    final arg4 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg4.cast(), openxrExtensionNames);
    final arg5 = malloc<Int64>()..value = actionType;
    try {
      ptrcallVoid(_mb_register_io_path, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
      BuiltinMarshal.destroyGDString(arg3.cast());
      malloc.free(arg3);
      BuiltinMarshal.destroyGDString(arg4.cast());
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

}
