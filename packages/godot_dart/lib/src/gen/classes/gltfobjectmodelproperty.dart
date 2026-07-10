// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFObjectModelProperty extends RefCounted {
  GLTFObjectModelProperty(super.nativePtr);

  // Skipped append_node_path(): an argument type is unsupported.
  // Skipped append_path_to_property(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_accessor_type =
      resolveMethodBind('GLTFObjectModelProperty', 'get_accessor_type', 1998183368);

  int getAccessorType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_accessor_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_gltf_to_godot_expression =
      resolveMethodBind('GLTFObjectModelProperty', 'get_gltf_to_godot_expression', 2240072449);

  Expression? getGltfToGodotExpression() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_gltf_to_godot_expression, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Expression(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_gltf_to_godot_expression =
      resolveMethodBind('GLTFObjectModelProperty', 'set_gltf_to_godot_expression', 1815845073);

  void setGltfToGodotExpression(Expression gltfToGodotExpr) {
    final arg0 = malloc<Pointer<Void>>()..value = gltfToGodotExpr.nativePtr;
    try {
      ptrcallVoid(_mb_set_gltf_to_godot_expression, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_godot_to_gltf_expression =
      resolveMethodBind('GLTFObjectModelProperty', 'get_godot_to_gltf_expression', 2240072449);

  Expression? getGodotToGltfExpression() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_godot_to_gltf_expression, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Expression(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_godot_to_gltf_expression =
      resolveMethodBind('GLTFObjectModelProperty', 'set_godot_to_gltf_expression', 1815845073);

  void setGodotToGltfExpression(Expression godotToGltfExpr) {
    final arg0 = malloc<Pointer<Void>>()..value = godotToGltfExpr.nativePtr;
    try {
      ptrcallVoid(_mb_set_godot_to_gltf_expression, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_node_paths(): unsupported return type "typedarray::NodePath".
  static final Pointer<Void> _mb_has_node_paths =
      resolveMethodBind('GLTFObjectModelProperty', 'has_node_paths', 36873697);

  bool hasNodePaths() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_node_paths, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_node_paths(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_object_model_type =
      resolveMethodBind('GLTFObjectModelProperty', 'get_object_model_type', 1094778507);

  int getObjectModelType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_object_model_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_object_model_type =
      resolveMethodBind('GLTFObjectModelProperty', 'set_object_model_type', 4108684086);

  void setObjectModelType(int type) {
    final arg0 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_object_model_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_json_pointers(): unsupported return type "typedarray::PackedStringArray".
  static final Pointer<Void> _mb_has_json_pointers =
      resolveMethodBind('GLTFObjectModelProperty', 'has_json_pointers', 36873697);

  bool hasJsonPointers() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_json_pointers, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped set_json_pointers(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_variant_type =
      resolveMethodBind('GLTFObjectModelProperty', 'get_variant_type', 3416842102);

  int getVariantType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_variant_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_variant_type =
      resolveMethodBind('GLTFObjectModelProperty', 'set_variant_type', 2887708385);

  void setVariantType(int variantType) {
    final arg0 = malloc<Int64>()..value = variantType;
    try {
      ptrcallVoid(_mb_set_variant_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_types =
      resolveMethodBind('GLTFObjectModelProperty', 'set_types', 4150728237);

  void setTypes(int variantType, int objModelType) {
    final arg0 = malloc<Int64>()..value = variantType;
    final arg1 = malloc<Int64>()..value = objModelType;
    try {
      ptrcallVoid(_mb_set_types, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
