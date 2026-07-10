// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Window extends Viewport {
  Window(super.nativePtr);

  /// Constructs a brand-new engine-owned Window instance
  /// (via classdb_construct_object3), not an existing one.
  factory Window.create() {
    return Window(resolveClassConstructor('Window'));
  }

  static final Pointer<Void> _mb_set_title =
      resolveMethodBind('Window', 'set_title', 83702148);

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
      resolveMethodBind('Window', 'get_title', 201670096);

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

  static final Pointer<Void> _mb_set_initial_position =
      resolveMethodBind('Window', 'set_initial_position', 4084468099);

  void setInitialPosition(int initialPosition) {
    final arg0 = malloc<Int64>()..value = initialPosition;
    try {
      ptrcallVoid(_mb_set_initial_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_initial_position =
      resolveMethodBind('Window', 'get_initial_position', 4294066647);

  int getInitialPosition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_initial_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_current_screen =
      resolveMethodBind('Window', 'set_current_screen', 1286410249);

  void setCurrentScreen(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_set_current_screen, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_screen =
      resolveMethodBind('Window', 'get_current_screen', 3905245786);

  int getCurrentScreen() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_screen, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('Window', 'set_position', 1130785943);

  void setPosition(Vector2i position) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('Window', 'get_position', 3690982128);

  Vector2i getPosition() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_move_to_center =
      resolveMethodBind('Window', 'move_to_center', 3218959716);

  void moveToCenter() {
    try {
      ptrcallVoid(_mb_move_to_center, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('Window', 'set_size', 1130785943);

  void setSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('Window', 'get_size', 3690982128);

  Vector2i getSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reset_size =
      resolveMethodBind('Window', 'reset_size', 3218959716);

  void resetSize() {
    try {
      ptrcallVoid(_mb_reset_size, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_position_with_decorations =
      resolveMethodBind('Window', 'get_position_with_decorations', 3690982128);

  Vector2i getPositionWithDecorations() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position_with_decorations, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_size_with_decorations =
      resolveMethodBind('Window', 'get_size_with_decorations', 3690982128);

  Vector2i getSizeWithDecorations() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size_with_decorations, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_size =
      resolveMethodBind('Window', 'set_max_size', 1130785943);

  void setMaxSize(Vector2i maxSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    maxSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_max_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_size =
      resolveMethodBind('Window', 'get_max_size', 3690982128);

  Vector2i getMaxSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_max_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_size =
      resolveMethodBind('Window', 'set_min_size', 1130785943);

  void setMinSize(Vector2i minSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    minSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_min_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_size =
      resolveMethodBind('Window', 'get_min_size', 3690982128);

  Vector2i getMinSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_min_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mode =
      resolveMethodBind('Window', 'set_mode', 3095236531);

  void setMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mode =
      resolveMethodBind('Window', 'get_mode', 2566346114);

  int getMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_flag =
      resolveMethodBind('Window', 'set_flag', 3426449779);

  void setFlag(int flag, bool enabled) {
    final arg0 = malloc<Int64>()..value = flag;
    final arg1 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_flag, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_flag =
      resolveMethodBind('Window', 'get_flag', 3062752289);

  bool getFlag(int flag) {
    final arg0 = malloc<Int64>()..value = flag;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_flag, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_hdr_output_requested =
      resolveMethodBind('Window', 'set_hdr_output_requested', 2586408642);

  void setHdrOutputRequested(bool requested) {
    final arg0 = malloc<Uint8>()..value = requested ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_hdr_output_requested, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_hdr_output_requested =
      resolveMethodBind('Window', 'is_hdr_output_requested', 36873697);

  bool isHdrOutputRequested() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_hdr_output_requested, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_output_max_linear_value =
      resolveMethodBind('Window', 'get_output_max_linear_value', 1740695150);

  double getOutputMaxLinearValue() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_output_max_linear_value, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fullscreen_shortcut_enabled =
      resolveMethodBind('Window', 'set_fullscreen_shortcut_enabled', 2586408642);

  void setFullscreenShortcutEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_fullscreen_shortcut_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_fullscreen_shortcut_enabled =
      resolveMethodBind('Window', 'is_fullscreen_shortcut_enabled', 36873697);

  bool isFullscreenShortcutEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_fullscreen_shortcut_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_maximize_allowed =
      resolveMethodBind('Window', 'is_maximize_allowed', 36873697);

  bool isMaximizeAllowed() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_maximize_allowed, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_request_attention =
      resolveMethodBind('Window', 'request_attention', 3218959716);

  void requestAttention() {
    try {
      ptrcallVoid(_mb_request_attention, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_taskbar_progress_value =
      resolveMethodBind('Window', 'set_taskbar_progress_value', 373806689);

  void setTaskbarProgressValue(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_taskbar_progress_value, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_taskbar_progress_state =
      resolveMethodBind('Window', 'set_taskbar_progress_state', 824071031);

  void setTaskbarProgressState(int state) {
    final arg0 = malloc<Int64>()..value = state;
    try {
      ptrcallVoid(_mb_set_taskbar_progress_state, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_to_foreground =
      resolveMethodBind('Window', 'move_to_foreground', 3218959716);

  void moveToForeground() {
    try {
      ptrcallVoid(_mb_move_to_foreground, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visible =
      resolveMethodBind('Window', 'set_visible', 2586408642);

  void setVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_visible =
      resolveMethodBind('Window', 'is_visible', 36873697);

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

  static final Pointer<Void> _mb_hide =
      resolveMethodBind('Window', 'hide', 3218959716);

  void hide_() {
    try {
      ptrcallVoid(_mb_hide, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_show =
      resolveMethodBind('Window', 'show', 3218959716);

  void show_() {
    try {
      ptrcallVoid(_mb_show, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transient =
      resolveMethodBind('Window', 'set_transient', 2586408642);

  void setTransient(bool transient) {
    final arg0 = malloc<Uint8>()..value = transient ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_transient, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_transient =
      resolveMethodBind('Window', 'is_transient', 36873697);

  bool isTransient() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_transient, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transient_to_focused =
      resolveMethodBind('Window', 'set_transient_to_focused', 2586408642);

  void setTransientToFocused(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_transient_to_focused, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_transient_to_focused =
      resolveMethodBind('Window', 'is_transient_to_focused', 36873697);

  bool isTransientToFocused() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_transient_to_focused, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_exclusive =
      resolveMethodBind('Window', 'set_exclusive', 2586408642);

  void setExclusive(bool exclusive) {
    final arg0 = malloc<Uint8>()..value = exclusive ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_exclusive, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_exclusive =
      resolveMethodBind('Window', 'is_exclusive', 36873697);

  bool isExclusive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_exclusive, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_unparent_when_invisible =
      resolveMethodBind('Window', 'set_unparent_when_invisible', 2586408642);

  void setUnparentWhenInvisible(bool unparent) {
    final arg0 = malloc<Uint8>()..value = unparent ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_unparent_when_invisible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_can_draw =
      resolveMethodBind('Window', 'can_draw', 36873697);

  bool canDraw() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_draw, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_focus =
      resolveMethodBind('Window', 'has_focus', 36873697);

  bool hasFocus() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_focus, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_grab_focus =
      resolveMethodBind('Window', 'grab_focus', 3218959716);

  void grabFocus() {
    try {
      ptrcallVoid(_mb_grab_focus, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_start_drag =
      resolveMethodBind('Window', 'start_drag', 3218959716);

  void startDrag() {
    try {
      ptrcallVoid(_mb_start_drag, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_start_resize =
      resolveMethodBind('Window', 'start_resize', 122288853);

  void startResize(int edge) {
    final arg0 = malloc<Int64>()..value = edge;
    try {
      ptrcallVoid(_mb_start_resize, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ime_active =
      resolveMethodBind('Window', 'set_ime_active', 2586408642);

  void setImeActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ime_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_ime_position =
      resolveMethodBind('Window', 'set_ime_position', 1130785943);

  void setImePosition(Vector2i position) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_ime_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_embedded =
      resolveMethodBind('Window', 'is_embedded', 36873697);

  bool isEmbedded() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_embedded, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_contents_minimum_size =
      resolveMethodBind('Window', 'get_contents_minimum_size', 3341600327);

  Vector2 getContentsMinimumSize() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_contents_minimum_size, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_force_native =
      resolveMethodBind('Window', 'set_force_native', 2586408642);

  void setForceNative(bool forceNative) {
    final arg0 = malloc<Uint8>()..value = forceNative ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_force_native, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_force_native =
      resolveMethodBind('Window', 'get_force_native', 36873697);

  bool getForceNative() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_force_native, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_content_scale_size =
      resolveMethodBind('Window', 'set_content_scale_size', 1130785943);

  void setContentScaleSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_content_scale_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_content_scale_size =
      resolveMethodBind('Window', 'get_content_scale_size', 3690982128);

  Vector2i getContentScaleSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_content_scale_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_content_scale_mode =
      resolveMethodBind('Window', 'set_content_scale_mode', 2937716473);

  void setContentScaleMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_content_scale_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_content_scale_mode =
      resolveMethodBind('Window', 'get_content_scale_mode', 161585230);

  int getContentScaleMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_content_scale_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_content_scale_aspect =
      resolveMethodBind('Window', 'set_content_scale_aspect', 2370399418);

  void setContentScaleAspect(int aspect) {
    final arg0 = malloc<Int64>()..value = aspect;
    try {
      ptrcallVoid(_mb_set_content_scale_aspect, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_content_scale_aspect =
      resolveMethodBind('Window', 'get_content_scale_aspect', 4158790715);

  int getContentScaleAspect() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_content_scale_aspect, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_content_scale_stretch =
      resolveMethodBind('Window', 'set_content_scale_stretch', 349355940);

  void setContentScaleStretch(int stretch) {
    final arg0 = malloc<Int64>()..value = stretch;
    try {
      ptrcallVoid(_mb_set_content_scale_stretch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_content_scale_stretch =
      resolveMethodBind('Window', 'get_content_scale_stretch', 536857316);

  int getContentScaleStretch() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_content_scale_stretch, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_nonclient_area =
      resolveMethodBind('Window', 'set_nonclient_area', 1763793166);

  void setNonclientArea(Rect2i area) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    area.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_nonclient_area, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_nonclient_area =
      resolveMethodBind('Window', 'get_nonclient_area', 410525958);

  Rect2i getNonclientArea() {
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_nonclient_area, nativePtr, [], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_keep_title_visible =
      resolveMethodBind('Window', 'set_keep_title_visible', 2586408642);

  void setKeepTitleVisible(bool titleVisible) {
    final arg0 = malloc<Uint8>()..value = titleVisible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_keep_title_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_keep_title_visible =
      resolveMethodBind('Window', 'get_keep_title_visible', 36873697);

  bool getKeepTitleVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_keep_title_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_content_scale_factor =
      resolveMethodBind('Window', 'set_content_scale_factor', 373806689);

  void setContentScaleFactor(double factor) {
    final arg0 = malloc<Double>()..value = factor;
    try {
      ptrcallVoid(_mb_set_content_scale_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_content_scale_factor =
      resolveMethodBind('Window', 'get_content_scale_factor', 1740695150);

  double getContentScaleFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_content_scale_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_mouse_passthrough_polygon(): an argument type is unsupported.
  // Skipped get_mouse_passthrough_polygon(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_set_wrap_controls =
      resolveMethodBind('Window', 'set_wrap_controls', 2586408642);

  void setWrapControls(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_wrap_controls, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_wrapping_controls =
      resolveMethodBind('Window', 'is_wrapping_controls', 36873697);

  bool isWrappingControls() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_wrapping_controls, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_child_controls_changed =
      resolveMethodBind('Window', 'child_controls_changed', 3218959716);

  void childControlsChanged() {
    try {
      ptrcallVoid(_mb_child_controls_changed, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_theme =
      resolveMethodBind('Window', 'set_theme', 2326690814);

  void setTheme(Theme theme) {
    final arg0 = malloc<Pointer<Void>>()..value = theme.nativePtr;
    try {
      ptrcallVoid(_mb_set_theme, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_theme =
      resolveMethodBind('Window', 'get_theme', 3846893731);

  Theme? getTheme() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Theme(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_theme_type_variation =
      resolveMethodBind('Window', 'set_theme_type_variation', 3304788590);

  void setThemeTypeVariation(String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), themeType);
    try {
      ptrcallVoid(_mb_set_theme_type_variation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_theme_type_variation =
      resolveMethodBind('Window', 'get_theme_type_variation', 2002593661);

  String getThemeTypeVariation() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_theme_type_variation, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_begin_bulk_theme_override =
      resolveMethodBind('Window', 'begin_bulk_theme_override', 3218959716);

  void beginBulkThemeOverride() {
    try {
      ptrcallVoid(_mb_begin_bulk_theme_override, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_end_bulk_theme_override =
      resolveMethodBind('Window', 'end_bulk_theme_override', 3218959716);

  void endBulkThemeOverride() {
    try {
      ptrcallVoid(_mb_end_bulk_theme_override, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_theme_icon_override =
      resolveMethodBind('Window', 'add_theme_icon_override', 1373065600);

  void addThemeIconOverride(String name, Texture2D texture) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_add_theme_icon_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_stylebox_override =
      resolveMethodBind('Window', 'add_theme_stylebox_override', 4188838905);

  void addThemeStyleboxOverride(String name, StyleBox stylebox) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = stylebox.nativePtr;
    try {
      ptrcallVoid(_mb_add_theme_stylebox_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_font_override =
      resolveMethodBind('Window', 'add_theme_font_override', 3518018674);

  void addThemeFontOverride(String name, Font font) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = font.nativePtr;
    try {
      ptrcallVoid(_mb_add_theme_font_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_font_size_override =
      resolveMethodBind('Window', 'add_theme_font_size_override', 2415702435);

  void addThemeFontSizeOverride(String name, int fontSize) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = fontSize;
    try {
      ptrcallVoid(_mb_add_theme_font_size_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_color_override =
      resolveMethodBind('Window', 'add_theme_color_override', 4260178595);

  void addThemeColorOverride(String name, Color color) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_add_theme_color_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_add_theme_constant_override =
      resolveMethodBind('Window', 'add_theme_constant_override', 2415702435);

  void addThemeConstantOverride(String name, int constant) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = constant;
    try {
      ptrcallVoid(_mb_add_theme_constant_override, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_theme_icon_override =
      resolveMethodBind('Window', 'remove_theme_icon_override', 3304788590);

  void removeThemeIconOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_icon_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_stylebox_override =
      resolveMethodBind('Window', 'remove_theme_stylebox_override', 3304788590);

  void removeThemeStyleboxOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_stylebox_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_font_override =
      resolveMethodBind('Window', 'remove_theme_font_override', 3304788590);

  void removeThemeFontOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_font_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_font_size_override =
      resolveMethodBind('Window', 'remove_theme_font_size_override', 3304788590);

  void removeThemeFontSizeOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_font_size_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_color_override =
      resolveMethodBind('Window', 'remove_theme_color_override', 3304788590);

  void removeThemeColorOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_color_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_theme_constant_override =
      resolveMethodBind('Window', 'remove_theme_constant_override', 3304788590);

  void removeThemeConstantOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_remove_theme_constant_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_theme_icon =
      resolveMethodBind('Window', 'get_theme_icon', 3163973443);

  Texture2D? getThemeIcon(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_theme_stylebox =
      resolveMethodBind('Window', 'get_theme_stylebox', 604739069);

  StyleBox? getThemeStylebox(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_theme_font =
      resolveMethodBind('Window', 'get_theme_font', 2826986490);

  Font? getThemeFont(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_theme_font_size =
      resolveMethodBind('Window', 'get_theme_font_size', 1327056374);

  int getThemeFontSize(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_theme_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_theme_color =
      resolveMethodBind('Window', 'get_theme_color', 2798751242);

  Color getThemeColor(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_theme_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_theme_constant =
      resolveMethodBind('Window', 'get_theme_constant', 1327056374);

  int getThemeConstant(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_theme_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_has_theme_icon_override =
      resolveMethodBind('Window', 'has_theme_icon_override', 2619796661);

  bool hasThemeIconOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_icon_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_stylebox_override =
      resolveMethodBind('Window', 'has_theme_stylebox_override', 2619796661);

  bool hasThemeStyleboxOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_stylebox_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_font_override =
      resolveMethodBind('Window', 'has_theme_font_override', 2619796661);

  bool hasThemeFontOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_font_size_override =
      resolveMethodBind('Window', 'has_theme_font_size_override', 2619796661);

  bool hasThemeFontSizeOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font_size_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_color_override =
      resolveMethodBind('Window', 'has_theme_color_override', 2619796661);

  bool hasThemeColorOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_color_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_constant_override =
      resolveMethodBind('Window', 'has_theme_constant_override', 2619796661);

  bool hasThemeConstantOverride(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_constant_override, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_theme_icon =
      resolveMethodBind('Window', 'has_theme_icon', 866386512);

  bool hasThemeIcon(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_icon, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_has_theme_stylebox =
      resolveMethodBind('Window', 'has_theme_stylebox', 866386512);

  bool hasThemeStylebox(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_has_theme_font =
      resolveMethodBind('Window', 'has_theme_font', 866386512);

  bool hasThemeFont(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_has_theme_font_size =
      resolveMethodBind('Window', 'has_theme_font_size', 866386512);

  bool hasThemeFontSize(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_font_size, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_has_theme_color =
      resolveMethodBind('Window', 'has_theme_color', 866386512);

  bool hasThemeColor(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_color, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_has_theme_constant =
      resolveMethodBind('Window', 'has_theme_constant', 866386512);

  bool hasThemeConstant(String name, String themeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), themeType);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_theme_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_theme_default_base_scale =
      resolveMethodBind('Window', 'get_theme_default_base_scale', 1740695150);

  double getThemeDefaultBaseScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_theme_default_base_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_theme_default_font =
      resolveMethodBind('Window', 'get_theme_default_font', 3229501585);

  Font? getThemeDefaultFont() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_theme_default_font, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Font(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_theme_default_font_size =
      resolveMethodBind('Window', 'get_theme_default_font_size', 3905245786);

  int getThemeDefaultFontSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_theme_default_font_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_window_id =
      resolveMethodBind('Window', 'get_window_id', 3905245786);

  int getWindowId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_window_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accessibility_name =
      resolveMethodBind('Window', 'set_accessibility_name', 83702148);

  void setAccessibilityName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      ptrcallVoid(_mb_set_accessibility_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_accessibility_name =
      resolveMethodBind('Window', 'get_accessibility_name', 201670096);

  String getAccessibilityName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_accessibility_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_accessibility_description =
      resolveMethodBind('Window', 'set_accessibility_description', 83702148);

  void setAccessibilityDescription(String description) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), description);
    try {
      ptrcallVoid(_mb_set_accessibility_description, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_accessibility_description =
      resolveMethodBind('Window', 'get_accessibility_description', 201670096);

  String getAccessibilityDescription() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_accessibility_description, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_layout_direction =
      resolveMethodBind('Window', 'set_layout_direction', 3094704184);

  void setLayoutDirection(int direction) {
    final arg0 = malloc<Int64>()..value = direction;
    try {
      ptrcallVoid(_mb_set_layout_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_layout_direction =
      resolveMethodBind('Window', 'get_layout_direction', 3909617982);

  int getLayoutDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_layout_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_layout_rtl =
      resolveMethodBind('Window', 'is_layout_rtl', 36873697);

  bool isLayoutRtl() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_layout_rtl, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_translate =
      resolveMethodBind('Window', 'set_auto_translate', 2586408642);

  void setAutoTranslate(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_translate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_auto_translating =
      resolveMethodBind('Window', 'is_auto_translating', 36873697);

  bool isAutoTranslating() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_translating, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_font_oversampling =
      resolveMethodBind('Window', 'set_use_font_oversampling', 2586408642);

  void setUseFontOversampling(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_font_oversampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_font_oversampling =
      resolveMethodBind('Window', 'is_using_font_oversampling', 36873697);

  bool isUsingFontOversampling() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_font_oversampling, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_popup =
      resolveMethodBind('Window', 'popup', 1680304321);

  void popup(Rect2i rect) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_popup, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_popup_on_parent =
      resolveMethodBind('Window', 'popup_on_parent', 1763793166);

  void popupOnParent(Rect2i parentRect) {
    final arg0 = malloc<Uint8>(Rect2i.nativeSize);
    parentRect.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_popup_on_parent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_popup_centered =
      resolveMethodBind('Window', 'popup_centered', 3447975422);

  void popupCentered(Vector2i minsize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    minsize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_popup_centered, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_popup_centered_ratio =
      resolveMethodBind('Window', 'popup_centered_ratio', 1014814997);

  void popupCenteredRatio(double ratio) {
    final arg0 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_popup_centered_ratio, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_popup_centered_clamped =
      resolveMethodBind('Window', 'popup_centered_clamped', 2613752477);

  void popupCenteredClamped(Vector2i minsize, double fallbackRatio) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    minsize.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = fallbackRatio;
    try {
      ptrcallVoid(_mb_popup_centered_clamped, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_popup_exclusive =
      resolveMethodBind('Window', 'popup_exclusive', 2134721627);

  void popupExclusive(Node fromNode, Rect2i rect) {
    final arg0 = malloc<Pointer<Void>>()..value = fromNode.nativePtr;
    final arg1 = malloc<Uint8>(Rect2i.nativeSize);
    rect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_popup_exclusive, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_popup_exclusive_on_parent =
      resolveMethodBind('Window', 'popup_exclusive_on_parent', 2344671043);

  void popupExclusiveOnParent(Node fromNode, Rect2i parentRect) {
    final arg0 = malloc<Pointer<Void>>()..value = fromNode.nativePtr;
    final arg1 = malloc<Uint8>(Rect2i.nativeSize);
    parentRect.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_popup_exclusive_on_parent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_popup_exclusive_centered =
      resolveMethodBind('Window', 'popup_exclusive_centered', 3357594017);

  void popupExclusiveCentered(Node fromNode, Vector2i minsize) {
    final arg0 = malloc<Pointer<Void>>()..value = fromNode.nativePtr;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    minsize.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_popup_exclusive_centered, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_popup_exclusive_centered_ratio =
      resolveMethodBind('Window', 'popup_exclusive_centered_ratio', 2284776287);

  void popupExclusiveCenteredRatio(Node fromNode, double ratio) {
    final arg0 = malloc<Pointer<Void>>()..value = fromNode.nativePtr;
    final arg1 = malloc<Double>()..value = ratio;
    try {
      ptrcallVoid(_mb_popup_exclusive_centered_ratio, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_popup_exclusive_centered_clamped =
      resolveMethodBind('Window', 'popup_exclusive_centered_clamped', 2612708785);

  void popupExclusiveCenteredClamped(Node fromNode, Vector2i minsize, double fallbackRatio) {
    final arg0 = malloc<Pointer<Void>>()..value = fromNode.nativePtr;
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    minsize.writeTo(arg1, 0);
    final arg2 = malloc<Double>()..value = fallbackRatio;
    try {
      ptrcallVoid(_mb_popup_exclusive_centered_clamped, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

}
