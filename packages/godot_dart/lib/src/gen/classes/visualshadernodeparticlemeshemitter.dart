// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class VisualShaderNodeParticleMeshEmitter extends VisualShaderNodeParticleEmitter {
  VisualShaderNodeParticleMeshEmitter(super.nativePtr);

  /// Constructs a brand-new engine-owned VisualShaderNodeParticleMeshEmitter instance
  /// (via classdb_construct_object3), not an existing one.
  factory VisualShaderNodeParticleMeshEmitter.create() {
    return VisualShaderNodeParticleMeshEmitter(resolveClassConstructor('VisualShaderNodeParticleMeshEmitter'));
  }

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('VisualShaderNodeParticleMeshEmitter', 'set_mesh', 194775623);

  void setMesh(Mesh mesh) {
    final arg0 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('VisualShaderNodeParticleMeshEmitter', 'get_mesh', 1808005922);

  Mesh? getMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Mesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_all_surfaces =
      resolveMethodBind('VisualShaderNodeParticleMeshEmitter', 'set_use_all_surfaces', 2586408642);

  void setUseAllSurfaces(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_all_surfaces, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_use_all_surfaces =
      resolveMethodBind('VisualShaderNodeParticleMeshEmitter', 'is_use_all_surfaces', 36873697);

  bool isUseAllSurfaces() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_use_all_surfaces, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_surface_index =
      resolveMethodBind('VisualShaderNodeParticleMeshEmitter', 'set_surface_index', 1286410249);

  void setSurfaceIndex(int surfaceIndex) {
    final arg0 = malloc<Int64>()..value = surfaceIndex;
    try {
      ptrcallVoid(_mb_set_surface_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_surface_index =
      resolveMethodBind('VisualShaderNodeParticleMeshEmitter', 'get_surface_index', 3905245786);

  int getSurfaceIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_surface_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
