// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeGroupBase extends VisualShaderNodeResizableBase {
  VisualShaderNodeGroupBase(super.nativePtr);

  static final Pointer<Void> _mb_set_inputs =
      resolveMethodBind('VisualShaderNodeGroupBase', 'set_inputs', 83702148);

  void setInputs(String inputs) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), inputs);
    try {
      ptrcallVoid(_mb_set_inputs, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_inputs =
      resolveMethodBind('VisualShaderNodeGroupBase', 'get_inputs', 201670096);

  String getInputs() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_inputs, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_outputs =
      resolveMethodBind('VisualShaderNodeGroupBase', 'set_outputs', 83702148);

  void setOutputs(String outputs) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), outputs);
    try {
      ptrcallVoid(_mb_set_outputs, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_outputs =
      resolveMethodBind('VisualShaderNodeGroupBase', 'get_outputs', 201670096);

  String getOutputs() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_outputs, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_valid_port_name =
      resolveMethodBind('VisualShaderNodeGroupBase', 'is_valid_port_name', 3927539163);

  bool isValidPortName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_valid_port_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_input_port =
      resolveMethodBind('VisualShaderNodeGroupBase', 'add_input_port', 2285447957);

  void addInputPort(int id, int type, String name) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = type;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), name);
    try {
      ptrcallVoid(_mb_add_input_port, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_input_port =
      resolveMethodBind('VisualShaderNodeGroupBase', 'remove_input_port', 1286410249);

  void removeInputPort(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_input_port, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_port_count =
      resolveMethodBind('VisualShaderNodeGroupBase', 'get_input_port_count', 3905245786);

  int getInputPortCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_port_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_input_port =
      resolveMethodBind('VisualShaderNodeGroupBase', 'has_input_port', 1116898809);

  bool hasInputPort(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_input_port, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_input_ports =
      resolveMethodBind('VisualShaderNodeGroupBase', 'clear_input_ports', 3218959716);

  void clearInputPorts() {
    try {
      ptrcallVoid(_mb_clear_input_ports, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_output_port =
      resolveMethodBind('VisualShaderNodeGroupBase', 'add_output_port', 2285447957);

  void addOutputPort(int id, int type, String name) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = type;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), name);
    try {
      ptrcallVoid(_mb_add_output_port, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_remove_output_port =
      resolveMethodBind('VisualShaderNodeGroupBase', 'remove_output_port', 1286410249);

  void removeOutputPort(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_output_port, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_output_port_count =
      resolveMethodBind('VisualShaderNodeGroupBase', 'get_output_port_count', 3905245786);

  int getOutputPortCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_output_port_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_output_port =
      resolveMethodBind('VisualShaderNodeGroupBase', 'has_output_port', 1116898809);

  bool hasOutputPort(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_output_port, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_output_ports =
      resolveMethodBind('VisualShaderNodeGroupBase', 'clear_output_ports', 3218959716);

  void clearOutputPorts() {
    try {
      ptrcallVoid(_mb_clear_output_ports, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_input_port_name =
      resolveMethodBind('VisualShaderNodeGroupBase', 'set_input_port_name', 501894301);

  void setInputPortName(int id, String name) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_input_port_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_input_port_type =
      resolveMethodBind('VisualShaderNodeGroupBase', 'set_input_port_type', 3937882851);

  void setInputPortType(int id, int type) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_input_port_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_output_port_name =
      resolveMethodBind('VisualShaderNodeGroupBase', 'set_output_port_name', 501894301);

  void setOutputPortName(int id, String name) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_output_port_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_output_port_type =
      resolveMethodBind('VisualShaderNodeGroupBase', 'set_output_port_type', 3937882851);

  void setOutputPortType(int id, int type) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_output_port_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_free_input_port_id =
      resolveMethodBind('VisualShaderNodeGroupBase', 'get_free_input_port_id', 3905245786);

  int getFreeInputPortId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_free_input_port_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_free_output_port_id =
      resolveMethodBind('VisualShaderNodeGroupBase', 'get_free_output_port_id', 3905245786);

  int getFreeOutputPortId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_free_output_port_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
