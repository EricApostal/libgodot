// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDPipelineRasterizationState extends RefCounted {
  RDPipelineRasterizationState(super.nativePtr);

  static final Pointer<Void> _mb_set_enable_depth_clamp =
      resolveMethodBind('RDPipelineRasterizationState', 'set_enable_depth_clamp', 2586408642);

  void setEnableDepthClamp(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_depth_clamp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_depth_clamp =
      resolveMethodBind('RDPipelineRasterizationState', 'get_enable_depth_clamp', 36873697);

  bool getEnableDepthClamp() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_depth_clamp, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_discard_primitives =
      resolveMethodBind('RDPipelineRasterizationState', 'set_discard_primitives', 2586408642);

  void setDiscardPrimitives(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_discard_primitives, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_discard_primitives =
      resolveMethodBind('RDPipelineRasterizationState', 'get_discard_primitives', 36873697);

  bool getDiscardPrimitives() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_discard_primitives, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_wireframe =
      resolveMethodBind('RDPipelineRasterizationState', 'set_wireframe', 2586408642);

  void setWireframe(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_wireframe, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_wireframe =
      resolveMethodBind('RDPipelineRasterizationState', 'get_wireframe', 36873697);

  bool getWireframe() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_wireframe, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cull_mode =
      resolveMethodBind('RDPipelineRasterizationState', 'set_cull_mode', 2662586502);

  void setCullMode(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_cull_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cull_mode =
      resolveMethodBind('RDPipelineRasterizationState', 'get_cull_mode', 2192484313);

  int getCullMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cull_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_front_face =
      resolveMethodBind('RDPipelineRasterizationState', 'set_front_face', 2637251213);

  void setFrontFace(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_front_face, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_front_face =
      resolveMethodBind('RDPipelineRasterizationState', 'get_front_face', 708793786);

  int getFrontFace() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_front_face, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_bias_enabled =
      resolveMethodBind('RDPipelineRasterizationState', 'set_depth_bias_enabled', 2586408642);

  void setDepthBiasEnabled(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_depth_bias_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_bias_enabled =
      resolveMethodBind('RDPipelineRasterizationState', 'get_depth_bias_enabled', 36873697);

  bool getDepthBiasEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_depth_bias_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_bias_constant_factor =
      resolveMethodBind('RDPipelineRasterizationState', 'set_depth_bias_constant_factor', 373806689);

  void setDepthBiasConstantFactor(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth_bias_constant_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_bias_constant_factor =
      resolveMethodBind('RDPipelineRasterizationState', 'get_depth_bias_constant_factor', 1740695150);

  double getDepthBiasConstantFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth_bias_constant_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_bias_clamp =
      resolveMethodBind('RDPipelineRasterizationState', 'set_depth_bias_clamp', 373806689);

  void setDepthBiasClamp(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth_bias_clamp, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_bias_clamp =
      resolveMethodBind('RDPipelineRasterizationState', 'get_depth_bias_clamp', 1740695150);

  double getDepthBiasClamp() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth_bias_clamp, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_depth_bias_slope_factor =
      resolveMethodBind('RDPipelineRasterizationState', 'set_depth_bias_slope_factor', 373806689);

  void setDepthBiasSlopeFactor(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth_bias_slope_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_bias_slope_factor =
      resolveMethodBind('RDPipelineRasterizationState', 'get_depth_bias_slope_factor', 1740695150);

  double getDepthBiasSlopeFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_depth_bias_slope_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_line_width =
      resolveMethodBind('RDPipelineRasterizationState', 'set_line_width', 373806689);

  void setLineWidth(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_line_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_line_width =
      resolveMethodBind('RDPipelineRasterizationState', 'get_line_width', 1740695150);

  double getLineWidth() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_line_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_patch_control_points =
      resolveMethodBind('RDPipelineRasterizationState', 'set_patch_control_points', 1286410249);

  void setPatchControlPoints(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_patch_control_points, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_patch_control_points =
      resolveMethodBind('RDPipelineRasterizationState', 'get_patch_control_points', 3905245786);

  int getPatchControlPoints() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_patch_control_points, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
