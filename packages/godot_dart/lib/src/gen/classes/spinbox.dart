// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SpinBox extends Range {
  SpinBox(super.nativePtr);

  /// Constructs a brand-new engine-owned SpinBox instance
  /// (via classdb_construct_object3), not an existing one.
  factory SpinBox.create() {
    return SpinBox(resolveClassConstructor('SpinBox'));
  }

  static final Pointer<Void> _mb_set_horizontal_alignment =
      resolveMethodBind('SpinBox', 'set_horizontal_alignment', 2312603777);

  void setHorizontalAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_horizontal_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_horizontal_alignment =
      resolveMethodBind('SpinBox', 'get_horizontal_alignment', 341400642);

  int getHorizontalAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_horizontal_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_suffix =
      resolveMethodBind('SpinBox', 'set_suffix', 83702148);

  void setSuffix(String suffix) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), suffix);
    try {
      ptrcallVoid(_mb_set_suffix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_suffix =
      resolveMethodBind('SpinBox', 'get_suffix', 201670096);

  String getSuffix() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_suffix, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_prefix =
      resolveMethodBind('SpinBox', 'set_prefix', 83702148);

  void setPrefix(String prefix) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), prefix);
    try {
      ptrcallVoid(_mb_set_prefix, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_prefix =
      resolveMethodBind('SpinBox', 'get_prefix', 201670096);

  String getPrefix() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_prefix, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_editable =
      resolveMethodBind('SpinBox', 'set_editable', 2586408642);

  void setEditable(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_custom_arrow_step =
      resolveMethodBind('SpinBox', 'set_custom_arrow_step', 373806689);

  void setCustomArrowStep(double arrowStep) {
    final arg0 = malloc<Double>()..value = arrowStep;
    try {
      ptrcallVoid(_mb_set_custom_arrow_step, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_custom_arrow_step =
      resolveMethodBind('SpinBox', 'get_custom_arrow_step', 1740695150);

  double getCustomArrowStep() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_custom_arrow_step, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_custom_arrow_round =
      resolveMethodBind('SpinBox', 'set_custom_arrow_round', 2586408642);

  void setCustomArrowRound(bool round) {
    final arg0 = malloc<Uint8>()..value = round ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_custom_arrow_round, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_custom_arrow_rounding =
      resolveMethodBind('SpinBox', 'is_custom_arrow_rounding', 36873697);

  bool isCustomArrowRounding() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_custom_arrow_rounding, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_editable =
      resolveMethodBind('SpinBox', 'is_editable', 36873697);

  bool isEditable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_update_on_text_changed =
      resolveMethodBind('SpinBox', 'set_update_on_text_changed', 2586408642);

  void setUpdateOnTextChanged(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_update_on_text_changed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_update_on_text_changed =
      resolveMethodBind('SpinBox', 'get_update_on_text_changed', 36873697);

  bool getUpdateOnTextChanged() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_update_on_text_changed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_select_all_on_focus =
      resolveMethodBind('SpinBox', 'set_select_all_on_focus', 2586408642);

  void setSelectAllOnFocus(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_select_all_on_focus, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_select_all_on_focus =
      resolveMethodBind('SpinBox', 'is_select_all_on_focus', 36873697);

  bool isSelectAllOnFocus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_select_all_on_focus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_apply =
      resolveMethodBind('SpinBox', 'apply', 3218959716);

  void apply() {
    try {
      ptrcallVoid(_mb_apply, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_line_edit =
      resolveMethodBind('SpinBox', 'get_line_edit', 4071694264);

  LineEdit? getLineEdit() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_line_edit, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : LineEdit(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
