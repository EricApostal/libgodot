// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CollisionShape3D extends Node3D {
  CollisionShape3D(super.nativePtr);

  /// Constructs a brand-new engine-owned CollisionShape3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory CollisionShape3D.create() {
    return CollisionShape3D(resolveClassConstructor('CollisionShape3D'));
  }

  static final Pointer<Void> _mb_resource_changed =
      resolveMethodBind('CollisionShape3D', 'resource_changed', 968641751);

  void resourceChanged(Resource resource) {
    final arg0 = malloc<Pointer<Void>>()..value = resource.nativePtr;
    try {
      ptrcallVoid(_mb_resource_changed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_shape =
      resolveMethodBind('CollisionShape3D', 'set_shape', 1549710052);

  void setShape(Shape3D shape) {
    final arg0 = malloc<Pointer<Void>>()..value = shape.nativePtr;
    try {
      ptrcallVoid(_mb_set_shape, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_shape =
      resolveMethodBind('CollisionShape3D', 'get_shape', 3214262478);

  Shape3D? getShape() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_shape, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Shape3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disabled =
      resolveMethodBind('CollisionShape3D', 'set_disabled', 2586408642);

  void setDisabled(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_disabled =
      resolveMethodBind('CollisionShape3D', 'is_disabled', 36873697);

  bool isDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_make_convex_from_siblings =
      resolveMethodBind('CollisionShape3D', 'make_convex_from_siblings', 3218959716);

  void makeConvexFromSiblings() {
    try {
      ptrcallVoid(_mb_make_convex_from_siblings, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_color =
      resolveMethodBind('CollisionShape3D', 'set_debug_color', 2920490490);

  void setDebugColor(Color color) {
    final arg0 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_debug_color, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_color =
      resolveMethodBind('CollisionShape3D', 'get_debug_color', 3444240500);

  Color getDebugColor() {
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_debug_color, nativePtr, [], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_enable_debug_fill =
      resolveMethodBind('CollisionShape3D', 'set_enable_debug_fill', 2586408642);

  void setEnableDebugFill(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_enable_debug_fill, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_enable_debug_fill =
      resolveMethodBind('CollisionShape3D', 'get_enable_debug_fill', 36873697);

  bool getEnableDebugFill() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_enable_debug_fill, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
