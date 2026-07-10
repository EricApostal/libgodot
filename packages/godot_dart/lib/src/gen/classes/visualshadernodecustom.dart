// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeCustom extends VisualShaderNode {
  VisualShaderNodeCustom(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeCustom instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeCustom.create() {
    return VisualShaderNodeCustom(resolveClassConstructor('VisualShaderNodeCustom'));
  }

  /// Override to hook into Godot's `_get_name` virtual.
  String getName() => '';

  /// Override to hook into Godot's `_get_description` virtual.
  String getDescription() => '';

  /// Override to hook into Godot's `_get_category` virtual.
  String getCategory() => '';

  /// Override to hook into Godot's `_get_return_icon_type` virtual.
  int getReturnIconType() => 0;

  /// Override to hook into Godot's `_get_input_port_count` virtual.
  int getInputPortCount() => 0;

  /// Override to hook into Godot's `_get_input_port_type` virtual.
  int getInputPortType(int port) => 0;

  /// Override to hook into Godot's `_get_input_port_name` virtual.
  String getInputPortName(int port) => '';

  // Skipped virtual _get_input_port_default_value(): unsupported return type "Variant".
  /// Override to hook into Godot's `_get_default_input_port` virtual.
  int getDefaultInputPort(int type) => 0;

  /// Override to hook into Godot's `_get_output_port_count` virtual.
  int getOutputPortCount() => 0;

  /// Override to hook into Godot's `_get_output_port_type` virtual.
  int getOutputPortType(int port) => 0;

  /// Override to hook into Godot's `_get_output_port_name` virtual.
  String getOutputPortName(int port) => '';

  /// Override to hook into Godot's `_get_property_count` virtual.
  int getPropertyCount() => 0;

  /// Override to hook into Godot's `_get_property_name` virtual.
  String getPropertyName(int index) => '';

  /// Override to hook into Godot's `_get_property_default_index` virtual.
  int getPropertyDefaultIndex(int index) => 0;

  // Skipped virtual _get_property_options(): unsupported return type "PackedStringArray".
  // Skipped virtual _get_code(): an argument type is unsupported ("typedarray::String").
  /// Override to hook into Godot's `_get_func_code` virtual.
  String getFuncCode(int mode, int type) => '';

  /// Override to hook into Godot's `_get_global_code` virtual.
  String getGlobalCode(int mode) => '';

  /// Override to hook into Godot's `_is_highend` virtual.
  bool isHighend() => false;

  /// Override to hook into Godot's `_is_available` virtual.
  bool isAvailable(int mode, int type) => false;

  static final Pointer<Void> _mb_get_option_index =
      resolveMethodBind('VisualShaderNodeCustom', 'get_option_index', 923996154);

  int getOptionIndex(int option) {
    final arg0 = malloc<Int64>()..value = option;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_option_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
