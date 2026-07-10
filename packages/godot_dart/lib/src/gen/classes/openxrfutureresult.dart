// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRFutureResult extends RefCounted {
  OpenXRFutureResult(super.nativePtr);

  static final Pointer<Void> _mb_get_status =
      resolveMethodBind('OpenXRFutureResult', 'get_status', 2023607463);

  int getStatus() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_status, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_future =
      resolveMethodBind('OpenXRFutureResult', 'get_future', 3905245786);

  int getFuture() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_future, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_cancel_future =
      resolveMethodBind('OpenXRFutureResult', 'cancel_future', 3218959716);

  void cancelFuture() {
    try {
      ptrcallVoid(_mb_cancel_future, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_result_value(): an argument type is unsupported.
  // Skipped get_result_value(): unsupported return type "Variant".
}
