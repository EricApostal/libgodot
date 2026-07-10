// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class UndoRedo extends GodotObject {
  UndoRedo(super.nativePtr);

  static final Pointer<Void> _mb_create_action =
      resolveMethodBind('UndoRedo', 'create_action', 3171901514);

  void createAction(String name, int mergeMode, bool backwardUndoOps) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = mergeMode;
    final arg2 = malloc<Uint8>()..value = backwardUndoOps ? 1 : 0;
    try {
      ptrcallVoid(_mb_create_action, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_commit_action =
      resolveMethodBind('UndoRedo', 'commit_action', 3216645846);

  void commitAction(bool execute) {
    final arg0 = malloc<Uint8>()..value = execute ? 1 : 0;
    try {
      ptrcallVoid(_mb_commit_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_committing_action =
      resolveMethodBind('UndoRedo', 'is_committing_action', 36873697);

  bool isCommittingAction() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_committing_action, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_do_method(): an argument type is unsupported.
  // Skipped add_undo_method(): an argument type is unsupported.
  // Skipped add_do_property(): an argument type is unsupported.
  // Skipped add_undo_property(): an argument type is unsupported.
  // Skipped add_do_reference(): an argument type is unsupported.
  // Skipped add_undo_reference(): an argument type is unsupported.
  static final Pointer<Void> _mb_start_force_keep_in_merge_ends =
      resolveMethodBind('UndoRedo', 'start_force_keep_in_merge_ends', 3218959716);

  void startForceKeepInMergeEnds() {
    try {
      ptrcallVoid(_mb_start_force_keep_in_merge_ends, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_end_force_keep_in_merge_ends =
      resolveMethodBind('UndoRedo', 'end_force_keep_in_merge_ends', 3218959716);

  void endForceKeepInMergeEnds() {
    try {
      ptrcallVoid(_mb_end_force_keep_in_merge_ends, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_history_count =
      resolveMethodBind('UndoRedo', 'get_history_count', 2455072627);

  int getHistoryCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_history_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_current_action =
      resolveMethodBind('UndoRedo', 'get_current_action', 2455072627);

  int getCurrentAction() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_action, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_action_name =
      resolveMethodBind('UndoRedo', 'get_action_name', 990163283);

  String getActionName(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_clear_history =
      resolveMethodBind('UndoRedo', 'clear_history', 3216645846);

  void clearHistory(bool increaseVersion) {
    final arg0 = malloc<Uint8>()..value = increaseVersion ? 1 : 0;
    try {
      ptrcallVoid(_mb_clear_history, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_action_name =
      resolveMethodBind('UndoRedo', 'get_current_action_name', 201670096);

  String getCurrentActionName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_action_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_undo =
      resolveMethodBind('UndoRedo', 'has_undo', 36873697);

  bool hasUndo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_undo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_redo =
      resolveMethodBind('UndoRedo', 'has_redo', 36873697);

  bool hasRedo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_redo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_version =
      resolveMethodBind('UndoRedo', 'get_version', 3905245786);

  int getVersion() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_version, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_steps =
      resolveMethodBind('UndoRedo', 'set_max_steps', 1286410249);

  void setMaxSteps(int maxSteps) {
    final arg0 = malloc<Int64>()..value = maxSteps;
    try {
      ptrcallVoid(_mb_set_max_steps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_steps =
      resolveMethodBind('UndoRedo', 'get_max_steps', 3905245786);

  int getMaxSteps() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_steps, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_redo =
      resolveMethodBind('UndoRedo', 'redo', 2240911060);

  bool redo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_redo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_undo =
      resolveMethodBind('UndoRedo', 'undo', 2240911060);

  bool undo() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_undo, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
