// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Script extends Resource {
  Script(super.nativePtr);

  static final Pointer<Void> _mb_can_instantiate =
      resolveMethodBind('Script', 'can_instantiate', 36873697);

  bool canInstantiate() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_instantiate, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_source_code =
      resolveMethodBind('Script', 'has_source_code', 36873697);

  bool hasSourceCode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_source_code, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_source_code =
      resolveMethodBind('Script', 'get_source_code', 201670096);

  String getSourceCode() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_source_code, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_source_code =
      resolveMethodBind('Script', 'set_source_code', 83702148);

  void setSourceCode(String source) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), source);
    try {
      ptrcallVoid(_mb_set_source_code, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reload =
      resolveMethodBind('Script', 'reload', 1633102583);

  int reload(bool keepState) {
    final arg0 = malloc<Uint8>()..value = keepState ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_reload, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_base_script =
      resolveMethodBind('Script', 'get_base_script', 278624046);

  Script? getBaseScript() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_base_script, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Script(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_instance_base_type =
      resolveMethodBind('Script', 'get_instance_base_type', 2002593661);

  String getInstanceBaseType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_instance_base_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_name =
      resolveMethodBind('Script', 'get_global_name', 2002593661);

  String getGlobalName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_global_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_script_method =
      resolveMethodBind('Script', 'has_script_method', 2619796661);

  bool hasScriptMethod(String methodName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), methodName);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_script_method, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_script_signal =
      resolveMethodBind('Script', 'has_script_signal', 2619796661);

  bool hasScriptSignal(String signalName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), signalName);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_script_signal, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_script_property_list(): unsupported return type "typedarray::Dictionary".
  // Skipped get_script_method_list(): unsupported return type "typedarray::Dictionary".
  // Skipped get_script_signal_list(): unsupported return type "typedarray::Dictionary".
  // Skipped get_script_constant_map(): unsupported return type "Dictionary".
  // Skipped get_property_default_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_is_tool =
      resolveMethodBind('Script', 'is_tool', 36873697);

  bool isTool() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tool, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_abstract =
      resolveMethodBind('Script', 'is_abstract', 36873697);

  bool isAbstract() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_abstract, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_rpc_config(): unsupported return type "Variant".
  // Skipped instance_has(): an argument type is unsupported.
}
