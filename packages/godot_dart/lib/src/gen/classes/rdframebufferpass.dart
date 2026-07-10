// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDFramebufferPass extends RefCounted {
  RDFramebufferPass(super.nativePtr);

  /// Constructs a brand-new engine-owned RDFramebufferPass instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDFramebufferPass.create() {
    return RDFramebufferPass(resolveClassConstructor('RDFramebufferPass'));
  }

  // Skipped set_color_attachments(): an argument type is unsupported.
  // Skipped get_color_attachments(): unsupported return type "PackedInt32Array".
  // Skipped set_input_attachments(): an argument type is unsupported.
  // Skipped get_input_attachments(): unsupported return type "PackedInt32Array".
  // Skipped set_resolve_attachments(): an argument type is unsupported.
  // Skipped get_resolve_attachments(): unsupported return type "PackedInt32Array".
  // Skipped set_preserve_attachments(): an argument type is unsupported.
  // Skipped get_preserve_attachments(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_set_depth_attachment =
      resolveMethodBind('RDFramebufferPass', 'set_depth_attachment', 1286410249);

  void setDepthAttachment(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth_attachment, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth_attachment =
      resolveMethodBind('RDFramebufferPass', 'get_depth_attachment', 3905245786);

  int getDepthAttachment() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_depth_attachment, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
