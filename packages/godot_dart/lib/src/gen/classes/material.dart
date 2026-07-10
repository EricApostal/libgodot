// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Material extends Resource {
  Material(super.nativePtr);

  static final Pointer<Void> _mb_set_next_pass =
      resolveMethodBind('Material', 'set_next_pass', 2757459619);

  void setNextPass(Material nextPass) {
    final arg0 = malloc<Pointer<Void>>()..value = nextPass.nativePtr;
    try {
      ptrcallVoid(_mb_set_next_pass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_next_pass =
      resolveMethodBind('Material', 'get_next_pass', 5934680);

  Material? getNextPass() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_next_pass, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Material(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_render_priority =
      resolveMethodBind('Material', 'set_render_priority', 1286410249);

  void setRenderPriority(int priority) {
    final arg0 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_render_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_render_priority =
      resolveMethodBind('Material', 'get_render_priority', 3905245786);

  int getRenderPriority() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_render_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_inspect_native_shader_code =
      resolveMethodBind('Material', 'inspect_native_shader_code', 3218959716);

  void inspectNativeShaderCode() {
    try {
      ptrcallVoid(_mb_inspect_native_shader_code, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_placeholder =
      resolveMethodBind('Material', 'create_placeholder', 121922552);

  Resource? createPlaceholder() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_placeholder, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
