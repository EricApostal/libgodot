// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFNode extends Resource {
  GLTFNode(super.nativePtr);

  static final Pointer<Void> _mb_get_original_name =
      resolveMethodBind('GLTFNode', 'get_original_name', 2841200299);

  String getOriginalName() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_original_name, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_original_name =
      resolveMethodBind('GLTFNode', 'set_original_name', 83702148);

  void setOriginalName(String originalName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), originalName);
    try {
      ptrcallVoid(_mb_set_original_name, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_parent =
      resolveMethodBind('GLTFNode', 'get_parent', 2455072627);

  int getParent() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_parent, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_parent =
      resolveMethodBind('GLTFNode', 'set_parent', 1286410249);

  void setParent(int parent) {
    final arg0 = malloc<Int64>()..value = parent;
    try {
      ptrcallVoid(_mb_set_parent, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('GLTFNode', 'get_height', 2455072627);

  int getHeight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_height, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('GLTFNode', 'set_height', 1286410249);

  void setHeight(int height) {
    final arg0 = malloc<Int64>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_xform =
      resolveMethodBind('GLTFNode', 'get_xform', 4183770049);

  Transform3D getXform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_xform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_xform =
      resolveMethodBind('GLTFNode', 'set_xform', 2952846383);

  void setXform(Transform3D xform) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    xform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_xform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh =
      resolveMethodBind('GLTFNode', 'get_mesh', 2455072627);

  int getMesh() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mesh, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mesh =
      resolveMethodBind('GLTFNode', 'set_mesh', 1286410249);

  void setMesh(int mesh) {
    final arg0 = malloc<Int64>()..value = mesh;
    try {
      ptrcallVoid(_mb_set_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera =
      resolveMethodBind('GLTFNode', 'get_camera', 2455072627);

  int getCamera() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_camera, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_camera =
      resolveMethodBind('GLTFNode', 'set_camera', 1286410249);

  void setCamera(int camera) {
    final arg0 = malloc<Int64>()..value = camera;
    try {
      ptrcallVoid(_mb_set_camera, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skin =
      resolveMethodBind('GLTFNode', 'get_skin', 2455072627);

  int getSkin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_skin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_skin =
      resolveMethodBind('GLTFNode', 'set_skin', 1286410249);

  void setSkin(int skin) {
    final arg0 = malloc<Int64>()..value = skin;
    try {
      ptrcallVoid(_mb_set_skin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_skeleton =
      resolveMethodBind('GLTFNode', 'get_skeleton', 2455072627);

  int getSkeleton() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_skeleton, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_skeleton =
      resolveMethodBind('GLTFNode', 'set_skeleton', 1286410249);

  void setSkeleton(int skeleton) {
    final arg0 = malloc<Int64>()..value = skeleton;
    try {
      ptrcallVoid(_mb_set_skeleton, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_position =
      resolveMethodBind('GLTFNode', 'get_position', 3783033775);

  Vector3 getPosition() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_position, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_position =
      resolveMethodBind('GLTFNode', 'set_position', 3460891852);

  void setPosition(Vector3 position) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_position, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_rotation =
      resolveMethodBind('GLTFNode', 'get_rotation', 2916281908);

  Quaternion getRotation() {
    try {
      final ret = malloc<Uint8>(Quaternion.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_rotation, nativePtr, [], ret.cast());
        return Quaternion.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_rotation =
      resolveMethodBind('GLTFNode', 'set_rotation', 1727505552);

  void setRotation(Quaternion rotation) {
    final arg0 = malloc<Uint8>(Quaternion.nativeSize);
    rotation.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_rotation, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scale =
      resolveMethodBind('GLTFNode', 'get_scale', 3783033775);

  Vector3 getScale() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_scale, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scale =
      resolveMethodBind('GLTFNode', 'set_scale', 3460891852);

  void setScale(Vector3 scale) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    scale.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_children(): unsupported return type "PackedInt32Array".
  // Skipped set_children(): an argument type is unsupported.
  static final Pointer<Void> _mb_append_child_index =
      resolveMethodBind('GLTFNode', 'append_child_index', 1286410249);

  void appendChildIndex(int childIndex) {
    final arg0 = malloc<Int64>()..value = childIndex;
    try {
      ptrcallVoid(_mb_append_child_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_light =
      resolveMethodBind('GLTFNode', 'get_light', 2455072627);

  int getLight() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_light, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_light =
      resolveMethodBind('GLTFNode', 'set_light', 1286410249);

  void setLight(int light) {
    final arg0 = malloc<Int64>()..value = light;
    try {
      ptrcallVoid(_mb_set_light, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visible =
      resolveMethodBind('GLTFNode', 'get_visible', 2240911060);

  bool getVisible() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_visible, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_visible =
      resolveMethodBind('GLTFNode', 'set_visible', 2586408642);

  void setVisible(bool visible) {
    final arg0 = malloc<Uint8>()..value = visible ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_visible, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_additional_data(): unsupported return type "Variant".
  // Skipped set_additional_data(): an argument type is unsupported.
  // Skipped get_scene_node_path(): unsupported return type "NodePath".
}
