// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNodeBlendSpace1D extends AnimationRootNode {
  AnimationNodeBlendSpace1D(super.nativePtr);

  static final Pointer<Void> _mb_add_blend_point =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'add_blend_point', 398361042);

  void addBlendPoint(AnimationRootNode node, double pos, int atIndex, String name) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg1 = malloc<Double>()..value = pos;
    final arg2 = malloc<Int64>()..value = atIndex;
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg3.cast(), name);
    try {
      ptrcallVoid(_mb_add_blend_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      BuiltinMarshal.destroyStringName(arg3.cast());
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_set_blend_point_position =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_blend_point_position', 1602489585);

  void setBlendPointPosition(int point, double pos) {
    final arg0 = malloc<Int64>()..value = point;
    final arg1 = malloc<Double>()..value = pos;
    try {
      ptrcallVoid(_mb_set_blend_point_position, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_blend_point_position =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_blend_point_position', 2339986948);

  double getBlendPointPosition(int point) {
    final arg0 = malloc<Int64>()..value = point;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_blend_point_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_blend_point_node =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_blend_point_node', 4240341528);

  void setBlendPointNode(int point, AnimationRootNode node) {
    final arg0 = malloc<Int64>()..value = point;
    final arg1 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      ptrcallVoid(_mb_set_blend_point_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_blend_point_node =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_blend_point_node', 665599029);

  AnimationRootNode? getBlendPointNode(int point) {
    final arg0 = malloc<Int64>()..value = point;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_blend_point_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AnimationRootNode(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_blend_point_name =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_blend_point_name', 3780747571);

  void setBlendPointName(int point, String name) {
    final arg0 = malloc<Int64>()..value = point;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_blend_point_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_blend_point_name =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_blend_point_name', 659327637);

  String getBlendPointName(int point) {
    final arg0 = malloc<Int64>()..value = point;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_blend_point_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_find_blend_point_by_name =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'find_blend_point_by_name', 2458036349);

  int findBlendPointByName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_find_blend_point_by_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_blend_point =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'remove_blend_point', 1286410249);

  void removeBlendPoint(int point) {
    final arg0 = malloc<Int64>()..value = point;
    try {
      ptrcallVoid(_mb_remove_blend_point, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_point_count =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_blend_point_count', 3905245786);

  int getBlendPointCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_blend_point_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_reorder_blend_point =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'reorder_blend_point', 3937882851);

  void reorderBlendPoint(int fromIndex, int toIndex) {
    final arg0 = malloc<Int64>()..value = fromIndex;
    final arg1 = malloc<Int64>()..value = toIndex;
    try {
      ptrcallVoid(_mb_reorder_blend_point, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_min_space =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_min_space', 373806689);

  void setMinSpace(double minSpace) {
    final arg0 = malloc<Double>()..value = minSpace;
    try {
      ptrcallVoid(_mb_set_min_space, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_space =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_min_space', 1740695150);

  double getMinSpace() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_space, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_space =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_max_space', 373806689);

  void setMaxSpace(double maxSpace) {
    final arg0 = malloc<Double>()..value = maxSpace;
    try {
      ptrcallVoid(_mb_set_max_space, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_space =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_max_space', 1740695150);

  double getMaxSpace() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_max_space, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_snap =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_snap', 373806689);

  void setSnap(double snap) {
    final arg0 = malloc<Double>()..value = snap;
    try {
      ptrcallVoid(_mb_set_snap, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_snap =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_snap', 1740695150);

  double getSnap() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_snap, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_value_label =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_value_label', 83702148);

  void setValueLabel(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_set_value_label, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_value_label =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_value_label', 201670096);

  String getValueLabel() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_value_label, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blend_mode =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_blend_mode', 2600869457);

  void setBlendMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_blend_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_mode =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_blend_mode', 1547667849);

  int getBlendMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_blend_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_sync =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_use_sync', 2586408642);

  void setUseSync(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_sync, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_sync =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'is_using_sync', 36873697);

  bool isUsingSync() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_sync, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sync_mode =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_sync_mode', 1065895142);

  void setSyncMode(int syncMode) {
    final arg0 = malloc<Int64>()..value = syncMode;
    try {
      ptrcallVoid(_mb_set_sync_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sync_mode =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_sync_mode', 132474921);

  int getSyncMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sync_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cyclic_length =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'set_cyclic_length', 373806689);

  void setCyclicLength(double length) {
    final arg0 = malloc<Double>()..value = length;
    try {
      ptrcallVoid(_mb_set_cyclic_length, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cyclic_length =
      resolveMethodBind('AnimationNodeBlendSpace1D', 'get_cyclic_length', 1740695150);

  double getCyclicLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cyclic_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
