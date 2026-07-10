// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ColorPicker extends VBoxContainer {
  ColorPicker(super.nativePtr);

  /// Constructs a brand-new engine-owned ColorPicker instance
  /// (via classdb_construct_object3), not an existing one.
  factory ColorPicker.create() {
    return ColorPicker(resolveClassConstructor('ColorPicker'));
  }

  static final Pointer<Void> _mb_set_pick_color =
      resolveMethodBind('ColorPicker', 'set_pick_color', 2920490490);

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
      resolveMethodBind('ColorPicker', 'get_pick_color', 3444240500);

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

  static final Pointer<Void> _mb_set_deferred_mode =
      resolveMethodBind('ColorPicker', 'set_deferred_mode', 2586408642);

  void setDeferredMode(bool mode) {
    final arg0 = malloc<Uint8>()..value = mode ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_deferred_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_deferred_mode =
      resolveMethodBind('ColorPicker', 'is_deferred_mode', 36873697);

  bool isDeferredMode() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_deferred_mode, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color_mode =
      resolveMethodBind('ColorPicker', 'set_color_mode', 1579114136);

  void setColorMode(int colorMode) {
    final arg0 = malloc<Int64>()..value = colorMode;
    try {
      ptrcallVoid(_mb_set_color_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_mode =
      resolveMethodBind('ColorPicker', 'get_color_mode', 392907674);

  int getColorMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_color_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_edit_alpha =
      resolveMethodBind('ColorPicker', 'set_edit_alpha', 2586408642);

  void setEditAlpha(bool show_) {
    final arg0 = malloc<Uint8>()..value = show_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_edit_alpha, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editing_alpha =
      resolveMethodBind('ColorPicker', 'is_editing_alpha', 36873697);

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
      resolveMethodBind('ColorPicker', 'set_edit_intensity', 2586408642);

  void setEditIntensity(bool show_) {
    final arg0 = malloc<Uint8>()..value = show_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_edit_intensity, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editing_intensity =
      resolveMethodBind('ColorPicker', 'is_editing_intensity', 36873697);

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

  static final Pointer<Void> _mb_set_can_add_swatches =
      resolveMethodBind('ColorPicker', 'set_can_add_swatches', 2586408642);

  void setCanAddSwatches(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_can_add_swatches, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_swatches_enabled =
      resolveMethodBind('ColorPicker', 'are_swatches_enabled', 36873697);

  bool areSwatchesEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_swatches_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_presets_visible =
      resolveMethodBind('ColorPicker', 'set_presets_visible', 2586408642);

  void setPresetsVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_presets_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_presets_visible =
      resolveMethodBind('ColorPicker', 'are_presets_visible', 36873697);

  bool arePresetsVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_presets_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_modes_visible =
      resolveMethodBind('ColorPicker', 'set_modes_visible', 2586408642);

  void setModesVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_modes_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_modes_visible =
      resolveMethodBind('ColorPicker', 'are_modes_visible', 36873697);

  bool areModesVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_modes_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sampler_visible =
      resolveMethodBind('ColorPicker', 'set_sampler_visible', 2586408642);

  void setSamplerVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sampler_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_sampler_visible =
      resolveMethodBind('ColorPicker', 'is_sampler_visible', 36873697);

  bool isSamplerVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_sampler_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sliders_visible =
      resolveMethodBind('ColorPicker', 'set_sliders_visible', 2586408642);

  void setSlidersVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_sliders_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_are_sliders_visible =
      resolveMethodBind('ColorPicker', 'are_sliders_visible', 36873697);

  bool areSlidersVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_are_sliders_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_hex_visible =
      resolveMethodBind('ColorPicker', 'set_hex_visible', 2586408642);

  void setHexVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hex_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hex_visible =
      resolveMethodBind('ColorPicker', 'is_hex_visible', 36873697);

  bool isHexVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hex_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_preset =
      resolveMethodBind('ColorPicker', 'add_preset', 2920490490);

  void addPreset(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_add_preset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_erase_preset =
      resolveMethodBind('ColorPicker', 'erase_preset', 2920490490);

  void erasePreset(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_erase_preset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_presets(): unsupported return type "PackedColorArray".
  static final Pointer<Void> _mb_add_recent_preset =
      resolveMethodBind('ColorPicker', 'add_recent_preset', 2920490490);

  void addRecentPreset(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_add_recent_preset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_erase_recent_preset =
      resolveMethodBind('ColorPicker', 'erase_recent_preset', 2920490490);

  void eraseRecentPreset(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_erase_recent_preset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_recent_presets(): unsupported return type "PackedColorArray".
  static final Pointer<Void> _mb_set_picker_shape =
      resolveMethodBind('ColorPicker', 'set_picker_shape', 3981373861);

  void setPickerShape(int shape) {
    final arg0 = malloc<Int64>()..value = shape;
    try {
      ptrcallVoid(_mb_set_picker_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_picker_shape =
      resolveMethodBind('ColorPicker', 'get_picker_shape', 1143229889);

  int getPickerShape() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_picker_shape, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
