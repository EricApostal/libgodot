// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Semaphore extends RefCounted {
  Semaphore(super.nativePtr);

  /// Constructs a brand-new engine-owned Semaphore instance
  /// (via classdb_construct_object3), not an existing one.
  factory Semaphore.create() {
    return Semaphore(resolveClassConstructor('Semaphore'));
  }

  static final Pointer<Void> _mb_wait =
      resolveMethodBind('Semaphore', 'wait', 3218959716);

  void wait() {
    try {
      ptrcallVoid(_mb_wait, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_try_wait =
      resolveMethodBind('Semaphore', 'try_wait', 2240911060);

  bool tryWait() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_try_wait, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_post =
      resolveMethodBind('Semaphore', 'post', 1667783136);

  void post(int count) {
    final arg0 = malloc<Int64>()..value = count;
    try {
      ptrcallVoid(_mb_post, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
