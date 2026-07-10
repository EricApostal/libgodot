// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class JSON extends Resource {
  JSON(super.nativePtr);

  static final Pointer<Void> _mb_parse =
      resolveMethodBind('JSON', 'parse', 885841341);

  int parse(String jsonText, bool keepText) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), jsonText);
    final arg1 = malloc<Uint8>()..value = keepText ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_parse, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_data(): unsupported return type "Variant".
  // Skipped set_data(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_parsed_text =
      resolveMethodBind('JSON', 'get_parsed_text', 201670096);

  String getParsedText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_parsed_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_error_line =
      resolveMethodBind('JSON', 'get_error_line', 3905245786);

  int getErrorLine() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_error_line, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_error_message =
      resolveMethodBind('JSON', 'get_error_message', 201670096);

  String getErrorMessage() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_error_message, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
