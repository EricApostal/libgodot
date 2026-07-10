// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WorkerThreadPool extends GodotObject {
  WorkerThreadPool(super.nativePtr);

  static WorkerThreadPool? _singleton;
  static WorkerThreadPool get singleton {
    return _singleton ??= WorkerThreadPool(resolveSingleton('WorkerThreadPool'));
  }

  // Skipped add_task(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_task_completed =
      resolveMethodBind('WorkerThreadPool', 'is_task_completed', 1116898809);

  bool isTaskCompleted(int taskId) {
    final arg0 = malloc<Int64>()..value = taskId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_task_completed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_wait_for_task_completion =
      resolveMethodBind('WorkerThreadPool', 'wait_for_task_completion', 844576869);

  int waitForTaskCompletion(int taskId) {
    final arg0 = malloc<Int64>()..value = taskId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_wait_for_task_completion, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_caller_task_id =
      resolveMethodBind('WorkerThreadPool', 'get_caller_task_id', 3905245786);

  int getCallerTaskId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caller_task_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped add_group_task(): an argument type is unsupported.
  static final Pointer<Void> _mb_is_group_task_completed =
      resolveMethodBind('WorkerThreadPool', 'is_group_task_completed', 1116898809);

  bool isGroupTaskCompleted(int groupId) {
    final arg0 = malloc<Int64>()..value = groupId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_group_task_completed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_group_processed_element_count =
      resolveMethodBind('WorkerThreadPool', 'get_group_processed_element_count', 923996154);

  int getGroupProcessedElementCount(int groupId) {
    final arg0 = malloc<Int64>()..value = groupId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_group_processed_element_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_wait_for_group_task_completion =
      resolveMethodBind('WorkerThreadPool', 'wait_for_group_task_completion', 1286410249);

  void waitForGroupTaskCompletion(int groupId) {
    final arg0 = malloc<Int64>()..value = groupId;
    try {
      ptrcallVoid(_mb_wait_for_group_task_completion, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_caller_group_id =
      resolveMethodBind('WorkerThreadPool', 'get_caller_group_id', 3905245786);

  int getCallerGroupId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_caller_group_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
