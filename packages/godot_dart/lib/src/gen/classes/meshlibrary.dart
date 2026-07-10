// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class MeshLibrary extends Resource {
  MeshLibrary(super.nativePtr);

  static final Pointer<Void> _mb_create_item =
      resolveMethodBind('MeshLibrary', 'create_item', 1286410249);

  void createItem(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_create_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_item_name =
      resolveMethodBind('MeshLibrary', 'set_item_name', 501894301);

  void setItemName(int id, String name) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), name);
    try {
      ptrcallVoid(_mb_set_item_name, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_category =
      resolveMethodBind('MeshLibrary', 'set_item_category', 3780747571);

  void setItemCategory(int id, String category) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), category);
    try {
      ptrcallVoid(_mb_set_item_category, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_mesh =
      resolveMethodBind('MeshLibrary', 'set_item_mesh', 969122797);

  void setItemMesh(int id, Mesh mesh) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Pointer<Void>>()..value = mesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_item_mesh, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_mesh_transform =
      resolveMethodBind('MeshLibrary', 'set_item_mesh_transform', 3616898986);

  void setItemMeshTransform(int id, Transform3D meshTransform) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    meshTransform.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_item_mesh_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_mesh_cast_shadow =
      resolveMethodBind('MeshLibrary', 'set_item_mesh_cast_shadow', 3923400443);

  void setItemMeshCastShadow(int id, int shadowCastingSetting) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = shadowCastingSetting;
    try {
      ptrcallVoid(_mb_set_item_mesh_cast_shadow, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_navigation_mesh =
      resolveMethodBind('MeshLibrary', 'set_item_navigation_mesh', 3483353960);

  void setItemNavigationMesh(int id, NavigationMesh navigationMesh) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Pointer<Void>>()..value = navigationMesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_item_navigation_mesh, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_navigation_mesh_transform =
      resolveMethodBind('MeshLibrary', 'set_item_navigation_mesh_transform', 3616898986);

  void setItemNavigationMeshTransform(int id, Transform3D navigationMesh) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Uint8>(Transform3D.nativeSize);
    navigationMesh.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_item_navigation_mesh_transform, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_item_navigation_layers =
      resolveMethodBind('MeshLibrary', 'set_item_navigation_layers', 3937882851);

  void setItemNavigationLayers(int id, int navigationLayers) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Int64>()..value = navigationLayers;
    try {
      ptrcallVoid(_mb_set_item_navigation_layers, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_item_shapes(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_item_preview =
      resolveMethodBind('MeshLibrary', 'set_item_preview', 666127730);

  void setItemPreview(int id, Texture2D texture) {
    final arg0 = malloc<Int64>()..value = id;
    final arg1 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_item_preview, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_item_name =
      resolveMethodBind('MeshLibrary', 'get_item_name', 844755477);

  String getItemName(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_category =
      resolveMethodBind('MeshLibrary', 'get_item_category', 659327637);

  String getItemCategory(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_item_category, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_mesh =
      resolveMethodBind('MeshLibrary', 'get_item_mesh', 1576363275);

  Mesh? getItemMesh(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_mesh, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Mesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_mesh_transform =
      resolveMethodBind('MeshLibrary', 'get_item_mesh_transform', 1965739696);

  Transform3D getItemMeshTransform(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_mesh_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_mesh_cast_shadow =
      resolveMethodBind('MeshLibrary', 'get_item_mesh_cast_shadow', 1841766007);

  int getItemMeshCastShadow(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_mesh_cast_shadow, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_navigation_mesh =
      resolveMethodBind('MeshLibrary', 'get_item_navigation_mesh', 2729647406);

  NavigationMesh? getItemNavigationMesh(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_navigation_mesh, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : NavigationMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_navigation_mesh_transform =
      resolveMethodBind('MeshLibrary', 'get_item_navigation_mesh_transform', 1965739696);

  Transform3D getItemNavigationMeshTransform(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_item_navigation_mesh_transform, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_item_navigation_layers =
      resolveMethodBind('MeshLibrary', 'get_item_navigation_layers', 923996154);

  int getItemNavigationLayers(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_navigation_layers, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_item_shapes(): unsupported return type "Array".
  static final Pointer<Void> _mb_get_item_preview =
      resolveMethodBind('MeshLibrary', 'get_item_preview', 3536238170);

  Texture2D? getItemPreview(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_item_preview, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_item =
      resolveMethodBind('MeshLibrary', 'remove_item', 1286410249);

  void removeItem(int id) {
    final arg0 = malloc<Int64>()..value = id;
    try {
      ptrcallVoid(_mb_remove_item, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_find_item_by_name =
      resolveMethodBind('MeshLibrary', 'find_item_by_name', 1321353865);

  int findItemByName(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_find_item_by_name, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('MeshLibrary', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_item_list(): unsupported return type "PackedInt32Array".
  static final Pointer<Void> _mb_get_item_count =
      resolveMethodBind('MeshLibrary', 'get_item_count', 3905245786);

  int getItemCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_item_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_last_unused_item_id =
      resolveMethodBind('MeshLibrary', 'get_last_unused_item_id', 3905245786);

  int getLastUnusedItemId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_last_unused_item_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
