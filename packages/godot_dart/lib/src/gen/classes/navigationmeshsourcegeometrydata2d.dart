// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationMeshSourceGeometryData2D extends Resource {
  NavigationMeshSourceGeometryData2D(super.nativePtr);

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('NavigationMeshSourceGeometryData2D', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_data =
      resolveMethodBind('NavigationMeshSourceGeometryData2D', 'has_data', 2240911060);

  bool hasData() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_data, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_traversable_outlines(): an argument type is unsupported.
  // Skipped get_traversable_outlines(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped set_obstruction_outlines(): an argument type is unsupported.
  // Skipped get_obstruction_outlines(): unsupported return type "typedarray::PackedVector2Array".
  // Skipped append_traversable_outlines(): an argument type is unsupported.
  // Skipped append_obstruction_outlines(): an argument type is unsupported.
  // Skipped add_traversable_outline(): an argument type is unsupported.
  // Skipped add_obstruction_outline(): an argument type is unsupported.
  static final Pointer<Void> _mb_merge =
      resolveMethodBind('NavigationMeshSourceGeometryData2D', 'merge', 742424872);

  void merge(NavigationMeshSourceGeometryData2D otherGeometry) {
    final arg0 = malloc<Pointer<Void>>()..value = otherGeometry.nativePtr;
    try {
      ptrcallVoid(_mb_merge, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped add_projected_obstruction(): an argument type is unsupported.
  static final Pointer<Void> _mb_clear_projected_obstructions =
      resolveMethodBind('NavigationMeshSourceGeometryData2D', 'clear_projected_obstructions', 3218959716);

  void clearProjectedObstructions() {
    try {
      ptrcallVoid(_mb_clear_projected_obstructions, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_projected_obstructions(): an argument type is unsupported.
  // Skipped get_projected_obstructions(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_bounds =
      resolveMethodBind('NavigationMeshSourceGeometryData2D', 'get_bounds', 3248174);

  Rect2 getBounds() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_bounds, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
