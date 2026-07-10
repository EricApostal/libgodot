// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDAttachmentFormat extends RefCounted {
  RDAttachmentFormat(super.nativePtr);

  static final Pointer<Void> _mb_set_format =
      resolveMethodBind('RDAttachmentFormat', 'set_format', 565531219);

  void setFormat(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('RDAttachmentFormat', 'get_format', 2235804183);

  int getFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_samples =
      resolveMethodBind('RDAttachmentFormat', 'set_samples', 3774171498);

  void setSamples(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_samples, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_samples =
      resolveMethodBind('RDAttachmentFormat', 'get_samples', 407791724);

  int getSamples() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_samples, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_usage_flags =
      resolveMethodBind('RDAttachmentFormat', 'set_usage_flags', 1286410249);

  void setUsageFlags(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_usage_flags, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_usage_flags =
      resolveMethodBind('RDAttachmentFormat', 'get_usage_flags', 3905245786);

  int getUsageFlags() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_usage_flags, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
