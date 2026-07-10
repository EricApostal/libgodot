// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class OpenXRSpatialEntityExtension extends OpenXRExtensionWrapper {
  OpenXRSpatialEntityExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned OpenXRSpatialEntityExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory OpenXRSpatialEntityExtension.create() {
    return OpenXRSpatialEntityExtension(resolveClassConstructor('OpenXRSpatialEntityExtension'));
  }

  static final Pointer<Void> _mb_supports_capability =
      resolveMethodBind('OpenXRSpatialEntityExtension', 'supports_capability', 1940837202);

  bool supportsCapability(int capability) {
    final arg0 = malloc<Int64>()..value = capability;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_supports_capability, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_supports_component_type =
      resolveMethodBind('OpenXRSpatialEntityExtension', 'supports_component_type', 26842779);

  bool supportsComponentType(int capability, int componentType) {
    final arg0 = malloc<Int64>()..value = capability;
    final arg1 = malloc<Int64>()..value = componentType;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_supports_component_type, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped create_spatial_context(): an argument type is unsupported.
  // Skipped get_spatial_context_ready(): an argument type is unsupported.
  // Skipped free_spatial_context(): an argument type is unsupported.
  // Skipped get_spatial_context_handle(): an argument type is unsupported.
  // Skipped discover_spatial_entities_with_component_data(): an argument type is unsupported.
  // Skipped discover_spatial_entities(): an argument type is unsupported.
  // Skipped update_spatial_entities(): unsupported return type "RID".
  // Skipped free_spatial_snapshot(): an argument type is unsupported.
  // Skipped get_spatial_snapshot_handle(): an argument type is unsupported.
  // Skipped get_spatial_snapshot_context(): unsupported return type "RID".
  // Skipped query_snapshot(): an argument type is unsupported.
  // Skipped get_string(): an argument type is unsupported.
  // Skipped get_uint8_buffer(): unsupported return type "PackedByteArray".
  // Skipped get_uint16_buffer(): unsupported return type "PackedInt32Array".
  // Skipped get_uint32_buffer(): unsupported return type "PackedInt32Array".
  // Skipped get_float_buffer(): unsupported return type "PackedFloat32Array".
  // Skipped get_vector2_buffer(): unsupported return type "PackedVector2Array".
  // Skipped get_vector3_buffer(): unsupported return type "PackedVector3Array".
  // Skipped find_spatial_entity(): unsupported return type "RID".
  // Skipped add_spatial_entity(): unsupported return type "RID".
  // Skipped make_spatial_entity(): unsupported return type "RID".
  // Skipped get_spatial_entity_id(): an argument type is unsupported.
  // Skipped get_spatial_entity_context(): unsupported return type "RID".
  // Skipped free_spatial_entity(): an argument type is unsupported.
}
