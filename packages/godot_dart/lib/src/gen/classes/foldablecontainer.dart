// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FoldableContainer extends Container {
  FoldableContainer(super.nativePtr);

  /// Constructs a brand-new engine-owned FoldableContainer instance
  /// (via classdb_construct_object3), not an existing one.
  factory FoldableContainer.create() {
    return FoldableContainer(resolveClassConstructor('FoldableContainer'));
  }

  static final Pointer<Void> _mb_fold =
      resolveMethodBind('FoldableContainer', 'fold', 3218959716);

  void fold() {
    try {
      ptrcallVoid(_mb_fold, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_expand =
      resolveMethodBind('FoldableContainer', 'expand', 3218959716);

  void expand() {
    try {
      ptrcallVoid(_mb_expand, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_folded =
      resolveMethodBind('FoldableContainer', 'set_folded', 2586408642);

  void setFolded(bool folded) {
    final arg0 = malloc<Uint8>()..value = folded ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_folded, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_folded =
      resolveMethodBind('FoldableContainer', 'is_folded', 36873697);

  bool isFolded() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_folded, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_foldable_group =
      resolveMethodBind('FoldableContainer', 'set_foldable_group', 3001390597);

  void setFoldableGroup(FoldableGroup buttonGroup) {
    final arg0 = malloc<Pointer<Void>>()..value = buttonGroup.nativePtr;
    try {
      ptrcallVoid(_mb_set_foldable_group, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_foldable_group =
      resolveMethodBind('FoldableContainer', 'get_foldable_group', 66499518);

  FoldableGroup? getFoldableGroup() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_foldable_group, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : FoldableGroup(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_title =
      resolveMethodBind('FoldableContainer', 'set_title', 83702148);

  void setTitle(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_set_title, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_title =
      resolveMethodBind('FoldableContainer', 'get_title', 201670096);

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

  static final Pointer<Void> _mb_set_title_alignment =
      resolveMethodBind('FoldableContainer', 'set_title_alignment', 2312603777);

  void setTitleAlignment(int alignment) {
    final arg0 = malloc<Int64>()..value = alignment;
    try {
      ptrcallVoid(_mb_set_title_alignment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_title_alignment =
      resolveMethodBind('FoldableContainer', 'get_title_alignment', 341400642);

  int getTitleAlignment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_title_alignment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_language =
      resolveMethodBind('FoldableContainer', 'set_language', 83702148);

  void setLanguage(String language) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), language);
    try {
      ptrcallVoid(_mb_set_language, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_language =
      resolveMethodBind('FoldableContainer', 'get_language', 201670096);

  String getLanguage() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_language, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_title_text_direction =
      resolveMethodBind('FoldableContainer', 'set_title_text_direction', 119160795);

  void setTitleTextDirection(int textDirection) {
    final arg0 = malloc<Int64>()..value = textDirection;
    try {
      ptrcallVoid(_mb_set_title_text_direction, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_title_text_direction =
      resolveMethodBind('FoldableContainer', 'get_title_text_direction', 797257663);

  int getTitleTextDirection() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_title_text_direction, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_title_text_overrun_behavior =
      resolveMethodBind('FoldableContainer', 'set_title_text_overrun_behavior', 1008890932);

  void setTitleTextOverrunBehavior(int overrunBehavior) {
    final arg0 = malloc<Int64>()..value = overrunBehavior;
    try {
      ptrcallVoid(_mb_set_title_text_overrun_behavior, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_title_text_overrun_behavior =
      resolveMethodBind('FoldableContainer', 'get_title_text_overrun_behavior', 3779142101);

  int getTitleTextOverrunBehavior() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_title_text_overrun_behavior, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_title_position =
      resolveMethodBind('FoldableContainer', 'set_title_position', 2276829442);

  void setTitlePosition(int titlePosition) {
    final arg0 = malloc<Int64>()..value = titlePosition;
    try {
      ptrcallVoid(_mb_set_title_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_title_position =
      resolveMethodBind('FoldableContainer', 'get_title_position', 3028840207);

  int getTitlePosition() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_title_position, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_title_bar_control =
      resolveMethodBind('FoldableContainer', 'add_title_bar_control', 1496901182);

  void addTitleBarControl(Control control) {
    final arg0 = malloc<Pointer<Void>>()..value = control.nativePtr;
    try {
      ptrcallVoid(_mb_add_title_bar_control, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_title_bar_control =
      resolveMethodBind('FoldableContainer', 'remove_title_bar_control', 1496901182);

  void removeTitleBarControl(Control control) {
    final arg0 = malloc<Pointer<Void>>()..value = control.nativePtr;
    try {
      ptrcallVoid(_mb_remove_title_bar_control, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
