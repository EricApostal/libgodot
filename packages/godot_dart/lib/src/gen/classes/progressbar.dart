// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ProgressBar extends Range {
  ProgressBar(super.nativePtr);

  static final Pointer<Void> _mb_set_fill_mode =
      resolveMethodBind('ProgressBar', 'set_fill_mode', 1286410249);

  void setFillMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_fill_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fill_mode =
      resolveMethodBind('ProgressBar', 'get_fill_mode', 2455072627);

  int getFillMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_fill_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_show_percentage =
      resolveMethodBind('ProgressBar', 'set_show_percentage', 2586408642);

  void setShowPercentage(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_show_percentage, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_percentage_shown =
      resolveMethodBind('ProgressBar', 'is_percentage_shown', 36873697);

  bool isPercentageShown() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_percentage_shown, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_indeterminate =
      resolveMethodBind('ProgressBar', 'set_indeterminate', 2586408642);

  void setIndeterminate(bool indeterminate) {
    final arg0 = malloc<Uint8>()..value = indeterminate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_indeterminate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_indeterminate =
      resolveMethodBind('ProgressBar', 'is_indeterminate', 36873697);

  bool isIndeterminate() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_indeterminate, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_editor_preview_indeterminate =
      resolveMethodBind('ProgressBar', 'set_editor_preview_indeterminate', 2586408642);

  void setEditorPreviewIndeterminate(bool previewIndeterminate) {
    final arg0 = malloc<Uint8>()..value = previewIndeterminate ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_editor_preview_indeterminate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_editor_preview_indeterminate_enabled =
      resolveMethodBind('ProgressBar', 'is_editor_preview_indeterminate_enabled', 36873697);

  bool isEditorPreviewIndeterminateEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_editor_preview_indeterminate_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
