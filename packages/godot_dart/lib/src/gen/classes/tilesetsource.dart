// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileSetSource extends Resource {
  TileSetSource(super.nativePtr);

  static final Pointer<Void> _mb_get_tiles_count =
      resolveMethodBind('TileSetSource', 'get_tiles_count', 3905245786);

  int getTilesCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tiles_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tile_id =
      resolveMethodBind('TileSetSource', 'get_tile_id', 880721226);

  Vector2i getTileId(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tile_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_tile =
      resolveMethodBind('TileSetSource', 'has_tile', 3900751641);

  bool hasTile(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_tile, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alternative_tiles_count =
      resolveMethodBind('TileSetSource', 'get_alternative_tiles_count', 2485466453);

  int getAlternativeTilesCount(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alternative_tiles_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_alternative_tile_id =
      resolveMethodBind('TileSetSource', 'get_alternative_tile_id', 89881719);

  int getAlternativeTileId(Vector2i atlasCoords, int index) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_alternative_tile_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_has_alternative_tile =
      resolveMethodBind('TileSetSource', 'has_alternative_tile', 1073731340);

  bool hasAlternativeTile(Vector2i atlasCoords, int alternativeTile) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = alternativeTile;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_alternative_tile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
