// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SkeletonModificationStack2D extends Resource {
  SkeletonModificationStack2D(super.nativePtr);

  /// Constructs a brand-new engine-owned SkeletonModificationStack2D instance
  /// (via classdb_construct_object3), not an existing one.
  factory SkeletonModificationStack2D.create() {
    return SkeletonModificationStack2D(resolveClassConstructor('SkeletonModificationStack2D'));
  }

  static final Pointer<Void> _mb_setup =
      resolveMethodBind('SkeletonModificationStack2D', 'setup', 3218959716);

  void setup() {
    try {
      ptrcallVoid(_mb_setup, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_execute =
      resolveMethodBind('SkeletonModificationStack2D', 'execute', 1005356550);

  void execute(double delta, int executionMode) {
    final arg0 = malloc<Double>()..value = delta;
    final arg1 = malloc<Int64>()..value = executionMode;
    try {
      ptrcallVoid(_mb_execute, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_enable_all_modifications =
      resolveMethodBind('SkeletonModificationStack2D', 'enable_all_modifications', 2586408642);

  void enableAllModifications(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_enable_all_modifications, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modification =
      resolveMethodBind('SkeletonModificationStack2D', 'get_modification', 2570274329);

  SkeletonModification2D? getModification(int modIdx) {
    final arg0 = malloc<Int64>()..value = modIdx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_modification, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SkeletonModification2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_modification =
      resolveMethodBind('SkeletonModificationStack2D', 'add_modification', 354162120);

  void addModification(SkeletonModification2D modification) {
    final arg0 = malloc<Pointer<Void>>()..value = modification.nativePtr;
    try {
      ptrcallVoid(_mb_add_modification, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_delete_modification =
      resolveMethodBind('SkeletonModificationStack2D', 'delete_modification', 1286410249);

  void deleteModification(int modIdx) {
    final arg0 = malloc<Int64>()..value = modIdx;
    try {
      ptrcallVoid(_mb_delete_modification, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_modification =
      resolveMethodBind('SkeletonModificationStack2D', 'set_modification', 1098262544);

  void setModification(int modIdx, SkeletonModification2D modification) {
    final arg0 = malloc<Int64>()..value = modIdx;
    final arg1 = malloc<Pointer<Void>>()..value = modification.nativePtr;
    try {
      ptrcallVoid(_mb_set_modification, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_modification_count =
      resolveMethodBind('SkeletonModificationStack2D', 'set_modification_count', 1286410249);

  void setModificationCount(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_set_modification_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_modification_count =
      resolveMethodBind('SkeletonModificationStack2D', 'get_modification_count', 3905245786);

  int getModificationCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_modification_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_is_setup =
      resolveMethodBind('SkeletonModificationStack2D', 'get_is_setup', 36873697);

  bool getIsSetup() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_setup, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enabled =
      resolveMethodBind('SkeletonModificationStack2D', 'set_enabled', 2586408642);

  void setEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enabled =
      resolveMethodBind('SkeletonModificationStack2D', 'get_enabled', 36873697);

  bool getEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_strength =
      resolveMethodBind('SkeletonModificationStack2D', 'set_strength', 373806689);

  void setStrength(double strength) {
    final arg0 = malloc<Double>()..value = strength;
    try {
      ptrcallVoid(_mb_set_strength, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_strength =
      resolveMethodBind('SkeletonModificationStack2D', 'get_strength', 1740695150);

  double getStrength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_strength, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_skeleton =
      resolveMethodBind('SkeletonModificationStack2D', 'get_skeleton', 1697361217);

  Skeleton2D? getSkeleton() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_skeleton, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Skeleton2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
