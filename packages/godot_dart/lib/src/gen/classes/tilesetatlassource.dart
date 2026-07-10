// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class TileSetAtlasSource extends TileSetSource {
  TileSetAtlasSource(super.nativePtr);

  static final Pointer<Void> _mb_set_texture =
      resolveMethodBind('TileSetAtlasSource', 'set_texture', 4051416890);

  void setTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('TileSetAtlasSource', 'get_texture', 3635182373);

  Texture2D? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_margins =
      resolveMethodBind('TileSetAtlasSource', 'set_margins', 1130785943);

  void setMargins(Vector2i margins) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    margins.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_margins, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_margins =
      resolveMethodBind('TileSetAtlasSource', 'get_margins', 3690982128);

  Vector2i getMargins() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_margins, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_separation =
      resolveMethodBind('TileSetAtlasSource', 'set_separation', 1130785943);

  void setSeparation(Vector2i separation) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    separation.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_separation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_separation =
      resolveMethodBind('TileSetAtlasSource', 'get_separation', 3690982128);

  Vector2i getSeparation() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_separation, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_region_size =
      resolveMethodBind('TileSetAtlasSource', 'set_texture_region_size', 1130785943);

  void setTextureRegionSize(Vector2i textureRegionSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    textureRegionSize.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_texture_region_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_region_size =
      resolveMethodBind('TileSetAtlasSource', 'get_texture_region_size', 3690982128);

  Vector2i getTextureRegionSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_texture_region_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_texture_padding =
      resolveMethodBind('TileSetAtlasSource', 'set_use_texture_padding', 2586408642);

  void setUseTexturePadding(bool useTexturePadding) {
    final arg0 = malloc<Uint8>()..value = useTexturePadding ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_texture_padding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_texture_padding =
      resolveMethodBind('TileSetAtlasSource', 'get_use_texture_padding', 36873697);

  bool getUseTexturePadding() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_texture_padding, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_tile =
      resolveMethodBind('TileSetAtlasSource', 'create_tile', 190528769);

  void createTile(Vector2i atlasCoords, Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_create_tile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_tile =
      resolveMethodBind('TileSetAtlasSource', 'remove_tile', 1130785943);

  void removeTile(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_remove_tile, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_move_tile_in_atlas =
      resolveMethodBind('TileSetAtlasSource', 'move_tile_in_atlas', 3870111920);

  void moveTileInAtlas(Vector2i atlasCoords, Vector2i newAtlasCoords, Vector2i newSize) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    newAtlasCoords.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Vector2i.nativeSize);
    newSize.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_move_tile_in_atlas, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_tile_size_in_atlas =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_size_in_atlas', 3050897911);

  Vector2i getTileSizeInAtlas(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tile_size_in_atlas, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_room_for_tile =
      resolveMethodBind('TileSetAtlasSource', 'has_room_for_tile', 3018597268);

  bool hasRoomForTile(Vector2i atlasCoords, Vector2i size, int animationColumns, Vector2i animationSeparation, int framesCount, Vector2i ignoredTile) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg1, 0);
    final arg2 = malloc<Int64>()..value = animationColumns;
    final arg3 = malloc<Uint8>(Vector2i.nativeSize);
    animationSeparation.writeTo(arg3, 0);
    final arg4 = malloc<Int64>()..value = framesCount;
    final arg5 = malloc<Uint8>(Vector2i.nativeSize);
    ignoredTile.writeTo(arg5, 0);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_room_for_tile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
    }
  }

  // Skipped get_tiles_to_be_removed_on_change(): unsupported return type "PackedVector2Array".
  static final Pointer<Void> _mb_get_tile_at_coords =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_at_coords', 3050897911);

  Vector2i getTileAtCoords(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tile_at_coords, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_tiles_outside_texture =
      resolveMethodBind('TileSetAtlasSource', 'has_tiles_outside_texture', 36873697);

  bool hasTilesOutsideTexture() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_tiles_outside_texture, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_tiles_outside_texture =
      resolveMethodBind('TileSetAtlasSource', 'clear_tiles_outside_texture', 3218959716);

  void clearTilesOutsideTexture() {
    try {
      ptrcallVoid(_mb_clear_tiles_outside_texture, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_tile_animation_columns =
      resolveMethodBind('TileSetAtlasSource', 'set_tile_animation_columns', 3200960707);

  void setTileAnimationColumns(Vector2i atlasCoords, int frameColumns) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = frameColumns;
    try {
      ptrcallVoid(_mb_set_tile_animation_columns, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tile_animation_columns =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_animation_columns', 2485466453);

  int getTileAnimationColumns(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tile_animation_columns, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tile_animation_separation =
      resolveMethodBind('TileSetAtlasSource', 'set_tile_animation_separation', 1941061099);

  void setTileAnimationSeparation(Vector2i atlasCoords, Vector2i separation) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Uint8>(Vector2i.nativeSize);
    separation.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_tile_animation_separation, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tile_animation_separation =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_animation_separation', 3050897911);

  Vector2i getTileAnimationSeparation(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tile_animation_separation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tile_animation_speed =
      resolveMethodBind('TileSetAtlasSource', 'set_tile_animation_speed', 2262553149);

  void setTileAnimationSpeed(Vector2i atlasCoords, double speed) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Double>()..value = speed;
    try {
      ptrcallVoid(_mb_set_tile_animation_speed, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tile_animation_speed =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_animation_speed', 719993801);

  double getTileAnimationSpeed(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tile_animation_speed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tile_animation_mode =
      resolveMethodBind('TileSetAtlasSource', 'set_tile_animation_mode', 3192753483);

  void setTileAnimationMode(Vector2i atlasCoords, int mode) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_tile_animation_mode, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tile_animation_mode =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_animation_mode', 4025349959);

  int getTileAnimationMode(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tile_animation_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tile_animation_frames_count =
      resolveMethodBind('TileSetAtlasSource', 'set_tile_animation_frames_count', 3200960707);

  void setTileAnimationFramesCount(Vector2i atlasCoords, int framesCount) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = framesCount;
    try {
      ptrcallVoid(_mb_set_tile_animation_frames_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tile_animation_frames_count =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_animation_frames_count', 2485466453);

  int getTileAnimationFramesCount(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_tile_animation_frames_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_tile_animation_frame_duration =
      resolveMethodBind('TileSetAtlasSource', 'set_tile_animation_frame_duration', 2843487787);

  void setTileAnimationFrameDuration(Vector2i atlasCoords, int frameIndex, double duration) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = frameIndex;
    final arg2 = malloc<Double>()..value = duration;
    try {
      ptrcallVoid(_mb_set_tile_animation_frame_duration, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_tile_animation_frame_duration =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_animation_frame_duration', 1802448425);

  double getTileAnimationFrameDuration(Vector2i atlasCoords, int frameIndex) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = frameIndex;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tile_animation_frame_duration, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_tile_animation_total_duration =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_animation_total_duration', 719993801);

  double getTileAnimationTotalDuration(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_tile_animation_total_duration, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_alternative_tile =
      resolveMethodBind('TileSetAtlasSource', 'create_alternative_tile', 2226298068);

  int createAlternativeTile(Vector2i atlasCoords, int alternativeIdOverride) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = alternativeIdOverride;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_alternative_tile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_remove_alternative_tile =
      resolveMethodBind('TileSetAtlasSource', 'remove_alternative_tile', 3200960707);

  void removeAlternativeTile(Vector2i atlasCoords, int alternativeTile) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = alternativeTile;
    try {
      ptrcallVoid(_mb_remove_alternative_tile, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_alternative_tile_id =
      resolveMethodBind('TileSetAtlasSource', 'set_alternative_tile_id', 1499785778);

  void setAlternativeTileId(Vector2i atlasCoords, int alternativeTile, int newId) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = alternativeTile;
    final arg2 = malloc<Int64>()..value = newId;
    try {
      ptrcallVoid(_mb_set_alternative_tile_id, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_next_alternative_tile_id =
      resolveMethodBind('TileSetAtlasSource', 'get_next_alternative_tile_id', 2485466453);

  int getNextAlternativeTileId(Vector2i atlasCoords) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_next_alternative_tile_id, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_tile_data =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_data', 3534028207);

  TileData? getTileData(Vector2i atlasCoords, int alternativeTile) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = alternativeTile;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tile_data, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : TileData(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_atlas_grid_size =
      resolveMethodBind('TileSetAtlasSource', 'get_atlas_grid_size', 3690982128);

  Vector2i getAtlasGridSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_atlas_grid_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_tile_texture_region =
      resolveMethodBind('TileSetAtlasSource', 'get_tile_texture_region', 241857547);

  Rect2i getTileTextureRegion(Vector2i atlasCoords, int frame) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = frame;
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_tile_texture_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_runtime_texture =
      resolveMethodBind('TileSetAtlasSource', 'get_runtime_texture', 3635182373);

  Texture2D? getRuntimeTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_runtime_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_runtime_tile_texture_region =
      resolveMethodBind('TileSetAtlasSource', 'get_runtime_tile_texture_region', 104874263);

  Rect2i getRuntimeTileTextureRegion(Vector2i atlasCoords, int frame) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    atlasCoords.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = frame;
    try {
      final ret = malloc<Uint8>(Rect2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_runtime_tile_texture_region, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return Rect2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
