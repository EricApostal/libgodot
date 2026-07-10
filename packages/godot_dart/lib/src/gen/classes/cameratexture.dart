// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CameraTexture extends Texture2D {
  CameraTexture(super.nativePtr);

  /// Constructs a brand-new engine-owned CameraTexture instance
  /// (via classdb_construct_object3), not an existing one.
  factory CameraTexture.create() {
    return CameraTexture(resolveClassConstructor('CameraTexture'));
  }

  static final Pointer<Void> _mb_set_camera_feed_id =
      resolveMethodBind('CameraTexture', 'set_camera_feed_id', 1286410249);

  void setCameraFeedId(int feedId) {
    final arg0 = malloc<Int64>()..value = feedId;
    try {
      ptrcallVoid(_mb_set_camera_feed_id, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_feed_id =
      resolveMethodBind('CameraTexture', 'get_camera_feed_id', 3905245786);

  int getCameraFeedId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_camera_feed_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_which_feed =
      resolveMethodBind('CameraTexture', 'set_which_feed', 1595299230);

  void setWhichFeed(int whichFeed) {
    final arg0 = malloc<Int64>()..value = whichFeed;
    try {
      ptrcallVoid(_mb_set_which_feed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_which_feed =
      resolveMethodBind('CameraTexture', 'get_which_feed', 91039457);

  int getWhichFeed() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_which_feed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_camera_active =
      resolveMethodBind('CameraTexture', 'set_camera_active', 2586408642);

  void setCameraActive(bool active) {
    final arg0 = malloc<Uint8>()..value = active ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_camera_active, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_camera_active =
      resolveMethodBind('CameraTexture', 'get_camera_active', 36873697);

  bool getCameraActive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_camera_active, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
