// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationMeshGenerator extends GodotObject {
  NavigationMeshGenerator(super.nativePtr);

  /// Constructs a brand-new engine-owned NavigationMeshGenerator instance
  /// (via classdb_construct_object3), not an existing one.
  factory NavigationMeshGenerator.create() {
    return NavigationMeshGenerator(resolveClassConstructor('NavigationMeshGenerator'));
  }

  static final Pointer<Void> _mb_bake =
      resolveMethodBind('NavigationMeshGenerator', 'bake', 1401173477);

  void bake(NavigationMesh navigationMesh, Node rootNode) {
    final arg0 = malloc<Pointer<Void>>()..value = navigationMesh.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = rootNode.nativePtr;
    try {
      ptrcallVoid(_mb_bake, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('NavigationMeshGenerator', 'clear', 2923361153);

  void clear(NavigationMesh navigationMesh) {
    final arg0 = malloc<Pointer<Void>>()..value = navigationMesh.nativePtr;
    try {
      ptrcallVoid(_mb_clear, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped parse_source_geometry_data(): an argument type is unsupported.
  // Skipped bake_from_source_geometry_data(): an argument type is unsupported.
}
