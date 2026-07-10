// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FuzzySearchMatch extends RefCounted {
  FuzzySearchMatch(super.nativePtr);

  static final Pointer<Void> _mb_set_target =
      resolveMethodBind('FuzzySearchMatch', 'set_target', 83702148);

  void setTarget(String target) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), target);
    try {
      ptrcallVoid(_mb_set_target, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_target =
      resolveMethodBind('FuzzySearchMatch', 'get_target', 201670096);

  String getTarget() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_target, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_score =
      resolveMethodBind('FuzzySearchMatch', 'set_score', 1286410249);

  void setScore(int score) {
    final arg0 = malloc<Int64>()..value = score;
    try {
      ptrcallVoid(_mb_set_score, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_score =
      resolveMethodBind('FuzzySearchMatch', 'get_score', 3905245786);

  int getScore() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_score, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_original_index =
      resolveMethodBind('FuzzySearchMatch', 'set_original_index', 1286410249);

  void setOriginalIndex(int originalIndex) {
    final arg0 = malloc<Int64>()..value = originalIndex;
    try {
      ptrcallVoid(_mb_set_original_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_original_index =
      resolveMethodBind('FuzzySearchMatch', 'get_original_index', 3905245786);

  int getOriginalIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_original_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_matched_substrings(): unsupported return type "typedarray::Vector2i".
}
