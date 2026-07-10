// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AudioStreamPolyphonic extends AudioStream {
  AudioStreamPolyphonic(super.nativePtr);

  /// Constructs a brand-new engine-owned AudioStreamPolyphonic instance
  /// (via classdb_construct_object3), not an existing one.
  factory AudioStreamPolyphonic.create() {
    return AudioStreamPolyphonic(resolveClassConstructor('AudioStreamPolyphonic'));
  }

  static final Pointer<Void> _mb_set_polyphony =
      resolveMethodBind('AudioStreamPolyphonic', 'set_polyphony', 1286410249);

  void setPolyphony(int voices) {
    final arg0 = malloc<Int64>()..value = voices;
    try {
      ptrcallVoid(_mb_set_polyphony, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_polyphony =
      resolveMethodBind('AudioStreamPolyphonic', 'get_polyphony', 3905245786);

  int getPolyphony() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_polyphony, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
