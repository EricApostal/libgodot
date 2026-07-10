// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Theme extends Resource {
  Theme(super.nativePtr);

  /// Constructs a brand-new engine-owned Theme instance
  /// (via classdb_construct_object3), not an existing one.
  factory Theme.create() {
    return Theme(resolveClassConstructor('Theme'));
  }

  static final Pointer<Void> _mb_set_icon =
      resolveMethodBind('Theme', 'set_icon', 2188371082);

  void setIcon(String name, String themeType, Texture2D texture) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    final arg2 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_icon =
      resolveMethodBind('Theme', 'get_icon', 934555193);

  Texture2D? getIcon(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_icon =
      resolveMethodBind('Theme', 'has_icon', 471820014);

  bool hasIcon(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_rename_icon =
      resolveMethodBind('Theme', 'rename_icon', 642128662);

  void renameIcon(String oldName, String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_icon =
      resolveMethodBind('Theme', 'clear_icon', 3740211285);

  void clearIcon(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_icon_list(): unsupported return type "PackedStringArray".
  // Skipped get_icon_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_stylebox =
      resolveMethodBind('Theme', 'set_stylebox', 2075907568);

  void setStylebox(String name, String themeType, StyleBox texture) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    final arg2 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_stylebox =
      resolveMethodBind('Theme', 'get_stylebox', 3405608165);

  StyleBox? getStylebox(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StyleBox(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_stylebox =
      resolveMethodBind('Theme', 'has_stylebox', 471820014);

  bool hasStylebox(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_rename_stylebox =
      resolveMethodBind('Theme', 'rename_stylebox', 642128662);

  void renameStylebox(String oldName, String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_stylebox =
      resolveMethodBind('Theme', 'clear_stylebox', 3740211285);

  void clearStylebox(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_stylebox_list(): unsupported return type "PackedStringArray".
  // Skipped get_stylebox_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_font =
      resolveMethodBind('Theme', 'set_font', 177292320);

  void setFont(String name, String themeType, Font font) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    final arg2 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_font =
      resolveMethodBind('Theme', 'get_font', 3445063586);

  Font? getFont(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_font =
      resolveMethodBind('Theme', 'has_font', 471820014);

  bool hasFont(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_rename_font =
      resolveMethodBind('Theme', 'rename_font', 642128662);

  void renameFont(String oldName, String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_font =
      resolveMethodBind('Theme', 'clear_font', 3740211285);

  void clearFont(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_font_list(): unsupported return type "PackedStringArray".
  // Skipped get_font_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_font_size =
      resolveMethodBind('Theme', 'set_font_size', 281601298);

  void setFontSize(String name, String themeType, int fontSize) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    final arg2 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_set_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_font_size =
      resolveMethodBind('Theme', 'get_font_size', 2419549490);

  int getFontSize(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_font_size =
      resolveMethodBind('Theme', 'has_font_size', 471820014);

  bool hasFontSize(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_rename_font_size =
      resolveMethodBind('Theme', 'rename_font_size', 642128662);

  void renameFontSize(String oldName, String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_font_size =
      resolveMethodBind('Theme', 'clear_font_size', 3740211285);

  void clearFontSize(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_font_size_list(): unsupported return type "PackedStringArray".
  // Skipped get_font_size_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_color =
      resolveMethodBind('Theme', 'set_color', 4111215154);

  void setColor(String name, String themeType, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_color =
      resolveMethodBind('Theme', 'get_color', 2015923404);

  Color getColor(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_color =
      resolveMethodBind('Theme', 'has_color', 471820014);

  bool hasColor(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_rename_color =
      resolveMethodBind('Theme', 'rename_color', 642128662);

  void renameColor(String oldName, String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_color =
      resolveMethodBind('Theme', 'clear_color', 3740211285);

  void clearColor(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_color_list(): unsupported return type "PackedStringArray".
  // Skipped get_color_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_constant =
      resolveMethodBind('Theme', 'set_constant', 281601298);

  void setConstant(String name, String themeType, int constant) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    final arg2 = malloc<Int64>()..value = constant;
    try {
      ptrcallVoid(_mb_set_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_constant =
      resolveMethodBind('Theme', 'get_constant', 2419549490);

  int getConstant(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_constant =
      resolveMethodBind('Theme', 'has_constant', 471820014);

  bool hasConstant(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_rename_constant =
      resolveMethodBind('Theme', 'rename_constant', 642128662);

  void renameConstant(String oldName, String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), oldName);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_constant =
      resolveMethodBind('Theme', 'clear_constant', 3740211285);

  void clearConstant(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_constant_list(): unsupported return type "PackedStringArray".
  // Skipped get_constant_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_default_base_scale =
      resolveMethodBind('Theme', 'set_default_base_scale', 373806689);

  void setDefaultBaseScale(double baseScale) {
    final arg0 = malloc<Double>()..value = baseScale;
    try {
      ptrcallVoid(_mb_set_default_base_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_base_scale =
      resolveMethodBind('Theme', 'get_default_base_scale', 1740695150);

  double getDefaultBaseScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_default_base_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_default_base_scale =
      resolveMethodBind('Theme', 'has_default_base_scale', 36873697);

  bool hasDefaultBaseScale() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_default_base_scale, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_font =
      resolveMethodBind('Theme', 'set_default_font', 1262170328);

  void setDefaultFont(Font font) {
    final arg0 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_default_font, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_font =
      resolveMethodBind('Theme', 'get_default_font', 3229501585);

  Font? getDefaultFont() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_default_font, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_default_font =
      resolveMethodBind('Theme', 'has_default_font', 36873697);

  bool hasDefaultFont() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_default_font, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_font_size =
      resolveMethodBind('Theme', 'set_default_font_size', 1286410249);

  void setDefaultFontSize(int fontSize) {
    final arg0 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_set_default_font_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_font_size =
      resolveMethodBind('Theme', 'get_default_font_size', 3905245786);

  int getDefaultFontSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_font_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_default_font_size =
      resolveMethodBind('Theme', 'has_default_font_size', 36873697);

  bool hasDefaultFontSize() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_default_font_size, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_theme_item(): an argument type is unsupported.
  // Skipped get_theme_item(): unsupported return type "Variant".
  static final Pointer<Void> _mb_has_theme_item =
      resolveMethodBind('Theme', 'has_theme_item', 1739311056);

  bool hasThemeItem(int dataType, String name, String themeType) {
    final arg0 = malloc<Int64>()..value = dataType;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_rename_theme_item =
      resolveMethodBind('Theme', 'rename_theme_item', 3900867553);

  void renameThemeItem(int dataType, String oldName, String name, String themeType) {
    final arg0 = malloc<Int64>()..value = dataType;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), oldName);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), name);
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg3.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_theme_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
      BuiltinMarshal.destroyStringName(arg3.cast());
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_clear_theme_item =
      resolveMethodBind('Theme', 'clear_theme_item', 2965505587);

  void clearThemeItem(int dataType, String name, String themeType) {
    final arg0 = malloc<Int64>()..value = dataType;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_theme_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  // Skipped get_theme_item_list(): unsupported return type "PackedStringArray".
  // Skipped get_theme_item_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_set_type_variation =
      resolveMethodBind('Theme', 'set_type_variation', 3740211285);

  void setTypeVariation(String themeType, String baseType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), baseType);
    try {
      ptrcallVoid(_mb_set_type_variation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_type_variation =
      resolveMethodBind('Theme', 'is_type_variation', 471820014);

  bool isTypeVariation(String themeType, String baseType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), baseType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_type_variation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear_type_variation =
      resolveMethodBind('Theme', 'clear_type_variation', 3304788590);

  void clearTypeVariation(String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    try {
      ptrcallVoid(_mb_clear_type_variation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_type_variation_base =
      resolveMethodBind('Theme', 'get_type_variation_base', 1965194235);

  String getTypeVariationBase(String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_type_variation_base, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_type_variation_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_add_type =
      resolveMethodBind('Theme', 'add_type', 3304788590);

  void addType(String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    try {
      ptrcallVoid(_mb_add_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_type =
      resolveMethodBind('Theme', 'remove_type', 3304788590);

  void removeType(String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    try {
      ptrcallVoid(_mb_remove_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_rename_type =
      resolveMethodBind('Theme', 'rename_type', 3740211285);

  void renameType(String oldThemeType, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), oldThemeType);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      ptrcallVoid(_mb_rename_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_type_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_merge_with =
      resolveMethodBind('Theme', 'merge_with', 2326690814);

  void mergeWith(Theme other) {
    final arg0 = malloc<Pointer<Void>>()..value = other.nativePtr;
    try {
      ptrcallVoid(_mb_merge_with, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('Theme', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

}
