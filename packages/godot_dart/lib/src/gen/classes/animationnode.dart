// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AnimationNode extends Resource {
  AnimationNode(super.nativePtr);

  /// Constructs a brand-new engine-owned AnimationNode instance
  /// (via classdb_construct_object3), not an existing one.
  factory AnimationNode.create() {
    return AnimationNode(resolveClassConstructor('AnimationNode'));
  }

  static final Pointer<Void> _mb_add_input =
      resolveMethodBind('AnimationNode', 'add_input', 2323990056);

  bool addInput(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_add_input, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_input =
      resolveMethodBind('AnimationNode', 'remove_input', 1286410249);

  void removeInput(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      ptrcallVoid(_mb_remove_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_input_name =
      resolveMethodBind('AnimationNode', 'set_input_name', 215573526);

  bool setInputName(int input, String name) {
    final arg0 = malloc<Int64>()..value = input;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_set_input_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_input_name =
      resolveMethodBind('AnimationNode', 'get_input_name', 844755477);

  String getInputName(int input) {
    final arg0 = malloc<Int64>()..value = input;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_input_name, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_get_input_count =
      resolveMethodBind('AnimationNode', 'get_input_count', 3905245786);

  int getInputCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_input =
      resolveMethodBind('AnimationNode', 'find_input', 1321353865);

  int findInput(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_find_input, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped set_filter_path(): an argument type is unsupported.
  // Skipped is_path_filtered(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_filter_enabled =
      resolveMethodBind('AnimationNode', 'set_filter_enabled', 2586408642);

  void setFilterEnabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_filter_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_filter_enabled =
      resolveMethodBind('AnimationNode', 'is_filter_enabled', 36873697);

  bool isFilterEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_filter_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_processing_animation_tree_instance_id =
      resolveMethodBind('AnimationNode', 'get_processing_animation_tree_instance_id', 3905245786);

  int getProcessingAnimationTreeInstanceId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_processing_animation_tree_instance_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_process_testing =
      resolveMethodBind('AnimationNode', 'is_process_testing', 36873697);

  bool isProcessTesting() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_process_testing, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_blend_animation =
      resolveMethodBind('AnimationNode', 'blend_animation', 1630801826);

  void blendAnimation(String animation, double time, double delta, bool seeked, bool isExternalSeeking, double blend, int loopedFlag) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), animation);
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Double>()..value = delta;
    final arg3 = malloc<Uint8>()..value = seeked ? 1 : 0;
    final arg4 = malloc<Uint8>()..value = isExternalSeeking ? 1 : 0;
    final arg5 = malloc<Double>()..value = blend;
    final arg6 = malloc<Int64>()..value = loopedFlag;
    try {
      ptrcallVoid(_mb_blend_animation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
    }
  }

  static final Pointer<Void> _mb_blend_node =
      resolveMethodBind('AnimationNode', 'blend_node', 1746075988);

  double blendNode(String name, AnimationNode node, double time, bool seek, bool isExternalSeeking, double blend, int filter, bool sync_, bool testOnly) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    final arg1 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg2 = malloc<Double>()..value = time;
    final arg3 = malloc<Uint8>()..value = seek ? 1 : 0;
    final arg4 = malloc<Uint8>()..value = isExternalSeeking ? 1 : 0;
    final arg5 = malloc<Double>()..value = blend;
    final arg6 = malloc<Int64>()..value = filter;
    final arg7 = malloc<Uint8>()..value = sync_ ? 1 : 0;
    final arg8 = malloc<Uint8>()..value = testOnly ? 1 : 0;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_blend_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
    }
  }

  static final Pointer<Void> _mb_blend_input =
      resolveMethodBind('AnimationNode', 'blend_input', 1361527350);

  double blendInput(int inputIndex, double time, bool seek, bool isExternalSeeking, double blend, int filter, bool sync_, bool testOnly) {
    final arg0 = malloc<Int64>()..value = inputIndex;
    final arg1 = malloc<Double>()..value = time;
    final arg2 = malloc<Uint8>()..value = seek ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = isExternalSeeking ? 1 : 0;
    final arg4 = malloc<Double>()..value = blend;
    final arg5 = malloc<Int64>()..value = filter;
    final arg6 = malloc<Uint8>()..value = sync_ ? 1 : 0;
    final arg7 = malloc<Uint8>()..value = testOnly ? 1 : 0;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_blend_input, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
    }
  }

  // Skipped set_parameter(): an argument type is unsupported.
  // Skipped get_parameter(): unsupported return type "Variant".
}
