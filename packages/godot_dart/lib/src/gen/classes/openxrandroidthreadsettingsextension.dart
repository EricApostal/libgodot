// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRAndroidThreadSettingsExtension extends OpenXRExtensionWrapper {
  OpenXRAndroidThreadSettingsExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRAndroidThreadSettingsExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRAndroidThreadSettingsExtension.create() {
    return OpenXRAndroidThreadSettingsExtension(resolveClassConstructor('OpenXRAndroidThreadSettingsExtension'));
  }

  static final Pointer<Void> _mb_set_application_thread_type =
      resolveMethodBind('OpenXRAndroidThreadSettingsExtension', 'set_application_thread_type', 1558751158);

  bool setApplicationThreadType(int threadType, int threadId) {
    final arg0 = malloc<Int64>()..value = threadType;
    final arg1 = malloc<Int64>()..value = threadId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_set_application_thread_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
