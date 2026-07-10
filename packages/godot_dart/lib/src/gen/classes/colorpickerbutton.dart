// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ColorPickerButton extends Button {
  ColorPickerButton(super.nativePtr);

  /// Constructs a brand-new engine-owned ColorPickerButton instance
  /// (via classdb_construct_object3), not an existing one.
  factory ColorPickerButton.create() {
    return ColorPickerButton(resolveClassConstructor('ColorPickerButton'));
  }

  static final Pointer<Void> _mb_set_pick_color =
      resolveMethodBind('ColorPickerButton', 'set_pick_color', 2920490490);

  void setPickColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_pick_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_pick_color =
      resolveMethodBind('ColorPickerButton', 'get_pick_color', 3444240500);

  Color getPickColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_pick_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_picker =
      resolveMethodBind('ColorPickerButton', 'get_picker', 331835996);

  ColorPicker? getPicker() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_picker, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ColorPicker(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_popup =
      resolveMethodBind('ColorPickerButton', 'get_popup', 1322440207);

  PopupPanel? getPopup() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_popup, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PopupPanel(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_edit_alpha =
      resolveMethodBind('ColorPickerButton', 'set_edit_alpha', 2586408642);

  void setEditAlpha(bool show_) {
    final arg0 = malloc<Uint8>()..value = show_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_edit_alpha, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editing_alpha =
      resolveMethodBind('ColorPickerButton', 'is_editing_alpha', 36873697);

  bool isEditingAlpha() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editing_alpha, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_edit_intensity =
      resolveMethodBind('ColorPickerButton', 'set_edit_intensity', 2586408642);

  void setEditIntensity(bool show_) {
    final arg0 = malloc<Uint8>()..value = show_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_edit_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editing_intensity =
      resolveMethodBind('ColorPickerButton', 'is_editing_intensity', 36873697);

  bool isEditingIntensity() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editing_intensity, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
