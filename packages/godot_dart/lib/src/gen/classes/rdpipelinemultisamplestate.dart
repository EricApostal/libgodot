// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDPipelineMultisampleState extends RefCounted {
  RDPipelineMultisampleState(super.nativePtr);

  /// Constructs a brand-new engine-owned RDPipelineMultisampleState instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDPipelineMultisampleState.create() {
    return RDPipelineMultisampleState(resolveClassConstructor('RDPipelineMultisampleState'));
  }

  static final Pointer<Void> _mb_set_sample_count =
      resolveMethodBind('RDPipelineMultisampleState', 'set_sample_count', 3774171498);

  void setSampleCount(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_sample_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sample_count =
      resolveMethodBind('RDPipelineMultisampleState', 'get_sample_count', 407791724);

  int getSampleCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sample_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_sample_shading =
      resolveMethodBind('RDPipelineMultisampleState', 'set_enable_sample_shading', 2586408642);

  void setEnableSampleShading(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_sample_shading, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_sample_shading =
      resolveMethodBind('RDPipelineMultisampleState', 'get_enable_sample_shading', 36873697);

  bool getEnableSampleShading() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_sample_shading, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_min_sample_shading =
      resolveMethodBind('RDPipelineMultisampleState', 'set_min_sample_shading', 373806689);

  void setMinSampleShading(double pMember) {
    final arg0 = malloc<Double>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_min_sample_shading, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_min_sample_shading =
      resolveMethodBind('RDPipelineMultisampleState', 'get_min_sample_shading', 1740695150);

  double getMinSampleShading() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_min_sample_shading, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_alpha_to_coverage =
      resolveMethodBind('RDPipelineMultisampleState', 'set_enable_alpha_to_coverage', 2586408642);

  void setEnableAlphaToCoverage(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_alpha_to_coverage, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_alpha_to_coverage =
      resolveMethodBind('RDPipelineMultisampleState', 'get_enable_alpha_to_coverage', 36873697);

  bool getEnableAlphaToCoverage() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_alpha_to_coverage, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_alpha_to_one =
      resolveMethodBind('RDPipelineMultisampleState', 'set_enable_alpha_to_one', 2586408642);

  void setEnableAlphaToOne(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_alpha_to_one, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_alpha_to_one =
      resolveMethodBind('RDPipelineMultisampleState', 'get_enable_alpha_to_one', 36873697);

  bool getEnableAlphaToOne() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_alpha_to_one, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_sample_masks(): an argument type is unsupported.
  // Skipped get_sample_masks(): unsupported return type "typedarray::int".
}
