// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeFrame extends VisualShaderNodeResizableBase {
  VisualShaderNodeFrame(super.nativePtr);

  static final Pointer<Void> _mb_set_title =
      resolveMethodBind('VisualShaderNodeFrame', 'set_title', 83702148);

  void setTitle(String title) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), title);
    try {
      ptrcallVoid(_mb_set_title, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_title =
      resolveMethodBind('VisualShaderNodeFrame', 'get_title', 201670096);

  String getTitle() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_title, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tint_color_enabled =
      resolveMethodBind('VisualShaderNodeFrame', 'set_tint_color_enabled', 2586408642);

  void setTintColorEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tint_color_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_tint_color_enabled =
      resolveMethodBind('VisualShaderNodeFrame', 'is_tint_color_enabled', 36873697);

  bool isTintColorEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_tint_color_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tint_color =
      resolveMethodBind('VisualShaderNodeFrame', 'set_tint_color', 2920490490);

  void setTintColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_tint_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tint_color =
      resolveMethodBind('VisualShaderNodeFrame', 'get_tint_color', 3444240500);

  Color getTintColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tint_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autoshrink_enabled =
      resolveMethodBind('VisualShaderNodeFrame', 'set_autoshrink_enabled', 2586408642);

  void setAutoshrinkEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autoshrink_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_autoshrink_enabled =
      resolveMethodBind('VisualShaderNodeFrame', 'is_autoshrink_enabled', 36873697);

  bool isAutoshrinkEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_autoshrink_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_attached_node =
      resolveMethodBind('VisualShaderNodeFrame', 'add_attached_node', 1286410249);

  void addAttachedNode(int node) {
    final arg0 = malloc<Int64>()..value = node;
    try {
      ptrcallVoid(_mb_add_attached_node, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_attached_node =
      resolveMethodBind('VisualShaderNodeFrame', 'remove_attached_node', 1286410249);

  void removeAttachedNode(int node) {
    final arg0 = malloc<Int64>()..value = node;
    try {
      ptrcallVoid(_mb_remove_attached_node, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_attached_nodes(): an argument type is unsupported.
  // Skipped get_attached_nodes(): unsupported return type "PackedInt32Array".
}
