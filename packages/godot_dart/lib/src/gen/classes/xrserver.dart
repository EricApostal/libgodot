// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class XRServer extends GodotObject {
  XRServer(super.nativePtr);

  static XRServer? _singleton;
  static XRServer get singleton {
    return _singleton ??= XRServer(resolveSingleton('XRServer'));
  }

  /// Constructs a brand-new engine-owned XRServer instance
  /// (via classdb_construct_object3), not an existing one.
  factory XRServer.create() {
    return XRServer(resolveClassConstructor('XRServer'));
  }

  static final Pointer<Void> _mb_get_world_scale =
      resolveMethodBind('XRServer', 'get_world_scale', 1740695150);

  double getWorldScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_world_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_world_scale =
      resolveMethodBind('XRServer', 'set_world_scale', 373806689);

  void setWorldScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_world_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_world_origin =
      resolveMethodBind('XRServer', 'get_world_origin', 3229777777);

  Transform3D getWorldOrigin() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_world_origin, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_world_origin =
      resolveMethodBind('XRServer', 'set_world_origin', 2952846383);

  void setWorldOrigin(Transform3D worldOrigin) {
    final arg0 = malloc<Uint8>(Transform3D.nativeSize);
    worldOrigin.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_world_origin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_reference_frame =
      resolveMethodBind('XRServer', 'get_reference_frame', 3229777777);

  Transform3D getReferenceFrame() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_reference_frame, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_clear_reference_frame =
      resolveMethodBind('XRServer', 'clear_reference_frame', 3218959716);

  void clearReferenceFrame() {
    try {
      ptrcallVoid(_mb_clear_reference_frame, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_center_on_hmd =
      resolveMethodBind('XRServer', 'center_on_hmd', 1450904707);

  void centerOnHmd(int rotationMode, bool keepHeight) {
    final arg0 = malloc<Int64>()..value = rotationMode;
    final arg1 = malloc<Uint8>()..value = keepHeight ? 1 : 0;
    try {
      ptrcallVoid(_mb_center_on_hmd, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_hmd_transform =
      resolveMethodBind('XRServer', 'get_hmd_transform', 4183770049);

  Transform3D getHmdTransform() {
    try {
      final ret = malloc<Uint8>(Transform3D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_hmd_transform, nativePtr, [], ret.cast());
        return Transform3D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_camera_locked_to_origin =
      resolveMethodBind('XRServer', 'set_camera_locked_to_origin', 2586408642);

  void setCameraLockedToOrigin(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_camera_locked_to_origin, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_camera_locked_to_origin =
      resolveMethodBind('XRServer', 'is_camera_locked_to_origin', 36873697);

  bool isCameraLockedToOrigin() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_camera_locked_to_origin, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_interface =
      resolveMethodBind('XRServer', 'add_interface', 1898711491);

  void addInterface(XRInterface interface_) {
    final arg0 = malloc<Pointer<Void>>()..value = interface_.nativePtr;
    try {
      ptrcallVoid(_mb_add_interface, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interface_count =
      resolveMethodBind('XRServer', 'get_interface_count', 3905245786);

  int getInterfaceCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_interface_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_remove_interface =
      resolveMethodBind('XRServer', 'remove_interface', 1898711491);

  void removeInterface(XRInterface interface_) {
    final arg0 = malloc<Pointer<Void>>()..value = interface_.nativePtr;
    try {
      ptrcallVoid(_mb_remove_interface, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_interface =
      resolveMethodBind('XRServer', 'get_interface', 4237347919);

  XRInterface? getInterface(int idx) {
    final arg0 = malloc<Int64>()..value = idx;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_interface, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : XRInterface(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_interfaces(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_find_interface =
      resolveMethodBind('XRServer', 'find_interface', 1395192955);

  XRInterface? findInterface(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_interface, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : XRInterface(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_add_tracker =
      resolveMethodBind('XRServer', 'add_tracker', 684804553);

  void addTracker(XRTracker tracker) {
    final arg0 = malloc<Pointer<Void>>()..value = tracker.nativePtr;
    try {
      ptrcallVoid(_mb_add_tracker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_tracker =
      resolveMethodBind('XRServer', 'remove_tracker', 684804553);

  void removeTracker(XRTracker tracker) {
    final arg0 = malloc<Pointer<Void>>()..value = tracker.nativePtr;
    try {
      ptrcallVoid(_mb_remove_tracker, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_trackers(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_tracker =
      resolveMethodBind('XRServer', 'get_tracker', 147382240);

  XRTracker? getTracker(String trackerName) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), trackerName);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_tracker, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : XRTracker(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_primary_interface =
      resolveMethodBind('XRServer', 'get_primary_interface', 2143545064);

  XRInterface? getPrimaryInterface() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_primary_interface, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : XRInterface(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_primary_interface =
      resolveMethodBind('XRServer', 'set_primary_interface', 1898711491);

  void setPrimaryInterface(XRInterface interface_) {
    final arg0 = malloc<Pointer<Void>>()..value = interface_.nativePtr;
    try {
      ptrcallVoid(_mb_set_primary_interface, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
