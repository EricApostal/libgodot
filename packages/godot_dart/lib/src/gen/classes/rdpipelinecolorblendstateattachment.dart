// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDPipelineColorBlendStateAttachment extends RefCounted {
  RDPipelineColorBlendStateAttachment(super.nativePtr);

  static final Pointer<Void> _mb_set_as_mix =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_as_mix', 3218959716);

  void setAsMix() {
    try {
      ptrcallVoid(_mb_set_as_mix, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_blend =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_enable_blend', 2586408642);

  void setEnableBlend(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_blend, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_blend =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_enable_blend', 36873697);

  bool getEnableBlend() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_blend, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_src_color_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_src_color_blend_factor', 2251019273);

  void setSrcColorBlendFactor(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_src_color_blend_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_src_color_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_src_color_blend_factor', 3691288359);

  int getSrcColorBlendFactor() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_src_color_blend_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dst_color_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_dst_color_blend_factor', 2251019273);

  void setDstColorBlendFactor(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_dst_color_blend_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dst_color_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_dst_color_blend_factor', 3691288359);

  int getDstColorBlendFactor() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_dst_color_blend_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_color_blend_op =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_color_blend_op', 3073022720);

  void setColorBlendOp(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_color_blend_op, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_color_blend_op =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_color_blend_op', 1385093561);

  int getColorBlendOp() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_color_blend_op, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_src_alpha_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_src_alpha_blend_factor', 2251019273);

  void setSrcAlphaBlendFactor(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_src_alpha_blend_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_src_alpha_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_src_alpha_blend_factor', 3691288359);

  int getSrcAlphaBlendFactor() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_src_alpha_blend_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_dst_alpha_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_dst_alpha_blend_factor', 2251019273);

  void setDstAlphaBlendFactor(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_dst_alpha_blend_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_dst_alpha_blend_factor =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_dst_alpha_blend_factor', 3691288359);

  int getDstAlphaBlendFactor() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_dst_alpha_blend_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_alpha_blend_op =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_alpha_blend_op', 3073022720);

  void setAlphaBlendOp(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_alpha_blend_op, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alpha_blend_op =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_alpha_blend_op', 1385093561);

  int getAlphaBlendOp() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alpha_blend_op, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_write_r =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_write_r', 2586408642);

  void setWriteR(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_write_r, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_write_r =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_write_r', 36873697);

  bool getWriteR() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_write_r, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_write_g =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_write_g', 2586408642);

  void setWriteG(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_write_g, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_write_g =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_write_g', 36873697);

  bool getWriteG() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_write_g, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_write_b =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_write_b', 2586408642);

  void setWriteB(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_write_b, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_write_b =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_write_b', 36873697);

  bool getWriteB() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_write_b, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_write_a =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'set_write_a', 2586408642);

  void setWriteA(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_write_a, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_write_a =
      resolveMethodBind('RDPipelineColorBlendStateAttachment', 'get_write_a', 36873697);

  bool getWriteA() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_write_a, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
