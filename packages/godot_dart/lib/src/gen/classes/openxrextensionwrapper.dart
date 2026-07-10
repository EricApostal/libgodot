// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRExtensionWrapper extends GodotObject {
  OpenXRExtensionWrapper(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRExtensionWrapper instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRExtensionWrapper.create() {
    return OpenXRExtensionWrapper(resolveClassConstructor('OpenXRExtensionWrapper'));
  }

  static final Pointer<Void> _mb_get_openxr_api =
      resolveMethodBind('OpenXRExtensionWrapper', 'get_openxr_api', 1637791613);

  OpenXRAPIExtension? getOpenxrApi() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_openxr_api, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : OpenXRAPIExtension(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_register_extension_wrapper =
      resolveMethodBind('OpenXRExtensionWrapper', 'register_extension_wrapper', 3218959716);

  void registerExtensionWrapper() {
    try {
      ptrcallVoid(_mb_register_extension_wrapper, nativePtr, []);
    } finally {
    }
  }

}
