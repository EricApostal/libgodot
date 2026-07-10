// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeTextureParameter extends VisualShaderNodeParameter {
  VisualShaderNodeTextureParameter(super.nativePtr);

  static final Pointer<Void> _mb_set_texture_type =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'set_texture_type', 2227296876);

  void setTextureType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_texture_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_type =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'get_texture_type', 367922070);

  int getTextureType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color_default =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'set_color_default', 4217624432);

  void setColorDefault(int color) {
    final arg0 = malloc<Int64>()..value = color;
    try {
      ptrcallVoid(_mb_set_color_default, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_default =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'get_color_default', 3837060134);

  int getColorDefault() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_color_default, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_filter =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'set_texture_filter', 2147684752);

  void setTextureFilter(int filter) {
    final arg0 = malloc<Int64>()..value = filter;
    try {
      ptrcallVoid(_mb_set_texture_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_filter =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'get_texture_filter', 4184490817);

  int getTextureFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_repeat =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'set_texture_repeat', 2036143070);

  void setTextureRepeat(int repeat) {
    final arg0 = malloc<Int64>()..value = repeat;
    try {
      ptrcallVoid(_mb_set_texture_repeat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_repeat =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'get_texture_repeat', 1690132794);

  int getTextureRepeat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_repeat, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_source =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'set_texture_source', 1212687372);

  void setTextureSource(int source) {
    final arg0 = malloc<Int64>()..value = source;
    try {
      ptrcallVoid(_mb_set_texture_source, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_source =
      resolveMethodBind('VisualShaderNodeTextureParameter', 'get_texture_source', 2039092262);

  int getTextureSource() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_source, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
