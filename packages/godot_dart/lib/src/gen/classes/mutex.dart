// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Mutex extends RefCounted {
  Mutex(super.nativePtr);

  static final Pointer<Void> _mb_lock =
      resolveMethodBind('Mutex', 'lock', 3218959716);

  void lock() {
    try {
      ptrcallVoid(_mb_lock, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_try_lock =
      resolveMethodBind('Mutex', 'try_lock', 2240911060);

  bool tryLock() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_try_lock, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_unlock =
      resolveMethodBind('Mutex', 'unlock', 3218959716);

  void unlock() {
    try {
      ptrcallVoid(_mb_unlock, nativePtr, []);
    } finally {
    }
  }

}
