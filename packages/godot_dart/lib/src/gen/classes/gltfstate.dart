// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFState extends Resource {
  GLTFState(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFState instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFState.create() {
    return GLTFState(resolveClassConstructor('GLTFState'));
  }

  static final Pointer<Void> _mb_add_used_extension =
      resolveMethodBind('GLTFState', 'add_used_extension', 2678287736);

  void addUsedExtension(String extensionName, bool required_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), extensionName);
    final arg1 = malloc<Uint8>()..value = required_ ? 1 : 0;
    try {
      ptrcallVoid(_mb_add_used_extension, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped append_data_to_buffers(): an argument type is unsupported.
  static final Pointer<Void> _mb_append_gltf_node =
      resolveMethodBind('GLTFState', 'append_gltf_node', 3562288551);

  int appendGltfNode(GLTFNode gltfNode, Node godotSceneNode, int parentNodeIndex) {
    final arg0 = malloc<Pointer<Void>>()..value = gltfNode.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = godotSceneNode.nativePtr;
    final arg2 = malloc<Int64>()..value = parentNodeIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_append_gltf_node, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped get_json(): unsupported return type "Dictionary".
  // Skipped set_json(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_major_version =
      resolveMethodBind('GLTFState', 'get_major_version', 3905245786);

  int getMajorVersion() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_major_version, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_major_version =
      resolveMethodBind('GLTFState', 'set_major_version', 1286410249);

  void setMajorVersion(int majorVersion) {
    final arg0 = malloc<Int64>()..value = majorVersion;
    try {
      ptrcallVoid(_mb_set_major_version, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_minor_version =
      resolveMethodBind('GLTFState', 'get_minor_version', 3905245786);

  int getMinorVersion() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_minor_version, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_minor_version =
      resolveMethodBind('GLTFState', 'set_minor_version', 1286410249);

  void setMinorVersion(int minorVersion) {
    final arg0 = malloc<Int64>()..value = minorVersion;
    try {
      ptrcallVoid(_mb_set_minor_version, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_copyright =
      resolveMethodBind('GLTFState', 'get_copyright', 201670096);

  String getCopyright() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_copyright, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_copyright =
      resolveMethodBind('GLTFState', 'set_copyright', 83702148);

  void setCopyright(String copyright) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), copyright);
    try {
      ptrcallVoid(_mb_set_copyright, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_glb_data(): unsupported return type "PackedByteArray".
  // Skipped set_glb_data(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_use_named_skin_binds =
      resolveMethodBind('GLTFState', 'get_use_named_skin_binds', 36873697);

  bool getUseNamedSkinBinds() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_named_skin_binds, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_named_skin_binds =
      resolveMethodBind('GLTFState', 'set_use_named_skin_binds', 2586408642);

  void setUseNamedSkinBinds(bool useNamedSkinBinds) {
    final arg0 = malloc<Uint8>()..value = useNamedSkinBinds ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_named_skin_binds, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_nodes(): unsupported return type "typedarray::GLTFNode".
  // Skipped set_nodes(): an argument type is unsupported.
  // Skipped get_buffers(): unsupported return type "typedarray::PackedByteArray".
  // Skipped set_buffers(): an argument type is unsupported.
  // Skipped get_buffer_views(): unsupported return type "typedarray::GLTFBufferView".
  // Skipped set_buffer_views(): an argument type is unsupported.
  // Skipped get_accessors(): unsupported return type "typedarray::GLTFAccessor".
  // Skipped set_accessors(): an argument type is unsupported.
  // Skipped get_meshes(): unsupported return type "typedarray::GLTFMesh".
  // Skipped set_meshes(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_animation_players_count =
      resolveMethodBind('GLTFState', 'get_animation_players_count', 923996154);

  int getAnimationPlayersCount(int animPlayerIndex) {
    final arg0 = malloc<Int64>()..value = animPlayerIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_animation_players_count, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_animation_player =
      resolveMethodBind('GLTFState', 'get_animation_player', 1550200483);

  AnimationPlayer? getAnimationPlayer(int animPlayerIndex) {
    final arg0 = malloc<Int64>()..value = animPlayerIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_animation_player, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AnimationPlayer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_materials(): unsupported return type "typedarray::Material".
  // Skipped set_materials(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_scene_name =
      resolveMethodBind('GLTFState', 'get_scene_name', 201670096);

  String getSceneName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_scene_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scene_name =
      resolveMethodBind('GLTFState', 'set_scene_name', 83702148);

  void setSceneName(String sceneName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), sceneName);
    try {
      ptrcallVoid(_mb_set_scene_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_base_path =
      resolveMethodBind('GLTFState', 'get_base_path', 201670096);

  String getBasePath() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_base_path, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_base_path =
      resolveMethodBind('GLTFState', 'set_base_path', 83702148);

  void setBasePath(String basePath) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), basePath);
    try {
      ptrcallVoid(_mb_set_base_path, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filename =
      resolveMethodBind('GLTFState', 'get_filename', 201670096);

  String getFilename() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_filename, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filename =
      resolveMethodBind('GLTFState', 'set_filename', 83702148);

  void setFilename(String filename) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), filename);
    try {
      ptrcallVoid(_mb_set_filename, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_root_nodes(): unsupported return type "PackedInt32Array".
  // Skipped set_root_nodes(): an argument type is unsupported.
  // Skipped get_textures(): unsupported return type "typedarray::GLTFTexture".
  // Skipped set_textures(): an argument type is unsupported.
  // Skipped get_texture_samplers(): unsupported return type "typedarray::GLTFTextureSampler".
  // Skipped set_texture_samplers(): an argument type is unsupported.
  // Skipped get_images(): unsupported return type "typedarray::Texture2D".
  // Skipped set_images(): an argument type is unsupported.
  // Skipped get_skins(): unsupported return type "typedarray::GLTFSkin".
  // Skipped set_skins(): an argument type is unsupported.
  // Skipped get_cameras(): unsupported return type "typedarray::GLTFCamera".
  // Skipped set_cameras(): an argument type is unsupported.
  // Skipped get_lights(): unsupported return type "typedarray::GLTFLight".
  // Skipped set_lights(): an argument type is unsupported.
  // Skipped get_unique_names(): unsupported return type "typedarray::String".
  // Skipped set_unique_names(): an argument type is unsupported.
  // Skipped get_unique_animation_names(): unsupported return type "typedarray::String".
  // Skipped set_unique_animation_names(): an argument type is unsupported.
  // Skipped get_skeletons(): unsupported return type "typedarray::GLTFSkeleton".
  // Skipped set_skeletons(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_create_animations =
      resolveMethodBind('GLTFState', 'get_create_animations', 36873697);

  bool getCreateAnimations() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_create_animations, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_create_animations =
      resolveMethodBind('GLTFState', 'set_create_animations', 2586408642);

  void setCreateAnimations(bool createAnimations) {
    final arg0 = malloc<Uint8>()..value = createAnimations ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_create_animations, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_import_as_skeleton_bones =
      resolveMethodBind('GLTFState', 'get_import_as_skeleton_bones', 36873697);

  bool getImportAsSkeletonBones() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_import_as_skeleton_bones, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_import_as_skeleton_bones =
      resolveMethodBind('GLTFState', 'set_import_as_skeleton_bones', 2586408642);

  void setImportAsSkeletonBones(bool importAsSkeletonBones) {
    final arg0 = malloc<Uint8>()..value = importAsSkeletonBones ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_import_as_skeleton_bones, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_animations(): unsupported return type "typedarray::GLTFAnimation".
  // Skipped set_animations(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_scene_node =
      resolveMethodBind('GLTFState', 'get_scene_node', 539202265);

  Node? getSceneNode(int gltfNodeIndex) {
    final arg0 = malloc<Int64>()..value = gltfNodeIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_scene_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_node_index =
      resolveMethodBind('GLTFState', 'get_node_index', 3810805390);

  int getNodeIndex(Node sceneNode) {
    final arg0 = malloc<Pointer<Void>>()..value = sceneNode.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_node_index, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_additional_data(): unsupported return type "Variant".
  // Skipped set_additional_data(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_handle_binary_image_mode =
      resolveMethodBind('GLTFState', 'get_handle_binary_image_mode', 1363384196);

  int getHandleBinaryImageMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_handle_binary_image_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_handle_binary_image_mode =
      resolveMethodBind('GLTFState', 'set_handle_binary_image_mode', 854676334);

  void setHandleBinaryImageMode(int method) {
    final arg0 = malloc<Int64>()..value = method;
    try {
      ptrcallVoid(_mb_set_handle_binary_image_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_bake_fps =
      resolveMethodBind('GLTFState', 'set_bake_fps', 373806689);

  void setBakeFps(double value) {
    final arg0 = malloc<Double>()..value = value;
    try {
      ptrcallVoid(_mb_set_bake_fps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_bake_fps =
      resolveMethodBind('GLTFState', 'get_bake_fps', 1740695150);

  double getBakeFps() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_bake_fps, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_handle_binary_image =
      resolveMethodBind('GLTFState', 'get_handle_binary_image', 3905245786);

  int getHandleBinaryImage() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_handle_binary_image, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_handle_binary_image =
      resolveMethodBind('GLTFState', 'set_handle_binary_image', 1286410249);

  void setHandleBinaryImage(int method) {
    final arg0 = malloc<Int64>()..value = method;
    try {
      ptrcallVoid(_mb_set_handle_binary_image, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
