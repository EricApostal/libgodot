// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDPipelineDepthStencilState extends RefCounted {
  RDPipelineDepthStencilState(super.nativePtr);

  /// Constructs a brand-new engine-owned RDPipelineDepthStencilState instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDPipelineDepthStencilState.create() {
    return RDPipelineDepthStencilState(resolveClassConstructor('RDPipelineDepthStencilState'));
  }

  static final Pointer<Void> _mb_set_enable_depth_test =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_enable_depth_test', 2586408642);

  void setEnableDepthTest(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_depth_test, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_depth_test =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_enable_depth_test', 36873697);

  bool getEnableDepthTest() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_depth_test, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_depth_write =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_enable_depth_write', 2586408642);

  void setEnableDepthWrite(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_depth_write, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_depth_write =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_enable_depth_write', 36873697);

  bool getEnableDepthWrite() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_depth_write, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_compare_operator =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_depth_compare_operator', 2573711505);

  void setDepthCompareOperator(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth_compare_operator, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_compare_operator =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_depth_compare_operator', 269730778);

  int getDepthCompareOperator() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_depth_compare_operator, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_depth_range =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_enable_depth_range', 2586408642);

  void setEnableDepthRange(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_depth_range, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_depth_range =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_enable_depth_range', 36873697);

  bool getEnableDepthRange() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_depth_range, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_range_min =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_depth_range_min', 373806689);

  void setDepthRangeMin(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth_range_min, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_range_min =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_depth_range_min', 1740695150);

  double getDepthRangeMin() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth_range_min, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_range_max =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_depth_range_max', 373806689);

  void setDepthRangeMax(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth_range_max, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_range_max =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_depth_range_max', 1740695150);

  double getDepthRangeMax() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth_range_max, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_stencil =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_enable_stencil', 2586408642);

  void setEnableStencil(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_stencil, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_stencil =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_enable_stencil', 36873697);

  bool getEnableStencil() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_stencil, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_op_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_front_op_fail', 2092799566);

  void setFrontOpFail(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_op_fail, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_op_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_front_op_fail', 1714732389);

  int getFrontOpFail() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_op_fail, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_op_pass =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_front_op_pass', 2092799566);

  void setFrontOpPass(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_op_pass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_op_pass =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_front_op_pass', 1714732389);

  int getFrontOpPass() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_op_pass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_op_depth_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_front_op_depth_fail', 2092799566);

  void setFrontOpDepthFail(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_op_depth_fail, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_op_depth_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_front_op_depth_fail', 1714732389);

  int getFrontOpDepthFail() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_op_depth_fail, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_op_compare =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_front_op_compare', 2573711505);

  void setFrontOpCompare(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_op_compare, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_op_compare =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_front_op_compare', 269730778);

  int getFrontOpCompare() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_op_compare, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_op_compare_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_front_op_compare_mask', 1286410249);

  void setFrontOpCompareMask(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_op_compare_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_op_compare_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_front_op_compare_mask', 3905245786);

  int getFrontOpCompareMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_op_compare_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_op_write_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_front_op_write_mask', 1286410249);

  void setFrontOpWriteMask(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_op_write_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_op_write_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_front_op_write_mask', 3905245786);

  int getFrontOpWriteMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_op_write_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_op_reference =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_front_op_reference', 1286410249);

  void setFrontOpReference(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_op_reference, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_op_reference =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_front_op_reference', 3905245786);

  int getFrontOpReference() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_op_reference, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_back_op_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_back_op_fail', 2092799566);

  void setBackOpFail(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_back_op_fail, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_back_op_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_back_op_fail', 1714732389);

  int getBackOpFail() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_back_op_fail, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_back_op_pass =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_back_op_pass', 2092799566);

  void setBackOpPass(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_back_op_pass, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_back_op_pass =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_back_op_pass', 1714732389);

  int getBackOpPass() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_back_op_pass, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_back_op_depth_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_back_op_depth_fail', 2092799566);

  void setBackOpDepthFail(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_back_op_depth_fail, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_back_op_depth_fail =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_back_op_depth_fail', 1714732389);

  int getBackOpDepthFail() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_back_op_depth_fail, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_back_op_compare =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_back_op_compare', 2573711505);

  void setBackOpCompare(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_back_op_compare, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_back_op_compare =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_back_op_compare', 269730778);

  int getBackOpCompare() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_back_op_compare, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_back_op_compare_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_back_op_compare_mask', 1286410249);

  void setBackOpCompareMask(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_back_op_compare_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_back_op_compare_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_back_op_compare_mask', 3905245786);

  int getBackOpCompareMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_back_op_compare_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_back_op_write_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_back_op_write_mask', 1286410249);

  void setBackOpWriteMask(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_back_op_write_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_back_op_write_mask =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_back_op_write_mask', 3905245786);

  int getBackOpWriteMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_back_op_write_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_back_op_reference =
      resolveMethodBind('RDPipelineDepthStencilState', 'set_back_op_reference', 1286410249);

  void setBackOpReference(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_back_op_reference, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_back_op_reference =
      resolveMethodBind('RDPipelineDepthStencilState', 'get_back_op_reference', 3905245786);

  int getBackOpReference() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_back_op_reference, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
