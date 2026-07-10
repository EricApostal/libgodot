// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OggPacketSequence extends Resource {
  OggPacketSequence(super.nativePtr);

  /// Constructs a brand-new engine-owned OggPacketSequence instance
  /// (via classdb_construct_object3), not an existing one.
  factory OggPacketSequence.create() {
    return OggPacketSequence(resolveClassConstructor('OggPacketSequence'));
  }

  // Skipped set_packet_data(): an argument type is unsupported.
  // Skipped get_packet_data(): unsupported return type "typedarray::Array".
  // Skipped set_packet_granule_positions(): an argument type is unsupported.
  // Skipped get_packet_granule_positions(): unsupported return type "PackedInt64Array".
  static final Pointer<Void> _mb_set_sampling_rate =
      resolveMethodBind('OggPacketSequence', 'set_sampling_rate', 373806689);

  void setSamplingRate(double samplingRate) {
    final arg0 = malloc<Double>()..value = samplingRate;
    try {
      ptrcallVoid(_mb_set_sampling_rate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sampling_rate =
      resolveMethodBind('OggPacketSequence', 'get_sampling_rate', 1740695150);

  double getSamplingRate() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_sampling_rate, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_length =
      resolveMethodBind('OggPacketSequence', 'get_length', 1740695150);

  double getLength() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_length, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
