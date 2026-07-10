// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TreeItem extends GodotObject {
  TreeItem(super.nativePtr);

  static final Pointer<Void> _mb_set_cell_mode =
      resolveMethodBind('TreeItem', 'set_cell_mode', 289920701);

  void setCellMode(int column, int mode) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_cell_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_cell_mode =
      resolveMethodBind('TreeItem', 'get_cell_mode', 3406114978);

  int getCellMode(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_auto_translate_mode =
      resolveMethodBind('TreeItem', 'set_auto_translate_mode', 287402019);

  void setAutoTranslateMode(int column, int mode) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_auto_translate_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_auto_translate_mode =
      resolveMethodBind('TreeItem', 'get_auto_translate_mode', 906302372);

  int getAutoTranslateMode(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_auto_translate_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_edit_multiline =
      resolveMethodBind('TreeItem', 'set_edit_multiline', 300928843);

  void setEditMultiline(int column, bool multiline) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = multiline ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_edit_multiline, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_edit_multiline =
      resolveMethodBind('TreeItem', 'is_edit_multiline', 1116898809);

  bool isEditMultiline(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_edit_multiline, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_checked =
      resolveMethodBind('TreeItem', 'set_checked', 300928843);

  void setChecked(int column, bool checked) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = checked ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_checked, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_indeterminate =
      resolveMethodBind('TreeItem', 'set_indeterminate', 300928843);

  void setIndeterminate(int column, bool indeterminate) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = indeterminate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_indeterminate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_checked =
      resolveMethodBind('TreeItem', 'is_checked', 1116898809);

  bool isChecked(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_checked, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_indeterminate =
      resolveMethodBind('TreeItem', 'is_indeterminate', 1116898809);

  bool isIndeterminate(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_indeterminate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_propagate_check =
      resolveMethodBind('TreeItem', 'propagate_check', 972357352);

  void propagateCheck(int column, bool emitSignal) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = emitSignal ? 1 : 0;
    try {
      ptrcallVoid(_mb_propagate_check, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_text =
      resolveMethodBind('TreeItem', 'set_text', 501894301);

  void setText(int column, String text) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), text);
    try {
      ptrcallVoid(_mb_set_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_text =
      resolveMethodBind('TreeItem', 'get_text', 844755477);

  String getText(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_description =
      resolveMethodBind('TreeItem', 'set_description', 501894301);

  void setDescription(int column, String description) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), description);
    try {
      ptrcallVoid(_mb_set_description, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_description =
      resolveMethodBind('TreeItem', 'get_description', 844755477);

  String getDescription(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_description, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_text_direction =
      resolveMethodBind('TreeItem', 'set_text_direction', 1707680378);

  void setTextDirection(int column, int direction) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_text_direction, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_text_direction =
      resolveMethodBind('TreeItem', 'get_text_direction', 4235602388);

  int getTextDirection(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_text_direction, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_autowrap_mode =
      resolveMethodBind('TreeItem', 'set_autowrap_mode', 3633006561);

  void setAutowrapMode(int column, int autowrapMode) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = autowrapMode;
    try {
      ptrcallVoid(_mb_set_autowrap_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_mode =
      resolveMethodBind('TreeItem', 'get_autowrap_mode', 2902757236);

  int getAutowrapMode(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_autowrap_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_autowrap_trim_flags =
      resolveMethodBind('TreeItem', 'set_autowrap_trim_flags', 2186029660);

  void setAutowrapTrimFlags(int column, int flags) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = flags;
    try {
      ptrcallVoid(_mb_set_autowrap_trim_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_autowrap_trim_flags =
      resolveMethodBind('TreeItem', 'get_autowrap_trim_flags', 3513056523);

  int getAutowrapTrimFlags(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_autowrap_trim_flags, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_text_overrun_behavior =
      resolveMethodBind('TreeItem', 'set_text_overrun_behavior', 1940772195);

  void setTextOverrunBehavior(int column, int overrunBehavior) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = overrunBehavior;
    try {
      ptrcallVoid(_mb_set_text_overrun_behavior, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_text_overrun_behavior =
      resolveMethodBind('TreeItem', 'get_text_overrun_behavior', 3782727860);

  int getTextOverrunBehavior(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_text_overrun_behavior, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_structured_text_bidi_override =
      resolveMethodBind('TreeItem', 'set_structured_text_bidi_override', 868756907);

  void setStructuredTextBidiOverride(int column, int parser) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = parser;
    try {
      ptrcallVoid(_mb_set_structured_text_bidi_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_structured_text_bidi_override =
      resolveMethodBind('TreeItem', 'get_structured_text_bidi_override', 3377823772);

  int getStructuredTextBidiOverride(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_structured_text_bidi_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_structured_text_bidi_override_options(): an argument type is unsupported.
  // Skipped get_structured_text_bidi_override_options(): unsupported return type "Array".
  static final Pointer<Void> _mb_set_language =
      resolveMethodBind('TreeItem', 'set_language', 501894301);

  void setLanguage(int column, String language) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), language);
    try {
      ptrcallVoid(_mb_set_language, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_language =
      resolveMethodBind('TreeItem', 'get_language', 844755477);

  String getLanguage(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_language, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_suffix =
      resolveMethodBind('TreeItem', 'set_suffix', 501894301);

  void setSuffix(int column, String text) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), text);
    try {
      ptrcallVoid(_mb_set_suffix, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_suffix =
      resolveMethodBind('TreeItem', 'get_suffix', 844755477);

  String getSuffix(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_suffix, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_icon =
      resolveMethodBind('TreeItem', 'set_icon', 666127730);

  void setIcon(int column, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_icon =
      resolveMethodBind('TreeItem', 'get_icon', 3536238170);

  Texture2D? getIcon(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_icon, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_icon_overlay =
      resolveMethodBind('TreeItem', 'set_icon_overlay', 666127730);

  void setIconOverlay(int column, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_icon_overlay, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_icon_overlay =
      resolveMethodBind('TreeItem', 'get_icon_overlay', 3536238170);

  Texture2D? getIconOverlay(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_icon_overlay, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_icon_region =
      resolveMethodBind('TreeItem', 'set_icon_region', 1356297692);

  void setIconRegion(int column, Rect2 region) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    region.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_icon_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_icon_region =
      resolveMethodBind('TreeItem', 'get_icon_region', 3327874267);

  Rect2 getIconRegion(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_icon_region, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_icon_max_width =
      resolveMethodBind('TreeItem', 'set_icon_max_width', 3937882851);

  void setIconMaxWidth(int column, int width) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = width;
    try {
      ptrcallVoid(_mb_set_icon_max_width, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_icon_max_width =
      resolveMethodBind('TreeItem', 'get_icon_max_width', 923996154);

  int getIconMaxWidth(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_icon_max_width, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_icon_modulate =
      resolveMethodBind('TreeItem', 'set_icon_modulate', 2878471219);

  void setIconModulate(int column, Color modulate) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    modulate.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_icon_modulate, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_icon_modulate =
      resolveMethodBind('TreeItem', 'get_icon_modulate', 3457211756);

  Color getIconModulate(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_icon_modulate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_range =
      resolveMethodBind('TreeItem', 'set_range', 1602489585);

  void setRange(int column, double value) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_range, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_range =
      resolveMethodBind('TreeItem', 'get_range', 2339986948);

  double getRange(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_range, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_range_config =
      resolveMethodBind('TreeItem', 'set_range_config', 1547181014);

  void setRangeConfig(int column, double min, double max, double step, bool expr) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Double>()..value = min;
    final arg2 = malloc<Double>()..value = max;
    final arg3 = malloc<Double>()..value = step;
    final arg4 = malloc<Uint8>()..value = expr ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_range_config, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
    }
  }

  // Skipped get_range_config(): unsupported return type "Dictionary".
  // Skipped set_metadata(): an argument type is unsupported.
  // Skipped get_metadata(): unsupported return type "Variant".
  // Skipped set_custom_draw(): an argument type is unsupported.
  // Skipped set_custom_draw_callback(): an argument type is unsupported.
  // Skipped get_custom_draw_callback(): unsupported return type "Callable".
  static final Pointer<Void> _mb_set_custom_stylebox =
      resolveMethodBind('TreeItem', 'set_custom_stylebox', 1433009359);

  void setCustomStylebox(int column, StyleBox stylebox) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Pointer<Void>>()..value = stylebox.nativePtr;
    try {
      ptrcallVoid(_mb_set_custom_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_custom_stylebox =
      resolveMethodBind('TreeItem', 'get_custom_stylebox', 3362509644);

  StyleBox? getCustomStylebox(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_custom_stylebox, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : StyleBox(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collapsed =
      resolveMethodBind('TreeItem', 'set_collapsed', 2586408642);

  void setCollapsed(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collapsed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_collapsed =
      resolveMethodBind('TreeItem', 'is_collapsed', 2240911060);

  bool isCollapsed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_collapsed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collapsed_recursive =
      resolveMethodBind('TreeItem', 'set_collapsed_recursive', 2586408642);

  void setCollapsedRecursive(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collapsed_recursive, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_any_collapsed =
      resolveMethodBind('TreeItem', 'is_any_collapsed', 2595650253);

  bool isAnyCollapsed(bool onlyVisible) {
    final arg0 = malloc<Uint8>()..value = onlyVisible ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_any_collapsed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_visible =
      resolveMethodBind('TreeItem', 'set_visible', 2586408642);

  void setVisible(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visible =
      resolveMethodBind('TreeItem', 'is_visible', 2240911060);

  bool isVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_visible_in_tree =
      resolveMethodBind('TreeItem', 'is_visible_in_tree', 36873697);

  bool isVisibleInTree() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_visible_in_tree, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_uncollapse_tree =
      resolveMethodBind('TreeItem', 'uncollapse_tree', 3218959716);

  void uncollapseTree() {
    try {
      ptrcallVoid(_mb_uncollapse_tree, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_minimum_height =
      resolveMethodBind('TreeItem', 'set_custom_minimum_height', 1286410249);

  void setCustomMinimumHeight(int height) {
    final arg0 = malloc<Int64>()..value = height;
    try {
      ptrcallVoid(_mb_set_custom_minimum_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_minimum_height =
      resolveMethodBind('TreeItem', 'get_custom_minimum_height', 3905245786);

  int getCustomMinimumHeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_custom_minimum_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_selectable =
      resolveMethodBind('TreeItem', 'set_selectable', 300928843);

  void setSelectable(int column, bool selectable) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = selectable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_selectable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_selectable =
      resolveMethodBind('TreeItem', 'is_selectable', 1116898809);

  bool isSelectable(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selectable, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_selected =
      resolveMethodBind('TreeItem', 'is_selected', 3067735520);

  bool isSelected(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_selected, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_select =
      resolveMethodBind('TreeItem', 'select', 972357352);

  void select(int column, bool setAsCursor) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = setAsCursor ? 1 : 0;
    try {
      ptrcallVoid(_mb_select, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_deselect =
      resolveMethodBind('TreeItem', 'deselect', 1286410249);

  void deselect(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      ptrcallVoid(_mb_deselect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_editable =
      resolveMethodBind('TreeItem', 'set_editable', 300928843);

  void setEditable(int column, bool enabled) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editable, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_editable =
      resolveMethodBind('TreeItem', 'is_editable', 3067735520);

  bool isEditable(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editable, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_color =
      resolveMethodBind('TreeItem', 'set_custom_color', 2878471219);

  void setCustomColor(int column, Color color) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_custom_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_custom_color =
      resolveMethodBind('TreeItem', 'get_custom_color', 3457211756);

  Color getCustomColor(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_custom_color =
      resolveMethodBind('TreeItem', 'clear_custom_color', 1286410249);

  void clearCustomColor(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      ptrcallVoid(_mb_clear_custom_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_font =
      resolveMethodBind('TreeItem', 'set_custom_font', 2637609184);

  void setCustomFont(int column, Font font) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_set_custom_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_custom_font =
      resolveMethodBind('TreeItem', 'get_custom_font', 4244553094);

  Font? getCustomFont(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_custom_font, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_font_size =
      resolveMethodBind('TreeItem', 'set_custom_font_size', 3937882851);

  void setCustomFontSize(int column, int fontSize) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_set_custom_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_custom_font_size =
      resolveMethodBind('TreeItem', 'get_custom_font_size', 923996154);

  int getCustomFontSize(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_custom_font_size, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_bg_color =
      resolveMethodBind('TreeItem', 'set_custom_bg_color', 894174518);

  void setCustomBgColor(int column, Color color, bool justOutline) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>()..value = justOutline ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_custom_bg_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_clear_custom_bg_color =
      resolveMethodBind('TreeItem', 'clear_custom_bg_color', 1286410249);

  void clearCustomBgColor(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      ptrcallVoid(_mb_clear_custom_bg_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_bg_color =
      resolveMethodBind('TreeItem', 'get_custom_bg_color', 3457211756);

  Color getCustomBgColor(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_custom_bg_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_as_button =
      resolveMethodBind('TreeItem', 'set_custom_as_button', 300928843);

  void setCustomAsButton(int column, bool enable) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_custom_as_button, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_is_custom_set_as_button =
      resolveMethodBind('TreeItem', 'is_custom_set_as_button', 1116898809);

  bool isCustomSetAsButton(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_custom_set_as_button, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_buttons =
      resolveMethodBind('TreeItem', 'clear_buttons', 3218959716);

  void clearButtons() {
    try {
      ptrcallVoid(_mb_clear_buttons, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_button =
      resolveMethodBind('TreeItem', 'add_button', 973481897);

  void addButton(int column, Texture2D button, int id, bool disabled, String tooltipText, String description) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Pointer<Void>>()..value = button.nativePtr;
    final arg2 = malloc<Int64>()..value = id;
    final arg3 = malloc<Uint8>()..value = disabled ? 1 : 0;
    final arg4 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg4.cast(), tooltipText);
    final arg5 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg5.cast(), description);
    try {
      ptrcallVoid(_mb_add_button, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      BuiltinMarshal.destroyGDString(arg4.cast());
      malloc.free(arg4);
      BuiltinMarshal.destroyGDString(arg5.cast());
      malloc.free(arg5);
    }
  }

  static final Pointer<Void> _mb_get_button_count =
      resolveMethodBind('TreeItem', 'get_button_count', 923996154);

  int getButtonCount(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_button_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_button_tooltip_text =
      resolveMethodBind('TreeItem', 'get_button_tooltip_text', 1391810591);

  String getButtonTooltipText(int column, int buttonIndex) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_button_tooltip_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_button_id =
      resolveMethodBind('TreeItem', 'get_button_id', 3175239445);

  int getButtonId(int column, int buttonIndex) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_button_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_button_by_id =
      resolveMethodBind('TreeItem', 'get_button_by_id', 3175239445);

  int getButtonById(int column, int id) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_button_by_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_button_color =
      resolveMethodBind('TreeItem', 'get_button_color', 2165839948);

  Color getButtonColor(int column, int id) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_button_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_button =
      resolveMethodBind('TreeItem', 'get_button', 2584904275);

  Texture2D? getButton(int column, int buttonIndex) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_button, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_button_tooltip_text =
      resolveMethodBind('TreeItem', 'set_button_tooltip_text', 2285447957);

  void setButtonTooltipText(int column, int buttonIndex, String tooltip) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), tooltip);
    try {
      ptrcallVoid(_mb_set_button_tooltip_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_button =
      resolveMethodBind('TreeItem', 'set_button', 176101966);

  void setButton(int column, int buttonIndex, Texture2D button) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    final arg2 = malloc<Pointer<Void>>()..value = button.nativePtr;
    try {
      ptrcallVoid(_mb_set_button, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_erase_button =
      resolveMethodBind('TreeItem', 'erase_button', 3937882851);

  void eraseButton(int column, int buttonIndex) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    try {
      ptrcallVoid(_mb_erase_button, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_button_description =
      resolveMethodBind('TreeItem', 'set_button_description', 2285447957);

  void setButtonDescription(int column, int buttonIndex, String description) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg2.cast(), description);
    try {
      ptrcallVoid(_mb_set_button_description, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      BuiltinMarshal.destroyGDString(arg2.cast());
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_button_disabled =
      resolveMethodBind('TreeItem', 'set_button_disabled', 1383440665);

  void setButtonDisabled(int column, int buttonIndex, bool disabled) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    final arg2 = malloc<Uint8>()..value = disabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_button_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_button_color =
      resolveMethodBind('TreeItem', 'set_button_color', 3733378741);

  void setButtonColor(int column, int buttonIndex, Color color) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    final arg2 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_button_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_button_disabled =
      resolveMethodBind('TreeItem', 'is_button_disabled', 2522259332);

  bool isButtonDisabled(int column, int buttonIndex) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = buttonIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_button_disabled, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_tooltip_text =
      resolveMethodBind('TreeItem', 'set_tooltip_text', 501894301);

  void setTooltipText(int column, String tooltip) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), tooltip);
    try {
      ptrcallVoid(_mb_set_tooltip_text, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tooltip_text =
      resolveMethodBind('TreeItem', 'get_tooltip_text', 844755477);

  String getTooltipText(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_tooltip_text, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_set_text_alignment =
      resolveMethodBind('TreeItem', 'set_text_alignment', 3276431499);

  void setTextAlignment(int column, int textAlignment) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Int64>()..value = textAlignment;
    try {
      ptrcallVoid(_mb_set_text_alignment, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_text_alignment =
      resolveMethodBind('TreeItem', 'get_text_alignment', 4171562184);

  int getTextAlignment(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_text_alignment, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_expand_right =
      resolveMethodBind('TreeItem', 'set_expand_right', 300928843);

  void setExpandRight(int column, bool enable) {
    final arg0 = malloc<Int64>()..value = column;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_expand_right, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_expand_right =
      resolveMethodBind('TreeItem', 'get_expand_right', 1116898809);

  bool getExpandRight(int column) {
    final arg0 = malloc<Int64>()..value = column;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_expand_right, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_disable_folding =
      resolveMethodBind('TreeItem', 'set_disable_folding', 2586408642);

  void setDisableFolding(bool disable) {
    final arg0 = malloc<Uint8>()..value = disable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_folding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_folding_disabled =
      resolveMethodBind('TreeItem', 'is_folding_disabled', 36873697);

  bool isFoldingDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_folding_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accept_children =
      resolveMethodBind('TreeItem', 'set_accept_children', 2586408642);

  void setAcceptChildren(bool allowed) {
    final arg0 = malloc<Uint8>()..value = allowed ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_accept_children, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_accepting_children =
      resolveMethodBind('TreeItem', 'is_accepting_children', 36873697);

  bool isAcceptingChildren() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_accepting_children, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_child =
      resolveMethodBind('TreeItem', 'create_child', 954243986);

  TreeItem? createChild(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_child, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_child =
      resolveMethodBind('TreeItem', 'add_child', 1819951137);

  void addChild(TreeItem child) {
    final arg0 = malloc<Pointer<Void>>()..value = child.nativePtr;
    try {
      ptrcallVoid(_mb_add_child, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_child =
      resolveMethodBind('TreeItem', 'remove_child', 1819951137);

  void removeChild(TreeItem child) {
    final arg0 = malloc<Pointer<Void>>()..value = child.nativePtr;
    try {
      ptrcallVoid(_mb_remove_child, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tree =
      resolveMethodBind('TreeItem', 'get_tree', 2243340556);

  Tree? getTree() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tree, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tree(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next =
      resolveMethodBind('TreeItem', 'get_next', 1514277247);

  TreeItem? getNext() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_next, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_prev =
      resolveMethodBind('TreeItem', 'get_prev', 2768121250);

  TreeItem? getPrev() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_prev, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_parent =
      resolveMethodBind('TreeItem', 'get_parent', 1514277247);

  TreeItem? getParent() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_parent, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_first_child =
      resolveMethodBind('TreeItem', 'get_first_child', 1514277247);

  TreeItem? getFirstChild() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_first_child, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next_in_tree =
      resolveMethodBind('TreeItem', 'get_next_in_tree', 1666920593);

  TreeItem? getNextInTree(bool wrap) {
    final arg0 = malloc<Uint8>()..value = wrap ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_next_in_tree, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_prev_in_tree =
      resolveMethodBind('TreeItem', 'get_prev_in_tree', 1666920593);

  TreeItem? getPrevInTree(bool wrap) {
    final arg0 = malloc<Uint8>()..value = wrap ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_prev_in_tree, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_next_visible =
      resolveMethodBind('TreeItem', 'get_next_visible', 1666920593);

  TreeItem? getNextVisible(bool wrap) {
    final arg0 = malloc<Uint8>()..value = wrap ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_next_visible, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_prev_visible =
      resolveMethodBind('TreeItem', 'get_prev_visible', 1666920593);

  TreeItem? getPrevVisible(bool wrap) {
    final arg0 = malloc<Uint8>()..value = wrap ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_prev_visible, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_child =
      resolveMethodBind('TreeItem', 'get_child', 306700752);

  TreeItem? getChild(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_child, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TreeItem(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_child_count =
      resolveMethodBind('TreeItem', 'get_child_count', 2455072627);

  int getChildCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_child_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_children(): unsupported return type "typedarray::TreeItem".
  static final Pointer<Void> _mb_get_index =
      resolveMethodBind('TreeItem', 'get_index', 2455072627);

  int getIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_move_before =
      resolveMethodBind('TreeItem', 'move_before', 1819951137);

  void moveBefore(TreeItem item) {
    final arg0 = malloc<Pointer<Void>>()..value = item.nativePtr;
    try {
      ptrcallVoid(_mb_move_before, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_after =
      resolveMethodBind('TreeItem', 'move_after', 1819951137);

  void moveAfter(TreeItem item) {
    final arg0 = malloc<Pointer<Void>>()..value = item.nativePtr;
    try {
      ptrcallVoid(_mb_move_after, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
