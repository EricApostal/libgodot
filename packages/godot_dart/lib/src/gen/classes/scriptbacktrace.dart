// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ScriptBacktrace extends RefCounted {
  ScriptBacktrace(super.nativePtr);

  static final Pointer<Void> _mb_get_language_name =
      resolveMethodBind('ScriptBacktrace', 'get_language_name', 201670096);

  String getLanguageName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_language_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_empty =
      resolveMethodBind('ScriptBacktrace', 'is_empty', 36873697);

  bool isEmpty() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_empty, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_frame_count =
      resolveMethodBind('ScriptBacktrace', 'get_frame_count', 3905245786);

  int getFrameCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frame_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_frame_function =
      resolveMethodBind('ScriptBacktrace', 'get_frame_function', 844755477);

  String getFrameFunction(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_frame_function, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_file =
      resolveMethodBind('ScriptBacktrace', 'get_frame_file', 844755477);

  String getFrameFile(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_frame_file, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_frame_line =
      resolveMethodBind('ScriptBacktrace', 'get_frame_line', 923996154);

  int getFrameLine(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frame_line, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_variable_count =
      resolveMethodBind('ScriptBacktrace', 'get_global_variable_count', 3905245786);

  int getGlobalVariableCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_global_variable_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_global_variable_name =
      resolveMethodBind('ScriptBacktrace', 'get_global_variable_name', 844755477);

  String getGlobalVariableName(int variableIndex) {
    final arg0 = malloc<Int64>()..value = variableIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_global_variable_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_global_variable_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_local_variable_count =
      resolveMethodBind('ScriptBacktrace', 'get_local_variable_count', 923996154);

  int getLocalVariableCount(int frameIndex) {
    final arg0 = malloc<Int64>()..value = frameIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_local_variable_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_local_variable_name =
      resolveMethodBind('ScriptBacktrace', 'get_local_variable_name', 1391810591);

  String getLocalVariableName(int frameIndex, int variableIndex) {
    final arg0 = malloc<Int64>()..value = frameIndex;
    final arg1 = malloc<Int64>()..value = variableIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_local_variable_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_local_variable_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_get_member_variable_count =
      resolveMethodBind('ScriptBacktrace', 'get_member_variable_count', 923996154);

  int getMemberVariableCount(int frameIndex) {
    final arg0 = malloc<Int64>()..value = frameIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_member_variable_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_member_variable_name =
      resolveMethodBind('ScriptBacktrace', 'get_member_variable_name', 1391810591);

  String getMemberVariableName(int frameIndex, int variableIndex) {
    final arg0 = malloc<Int64>()..value = frameIndex;
    final arg1 = malloc<Int64>()..value = variableIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_member_variable_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped get_member_variable_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_format =
      resolveMethodBind('ScriptBacktrace', 'format', 3464456933);

  String format(int indentAll, int indentFrames) {
    final arg0 = malloc<Int64>()..value = indentAll;
    final arg1 = malloc<Int64>()..value = indentFrames;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_format, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
