// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialCapabilityConfigurationBaseHeader extends RefCounted {
  OpenXRSpatialCapabilityConfigurationBaseHeader(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialCapabilityConfigurationBaseHeader instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialCapabilityConfigurationBaseHeader.create() {
    return OpenXRSpatialCapabilityConfigurationBaseHeader(resolveClassConstructor('OpenXRSpatialCapabilityConfigurationBaseHeader'));
  }

  static final Pointer<Void> _mb_has_valid_configuration =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationBaseHeader', 'has_valid_configuration', 36873697);

  bool hasValidConfiguration() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_valid_configuration, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_configuration =
      resolveMethodBind('OpenXRSpatialCapabilityConfigurationBaseHeader', 'get_configuration', 2455072627);

  int getConfiguration() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_configuration, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
