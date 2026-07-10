// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GraphFrame extends GraphElement {
  GraphFrame(super.nativePtr);

  static final Pointer<Void> _mb_set_title =
      resolveMethodBind('GraphFrame', 'set_title', 83702148);

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
      resolveMethodBind('GraphFrame', 'get_title', 201670096);

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

  static final Pointer<Void> _mb_get_titlebar_hbox =
      resolveMethodBind('GraphFrame', 'get_titlebar_hbox', 3590609951);

  HBoxContainer? getTitlebarHbox() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_titlebar_hbox, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : HBoxContainer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_autoshrink_enabled =
      resolveMethodBind('GraphFrame', 'set_autoshrink_enabled', 2586408642);

  void setAutoshrinkEnabled(bool shrink) {
    final arg0 = malloc<Uint8>()..value = shrink ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_autoshrink_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_autoshrink_enabled =
      resolveMethodBind('GraphFrame', 'is_autoshrink_enabled', 36873697);

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

  static final Pointer<Void> _mb_set_autoshrink_margin =
      resolveMethodBind('GraphFrame', 'set_autoshrink_margin', 1286410249);

  void setAutoshrinkMargin(int autoshrinkMargin) {
    final arg0 = malloc<Int64>()..value = autoshrinkMargin;
    try {
      ptrcallVoid(_mb_set_autoshrink_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_autoshrink_margin =
      resolveMethodBind('GraphFrame', 'get_autoshrink_margin', 3905245786);

  int getAutoshrinkMargin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_autoshrink_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_drag_margin =
      resolveMethodBind('GraphFrame', 'set_drag_margin', 1286410249);

  void setDragMargin(int dragMargin) {
    final arg0 = malloc<Int64>()..value = dragMargin;
    try {
      ptrcallVoid(_mb_set_drag_margin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_margin =
      resolveMethodBind('GraphFrame', 'get_drag_margin', 3905245786);

  int getDragMargin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_drag_margin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tint_color_enabled =
      resolveMethodBind('GraphFrame', 'set_tint_color_enabled', 2586408642);

  void setTintColorEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_tint_color_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_tint_color_enabled =
      resolveMethodBind('GraphFrame', 'is_tint_color_enabled', 36873697);

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
      resolveMethodBind('GraphFrame', 'set_tint_color', 2920490490);

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
      resolveMethodBind('GraphFrame', 'get_tint_color', 3444240500);

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

}
