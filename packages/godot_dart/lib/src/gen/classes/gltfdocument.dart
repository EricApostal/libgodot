// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFDocument extends Resource {
  GLTFDocument(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFDocument instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFDocument.create() {
    return GLTFDocument(resolveClassConstructor('GLTFDocument'));
  }

  static final Pointer<Void> _mb_set_image_format =
      resolveMethodBind('GLTFDocument', 'set_image_format', 83702148);

  void setImageFormat(String imageFormat) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), imageFormat);
    try {
      ptrcallVoid(_mb_set_image_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_image_format =
      resolveMethodBind('GLTFDocument', 'get_image_format', 201670096);

  String getImageFormat() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_image_format, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_lossy_quality =
      resolveMethodBind('GLTFDocument', 'set_lossy_quality', 373806689);

  void setLossyQuality(double lossyQuality) {
    final arg0 = malloc<Double>()..value = lossyQuality;
    try {
      ptrcallVoid(_mb_set_lossy_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_lossy_quality =
      resolveMethodBind('GLTFDocument', 'get_lossy_quality', 1740695150);

  double getLossyQuality() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_lossy_quality, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_image_format =
      resolveMethodBind('GLTFDocument', 'set_fallback_image_format', 83702148);

  void setFallbackImageFormat(String fallbackImageFormat) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), fallbackImageFormat);
    try {
      ptrcallVoid(_mb_set_fallback_image_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_image_format =
      resolveMethodBind('GLTFDocument', 'get_fallback_image_format', 201670096);

  String getFallbackImageFormat() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_fallback_image_format, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fallback_image_quality =
      resolveMethodBind('GLTFDocument', 'set_fallback_image_quality', 373806689);

  void setFallbackImageQuality(double fallbackImageQuality) {
    final arg0 = malloc<Double>()..value = fallbackImageQuality;
    try {
      ptrcallVoid(_mb_set_fallback_image_quality, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fallback_image_quality =
      resolveMethodBind('GLTFDocument', 'get_fallback_image_quality', 1740695150);

  double getFallbackImageQuality() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fallback_image_quality, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_root_node_mode =
      resolveMethodBind('GLTFDocument', 'set_root_node_mode', 463633402);

  void setRootNodeMode(int rootNodeMode) {
    final arg0 = malloc<Int64>()..value = rootNodeMode;
    try {
      ptrcallVoid(_mb_set_root_node_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_root_node_mode =
      resolveMethodBind('GLTFDocument', 'get_root_node_mode', 948057992);

  int getRootNodeMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_root_node_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_map_mode =
      resolveMethodBind('GLTFDocument', 'set_texture_map_mode', 3144426102);

  void setTextureMapMode(int textureMapMode) {
    final arg0 = malloc<Int64>()..value = textureMapMode;
    try {
      ptrcallVoid(_mb_set_texture_map_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_map_mode =
      resolveMethodBind('GLTFDocument', 'get_texture_map_mode', 2113256994);

  int getTextureMapMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_map_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visibility_mode =
      resolveMethodBind('GLTFDocument', 'set_visibility_mode', 2803579218);

  void setVisibilityMode(int visibilityMode) {
    final arg0 = malloc<Int64>()..value = visibilityMode;
    try {
      ptrcallVoid(_mb_set_visibility_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_mode =
      resolveMethodBind('GLTFDocument', 'get_visibility_mode', 3885445962);

  int getVisibilityMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_visibility_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_append_from_file =
      resolveMethodBind('GLTFDocument', 'append_from_file', 866380864);

  int appendFromFile(String path, GLTFState state, int flags, String basePath) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Pointer<Void>>()..value = state.nativePtr;
    final arg2 = malloc<Int64>()..value = flags;
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg3.cast(), basePath);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_append_from_file, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      BuiltinMarshal.destroyGDString(arg3.cast());
      malloc.free(arg3);
    }
  }

  // Skipped append_from_buffer(): an argument type is unsupported.
  static final Pointer<Void> _mb_append_from_scene =
      resolveMethodBind('GLTFDocument', 'append_from_scene', 1622574258);

  int appendFromScene(Node node, GLTFState state, int flags) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    final arg1 = malloc<Pointer<Void>>()..value = state.nativePtr;
    final arg2 = malloc<Int64>()..value = flags;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_append_from_scene, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_generate_scene =
      resolveMethodBind('GLTFDocument', 'generate_scene', 596118388);

  Node? generateScene(GLTFState state, double bakeFps, bool trimming, bool removeImmutableTracks) {
    final arg0 = malloc<Pointer<Void>>()..value = state.nativePtr;
    final arg1 = malloc<Double>()..value = bakeFps;
    final arg2 = malloc<Uint8>()..value = trimming ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = removeImmutableTracks ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_generate_scene, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  // Skipped generate_buffer(): unsupported return type "PackedByteArray".
  static final Pointer<Void> _mb_write_to_filesystem =
      resolveMethodBind('GLTFDocument', 'write_to_filesystem', 1784551478);

  int writeToFilesystem(GLTFState state, String path) {
    final arg0 = malloc<Pointer<Void>>()..value = state.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_write_to_filesystem, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

}
