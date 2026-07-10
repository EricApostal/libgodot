// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GLTFPhysicsShape extends Resource {
  GLTFPhysicsShape(super.nativePtr);

  /// Constructs a brand-new engine-owned GLTFPhysicsShape instance
  /// (via classdb_construct_object3), not an existing one.
  factory GLTFPhysicsShape.create() {
    return GLTFPhysicsShape(resolveClassConstructor('GLTFPhysicsShape'));
  }

  static final Pointer<Void> _mb_to_node =
      resolveMethodBind('GLTFPhysicsShape', 'to_node', 563689933);

  CollisionShape3D? toNode(bool cacheShapes) {
    final arg0 = malloc<Uint8>()..value = cacheShapes ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_to_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CollisionShape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_to_resource =
      resolveMethodBind('GLTFPhysicsShape', 'to_resource', 1913542110);

  Shape3D? toResource(bool cacheShapes) {
    final arg0 = malloc<Uint8>()..value = cacheShapes ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_to_resource, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped to_dictionary(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_shape_type =
      resolveMethodBind('GLTFPhysicsShape', 'get_shape_type', 201670096);

  String getShapeType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_shape_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_shape_type =
      resolveMethodBind('GLTFPhysicsShape', 'set_shape_type', 83702148);

  void setShapeType(String shapeType) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), shapeType);
    try {
      ptrcallVoid(_mb_set_shape_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('GLTFPhysicsShape', 'get_size', 3360562783);

  Vector3 getSize() {
    try {
      final ret = malloc<Uint8>(Vector3.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector3.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('GLTFPhysicsShape', 'set_size', 3460891852);

  void setSize(Vector3 size) {
    final arg0 = malloc<Uint8>(Vector3.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_radius =
      resolveMethodBind('GLTFPhysicsShape', 'get_radius', 1740695150);

  double getRadius() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_radius, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_radius =
      resolveMethodBind('GLTFPhysicsShape', 'set_radius', 373806689);

  void setRadius(double radius) {
    final arg0 = malloc<Double>()..value = radius;
    try {
      ptrcallVoid(_mb_set_radius, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('GLTFPhysicsShape', 'get_height', 1740695150);

  double getHeight() {
    try {
      final ret = malloc<Double>();
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
      resolveMethodBind('GLTFPhysicsShape', 'set_height', 373806689);

  void setHeight(double height) {
    final arg0 = malloc<Double>()..value = height;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_is_trigger =
      resolveMethodBind('GLTFPhysicsShape', 'get_is_trigger', 36873697);

  bool getIsTrigger() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_trigger, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_is_trigger =
      resolveMethodBind('GLTFPhysicsShape', 'set_is_trigger', 2586408642);

  void setIsTrigger(bool isTrigger) {
    final arg0 = malloc<Uint8>()..value = isTrigger ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_is_trigger, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh_index =
      resolveMethodBind('GLTFPhysicsShape', 'get_mesh_index', 3905245786);

  int getMeshIndex() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mesh_index, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mesh_index =
      resolveMethodBind('GLTFPhysicsShape', 'set_mesh_index', 1286410249);

  void setMeshIndex(int meshIndex) {
    final arg0 = malloc<Int64>()..value = meshIndex;
    try {
      ptrcallVoid(_mb_set_mesh_index, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_importer_mesh =
      resolveMethodBind('GLTFPhysicsShape', 'get_importer_mesh', 3161779525);

  ImporterMesh? getImporterMesh() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_importer_mesh, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ImporterMesh(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_importer_mesh =
      resolveMethodBind('GLTFPhysicsShape', 'set_importer_mesh', 2255166972);

  void setImporterMesh(ImporterMesh importerMesh) {
    final arg0 = malloc<Pointer<Void>>()..value = importerMesh.nativePtr;
    try {
      ptrcallVoid(_mb_set_importer_mesh, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
