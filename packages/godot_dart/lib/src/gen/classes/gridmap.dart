// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GridMap extends Node3D {
  GridMap(super.nativePtr);

  /// Constructs a brand-new engine-owned GridMap instance
  /// (via classdb_construct_object3), not an existing one.
  factory GridMap.create() {
    return GridMap(resolveClassConstructor('GridMap'));
  }

  static final Pointer<Void> _mb_set_collision_layer =
      resolveMethodBind('GridMap', 'set_collision_layer', 1286410249);

  void setCollisionLayer(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      ptrcallVoid(_mb_set_collision_layer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer =
      resolveMethodBind('GridMap', 'get_collision_layer', 3905245786);

  int getCollisionLayer() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_layer, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask =
      resolveMethodBind('GridMap', 'set_collision_mask', 1286410249);

  void setCollisionMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_collision_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask =
      resolveMethodBind('GridMap', 'get_collision_mask', 3905245786);

  int getCollisionMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_mask_value =
      resolveMethodBind('GridMap', 'set_collision_mask_value', 300928843);

  void setCollisionMaskValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_mask_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_mask_value =
      resolveMethodBind('GridMap', 'get_collision_mask_value', 1116898809);

  bool getCollisionMaskValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_mask_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_layer_value =
      resolveMethodBind('GridMap', 'set_collision_layer_value', 300928843);

  void setCollisionLayerValue(int layerNumber, bool value) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    final arg1 = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_collision_layer_value, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_collision_layer_value =
      resolveMethodBind('GridMap', 'get_collision_layer_value', 1116898809);

  bool getCollisionLayerValue(int layerNumber) {
    final arg0 = malloc<Int64>()..value = layerNumber;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_collision_layer_value, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_collision_priority =
      resolveMethodBind('GridMap', 'set_collision_priority', 373806689);

  void setCollisionPriority(double priority) {
    final arg0 = malloc<Double>()..value = priority;
    try {
      ptrcallVoid(_mb_set_collision_priority, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_priority =
      resolveMethodBind('GridMap', 'get_collision_priority', 1740695150);

  double getCollisionPriority() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_collision_priority, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_collision_visibility_mode =
      resolveMethodBind('GridMap', 'set_collision_visibility_mode', 4160694578);

  void setCollisionVisibilityMode(int visibilityMode) {
    final arg0 = malloc<Int64>()..value = visibilityMode;
    try {
      ptrcallVoid(_mb_set_collision_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_collision_visibility_mode =
      resolveMethodBind('GridMap', 'get_collision_visibility_mode', 3729798365);

  int getCollisionVisibilityMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_collision_visibility_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_material =
      resolveMethodBind('GridMap', 'set_physics_material', 1784508650);

  void setPhysicsMaterial(PhysicsMaterial material) {
    final arg0 = malloc<Pointer<Void>>()..value = material.nativePtr;
    try {
      ptrcallVoid(_mb_set_physics_material, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_material =
      resolveMethodBind('GridMap', 'get_physics_material', 2521850424);

  PhysicsMaterial? getPhysicsMaterial() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_physics_material, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : PhysicsMaterial(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_bake_navigation =
      resolveMethodBind('GridMap', 'set_bake_navigation', 2586408642);

  void setBakeNavigation(bool bakeNavigation) {
    final arg0 = malloc<Uint8>()..value = bakeNavigation ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_bake_navigation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_baking_navigation =
      resolveMethodBind('GridMap', 'is_baking_navigation', 2240911060);

  bool isBakingNavigation() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_baking_navigation, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_navigation_map(): an argument type is unsupported.
  // Skipped get_navigation_map(): unsupported return type "RID".
  static final Pointer<Void> _mb_set_mesh_library =
      resolveMethodBind('GridMap', 'set_mesh_library', 1488083439);

  void setMeshLibrary(MeshLibrary meshLibrary) {
    final arg0 = malloc<Pointer<Void>>()..value = meshLibrary.nativePtr;
    try {
      ptrcallVoid(_mb_set_mesh_library, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh_library =
      resolveMethodBind('GridMap', 'get_mesh_library', 3350993772);

  MeshLibrary? getMeshLibrary() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_mesh_library, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : MeshLibrary(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_size =
      resolveMethodBind('GridMap', 'set_cell_size', 3460891852);

  void setCellSize(Vector3 size) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_cell_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_size =
      resolveMethodBind('GridMap', 'get_cell_size', 3360562783);

  Vector3 getCellSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cell_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_scale =
      resolveMethodBind('GridMap', 'set_cell_scale', 373806689);

  void setCellScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_cell_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_scale =
      resolveMethodBind('GridMap', 'get_cell_scale', 1740695150);

  double getCellScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_cell_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_octant_size =
      resolveMethodBind('GridMap', 'set_octant_size', 1286410249);

  void setOctantSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_octant_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_octant_size =
      resolveMethodBind('GridMap', 'get_octant_size', 3905245786);

  int getOctantSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_octant_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_cell_item =
      resolveMethodBind('GridMap', 'set_cell_item', 3449088946);

  void setCellItem(Vector3i position, int item, int orientation) {
    final arg0 = malloc<Uint8>(Vector3i.nativeSize);
    position.writeTo(arg0, 0);
    final arg1 = malloc<Int64>()..value = item;
    final arg2 = malloc<Int64>()..value = orientation;
    try {
      ptrcallVoid(_mb_set_cell_item, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_get_cell_item =
      resolveMethodBind('GridMap', 'get_cell_item', 3724960147);

  int getCellItem(Vector3i position) {
    final arg0 = malloc<Uint8>(Vector3i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_item, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_item_orientation =
      resolveMethodBind('GridMap', 'get_cell_item_orientation', 3724960147);

  int getCellItemOrientation(Vector3i position) {
    final arg0 = malloc<Uint8>(Vector3i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_cell_item_orientation, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_cell_item_basis =
      resolveMethodBind('GridMap', 'get_cell_item_basis', 3493604918);

  Basis getCellItemBasis(Vector3i position) {
    final arg0 = malloc<Uint8>(Vector3i.nativeSize);
    position.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Basis.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_cell_item_basis, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Basis.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_basis_with_orthogonal_index =
      resolveMethodBind('GridMap', 'get_basis_with_orthogonal_index', 2816196998);

  Basis getBasisWithOrthogonalIndex(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Uint8>(Basis.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_basis_with_orthogonal_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Basis.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_orthogonal_index_from_basis =
      resolveMethodBind('GridMap', 'get_orthogonal_index_from_basis', 4210359952);

  int getOrthogonalIndexFromBasis(Basis basis) {
    final arg0 = malloc<Uint8>(Basis.nativeSize);
    basis.writeTo(arg0, 0);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_orthogonal_index_from_basis, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_local_to_map =
      resolveMethodBind('GridMap', 'local_to_map', 1257687843);

  Vector3i localToMap(Vector3 localPosition) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    localPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3i.nativeSize);
      try {
        ptrcallWithReturn(_mb_local_to_map, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_map_to_local =
      resolveMethodBind('GridMap', 'map_to_local', 1088329196);

  Vector3 mapToLocal(Vector3i mapPosition) {
    final arg0 = malloc<Uint8>(Vector3i.nativeSize);
    mapPosition.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_map_to_local, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_resource_changed =
      resolveMethodBind('GridMap', 'resource_changed', 968641751);

  void resourceChanged(Resource resource) {
    final arg0 = malloc<Pointer<Void>>()..value = resource.nativePtr;
    try {
      ptrcallVoid(_mb_resource_changed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_center_x =
      resolveMethodBind('GridMap', 'set_center_x', 2586408642);

  void setCenterX(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_center_x, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_x =
      resolveMethodBind('GridMap', 'get_center_x', 36873697);

  bool getCenterX() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_center_x, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_center_y =
      resolveMethodBind('GridMap', 'set_center_y', 2586408642);

  void setCenterY(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_center_y, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_y =
      resolveMethodBind('GridMap', 'get_center_y', 36873697);

  bool getCenterY() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_center_y, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_center_z =
      resolveMethodBind('GridMap', 'set_center_z', 2586408642);

  void setCenterZ(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_center_z, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_center_z =
      resolveMethodBind('GridMap', 'get_center_z', 36873697);

  bool getCenterZ() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_center_z, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('GridMap', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_used_cells(): unsupported return type "typedarray::Vector3i".
  // Skipped get_used_cells_by_item(): unsupported return type "typedarray::Vector3i".
  // Skipped get_used_octants(): unsupported return type "typedarray::Vector3i".
  // Skipped get_used_octants_by_item(): unsupported return type "typedarray::Vector3i".
  // Skipped get_used_cells_in_octant(): unsupported return type "typedarray::Vector3i".
  // Skipped get_used_cells_in_octant_by_item(): unsupported return type "typedarray::Vector3i".
  // Skipped get_octants_in_bounds(): unsupported return type "typedarray::Vector3i".
  // Skipped get_used_octants_in_bounds(): unsupported return type "typedarray::Vector3i".
  static final Pointer<Void> _mb_get_octant_coords_from_cell_coords =
      resolveMethodBind('GridMap', 'get_octant_coords_from_cell_coords', 2075501597);

  Vector3i getOctantCoordsFromCellCoords(Vector3i cellCoords) {
    final arg0 = malloc<Uint8>(Vector3i.nativeSize);
    cellCoords.writeTo(arg0, 0);
    try {
      final ret = malloc<Uint8>(Vector3i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_octant_coords_from_cell_coords, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector3i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_meshes(): unsupported return type "Array".
  // Skipped get_bake_meshes(): unsupported return type "Array".
  // Skipped get_bake_mesh_instance(): unsupported return type "RID".
  static final Pointer<Void> _mb_clear_baked_meshes =
      resolveMethodBind('GridMap', 'clear_baked_meshes', 3218959716);

  void clearBakedMeshes() {
    try {
      ptrcallVoid(_mb_clear_baked_meshes, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_make_baked_meshes =
      resolveMethodBind('GridMap', 'make_baked_meshes', 3609286057);

  void makeBakedMeshes(bool genLightmapUv, double lightmapUvTexelSize) {
    final arg0 = malloc<Uint8>()..value = genLightmapUv ? 1 : 0;
    final arg1 = malloc<Double>()..value = lightmapUvTexelSize;
    try {
      ptrcallVoid(_mb_make_baked_meshes, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_debug_show_octants =
      resolveMethodBind('GridMap', 'set_debug_show_octants', 2586408642);

  void setDebugShowOctants(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_show_octants, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_show_octants =
      resolveMethodBind('GridMap', 'get_debug_show_octants', 36873697);

  bool getDebugShowOctants() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_debug_show_octants, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_octant_color =
      resolveMethodBind('GridMap', 'set_debug_octant_color', 2920490490);

  void setDebugOctantColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_debug_octant_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_octant_color =
      resolveMethodBind('GridMap', 'get_debug_octant_color', 3444240500);

  Color getDebugOctantColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_debug_octant_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
