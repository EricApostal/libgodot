// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ConfirmationDialog extends AcceptDialog {
  ConfirmationDialog(super.nativePtr);

  /// Constructs a brand-new engine-owned ConfirmationDialog instance
  /// (via classdb_construct_object3), not an existing one.
  factory ConfirmationDialog.create() {
    return ConfirmationDialog(resolveClassConstructor('ConfirmationDialog'));
  }

  static final Pointer<Void> _mb_get_cancel_button =
      resolveMethodBind('ConfirmationDialog', 'get_cancel_button', 1856205918);

  Button? getCancelButton() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_cancel_button, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Button(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cancel_button_text =
      resolveMethodBind('ConfirmationDialog', 'set_cancel_button_text', 83702148);

  void setCancelButtonText(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_set_cancel_button_text, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cancel_button_text =
      resolveMethodBind('ConfirmationDialog', 'get_cancel_button_text', 201670096);

  String getCancelButtonText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_cancel_button_text, nativePtr, [], ret.cast());
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
