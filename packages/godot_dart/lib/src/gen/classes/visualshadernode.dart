// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNode extends Resource {
  VisualShaderNode(super.nativePtr);

  static final Pointer<Void> _mb_get_default_input_port =
      resolveMethodBind('VisualShaderNode', 'get_default_input_port', 1894493699);

  int getDefaultInputPort(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_input_port, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_output_port_for_preview =
      resolveMethodBind('VisualShaderNode', 'set_output_port_for_preview', 1286410249);

  void setOutputPortForPreview(int port) {
    final arg0 = malloc<Int64>()..value = port;
    try {
      ptrcallVoid(_mb_set_output_port_for_preview, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_output_port_for_preview =
      resolveMethodBind('VisualShaderNode', 'get_output_port_for_preview', 3905245786);

  int getOutputPortForPreview() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_output_port_for_preview, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_input_port_default_value(): an argument type is unsupported.
  // Skipped get_input_port_default_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_remove_input_port_default_value =
      resolveMethodBind('VisualShaderNode', 'remove_input_port_default_value', 1286410249);

  void removeInputPortDefaultValue(int port) {
    final arg0 = malloc<Int64>()..value = port;
    try {
      ptrcallVoid(_mb_remove_input_port_default_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_default_input_values =
      resolveMethodBind('VisualShaderNode', 'clear_default_input_values', 3218959716);

  void clearDefaultInputValues() {
    try {
      ptrcallVoid(_mb_clear_default_input_values, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_default_input_values(): an argument type is unsupported.
  // Skipped get_default_input_values(): unsupported return type "Array".
  static final Pointer<Void> _mb_set_frame =
      resolveMethodBind('VisualShaderNode', 'set_frame', 1286410249);

  void setFrame(int frame) {
    final arg0 = malloc<Int64>()..value = frame;
    try {
      ptrcallVoid(_mb_set_frame, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame =
      resolveMethodBind('VisualShaderNode', 'get_frame', 3905245786);

  int getFrame() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frame, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
