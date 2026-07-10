// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDPipelineColorBlendState extends RefCounted {
  RDPipelineColorBlendState(super.nativePtr);

  /// Constructs a brand-new engine-owned RDPipelineColorBlendState instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDPipelineColorBlendState.create() {
    return RDPipelineColorBlendState(resolveClassConstructor('RDPipelineColorBlendState'));
  }

  static final Pointer<Void> _mb_set_enable_logic_op =
      resolveMethodBind('RDPipelineColorBlendState', 'set_enable_logic_op', 2586408642);

  void setEnableLogicOp(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_logic_op, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_logic_op =
      resolveMethodBind('RDPipelineColorBlendState', 'get_enable_logic_op', 36873697);

  bool getEnableLogicOp() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_logic_op, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_logic_op =
      resolveMethodBind('RDPipelineColorBlendState', 'set_logic_op', 3610841058);

  void setLogicOp(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_logic_op, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_logic_op =
      resolveMethodBind('RDPipelineColorBlendState', 'get_logic_op', 988254690);

  int getLogicOp() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_logic_op, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_blend_constant =
      resolveMethodBind('RDPipelineColorBlendState', 'set_blend_constant', 2920490490);

  void setBlendConstant(Color pMember) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    pMember.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_blend_constant, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_blend_constant =
      resolveMethodBind('RDPipelineColorBlendState', 'get_blend_constant', 3444240500);

  Color getBlendConstant() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_blend_constant, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_attachments(): an argument type is unsupported.
  // Skipped get_attachments(): unsupported return type "typedarray::RDPipelineColorBlendStateAttachment".
}
