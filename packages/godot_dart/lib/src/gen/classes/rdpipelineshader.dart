// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDPipelineShader extends RefCounted {
  RDPipelineShader(super.nativePtr);

  /// Constructs a brand-new engine-owned RDPipelineShader instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDPipelineShader.create() {
    return RDPipelineShader(resolveClassConstructor('RDPipelineShader'));
  }

  // Skipped set_shader(): an argument type is unsupported.
  // Skipped get_shader(): unsupported return type "RID".
  // Skipped set_specialization_constants(): an argument type is unsupported.
  // Skipped get_specialization_constants(): unsupported return type "typedarray::RDPipelineSpecializationConstant".
}
