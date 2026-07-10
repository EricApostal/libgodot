// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileMapPattern extends Resource {
  TileMapPattern(super.nativePtr);

  /// Constructs a brand-new engine-owned TileMapPattern instance
  /// (via classdb_construct_object3), not an existing one.
  factory TileMapPattern.create() {
    return TileMapPattern(resolveClassConstructor('TileMapPattern'));
  }

  static final Pointer<Void> _mb_set_cell =
      resolveMethodBind('TileMapPattern', 'set_cell', 2224802556);

  void setCell(Vector2i coords, int sourceId, Vector2i atlasCoords, int alternativeTile) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = sourceId;
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg2, 0);
    final arg3 = malloc<Int64>()..value = alternativeTile;
    try {
      ptrcallVoid(_mb_set_cell, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_has_cell =
      resolveMethodBind('TileMapPattern', 'has_cell', 3900751641);

  bool hasCell(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_cell, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_cell =
      resolveMethodBind('TileMapPattern', 'remove_cell', 4153096796);

  void removeCell(Vector2i coords, bool updateSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>()..value = updateSize ? 1 : 0;
    try {
      ptrcallVoid(_mb_remove_cell, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_cell_source_id =
      resolveMethodBind('TileMapPattern', 'get_cell_source_id', 2485466453);

  int getCellSourceId(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_source_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_atlas_coords =
      resolveMethodBind('TileMapPattern', 'get_cell_atlas_coords', 3050897911);

  Vector2i getCellAtlasCoords(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cell_atlas_coords, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_alternative_tile =
      resolveMethodBind('TileMapPattern', 'get_cell_alternative_tile', 2485466453);

  int getCellAlternativeTile(Vector2i coords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    coords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_alternative_tile, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_used_cells(): unsupported return type "typedarray::Vector2i".
  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('TileMapPattern', 'get_size', 3690982128);

  Vector2i getSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('TileMapPattern', 'set_size', 1130785943);

  void setSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_empty =
      resolveMethodBind('TileMapPattern', 'is_empty', 36873697);

  bool isEmpty() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_empty, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
