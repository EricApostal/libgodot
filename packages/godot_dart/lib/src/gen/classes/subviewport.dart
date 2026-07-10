// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SubViewport extends Viewport {
  SubViewport(super.nativePtr);

  /// Constructs a brand-new engine-owned SubViewport instance
  /// (via classdb_construct_object3), not an existing one.
  factory SubViewport.create() {
    return SubViewport(resolveClassConstructor('SubViewport'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('SubViewport', 'set_size', 1130785943);

  void setSize(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('SubViewport', 'get_size', 3690982128);

  Vector2i getSize() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size_2d_override =
      resolveMethodBind('SubViewport', 'set_size_2d_override', 1130785943);

  void setSize2dOverride(Vector2i size) {
    final arg0 = malloc<Uint8>(Vector2i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size_2d_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size_2d_override =
      resolveMethodBind('SubViewport', 'get_size_2d_override', 3690982128);

  Vector2i getSize2dOverride() {
    try {
      final ret = malloc<Uint8>(Vector2i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size_2d_override, nativePtr, [], ret.cast());
        return Vector2i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_size_2d_override_stretch =
      resolveMethodBind('SubViewport', 'set_size_2d_override_stretch', 2586408642);

  void setSize2dOverrideStretch(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_size_2d_override_stretch, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_size_2d_override_stretch_enabled =
      resolveMethodBind('SubViewport', 'is_size_2d_override_stretch_enabled', 36873697);

  bool isSize2dOverrideStretchEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_size_2d_override_stretch_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_view_count =
      resolveMethodBind('SubViewport', 'set_view_count', 1286410249);

  void setViewCount(int viewCount) {
    final arg0 = malloc<Int64>()..value = viewCount;
    try {
      ptrcallVoid(_mb_set_view_count, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_view_count =
      resolveMethodBind('SubViewport', 'get_view_count', 3905245786);

  int getViewCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_view_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_update_mode =
      resolveMethodBind('SubViewport', 'set_update_mode', 1295690030);

  void setUpdateMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_update_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_update_mode =
      resolveMethodBind('SubViewport', 'get_update_mode', 2980171553);

  int getUpdateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_update_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_clear_mode =
      resolveMethodBind('SubViewport', 'set_clear_mode', 2834454712);

  void setClearMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_clear_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_clear_mode =
      resolveMethodBind('SubViewport', 'get_clear_mode', 331324495);

  int getClearMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_clear_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
