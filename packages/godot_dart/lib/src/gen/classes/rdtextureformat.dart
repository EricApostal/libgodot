// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RDTextureFormat extends RefCounted {
  RDTextureFormat(super.nativePtr);

  /// Constructs a brand-new engine-owned RDTextureFormat instance
  /// (via classdb_construct_object3), not an existing one.
  factory RDTextureFormat.create() {
    return RDTextureFormat(resolveClassConstructor('RDTextureFormat'));
  }

  static final Pointer<Void> _mb_set_format =
      resolveMethodBind('RDTextureFormat', 'set_format', 565531219);

  void setFormat(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_format =
      resolveMethodBind('RDTextureFormat', 'get_format', 2235804183);

  int getFormat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_format, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_width =
      resolveMethodBind('RDTextureFormat', 'set_width', 1286410249);

  void setWidth(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_width, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_width =
      resolveMethodBind('RDTextureFormat', 'get_width', 3905245786);

  int getWidth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_width, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_height =
      resolveMethodBind('RDTextureFormat', 'set_height', 1286410249);

  void setHeight(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_height, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_height =
      resolveMethodBind('RDTextureFormat', 'get_height', 3905245786);

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

  static final Pointer<Void> _mb_set_depth =
      resolveMethodBind('RDTextureFormat', 'set_depth', 1286410249);

  void setDepth(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_depth, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_depth =
      resolveMethodBind('RDTextureFormat', 'get_depth', 3905245786);

  int getDepth() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_depth, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_array_layers =
      resolveMethodBind('RDTextureFormat', 'set_array_layers', 1286410249);

  void setArrayLayers(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_array_layers, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_array_layers =
      resolveMethodBind('RDTextureFormat', 'get_array_layers', 3905245786);

  int getArrayLayers() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_array_layers, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mipmaps =
      resolveMethodBind('RDTextureFormat', 'set_mipmaps', 1286410249);

  void setMipmaps(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_mipmaps, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mipmaps =
      resolveMethodBind('RDTextureFormat', 'get_mipmaps', 3905245786);

  int getMipmaps() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_mipmaps, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_type =
      resolveMethodBind('RDTextureFormat', 'set_texture_type', 652343381);

  void setTextureType(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_texture_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_type =
      resolveMethodBind('RDTextureFormat', 'get_texture_type', 4036357416);

  int getTextureType() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_texture_type, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_samples =
      resolveMethodBind('RDTextureFormat', 'set_samples', 3774171498);

  void setSamples(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_samples, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_samples =
      resolveMethodBind('RDTextureFormat', 'get_samples', 407791724);

  int getSamples() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_samples, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_usage_bits =
      resolveMethodBind('RDTextureFormat', 'set_usage_bits', 245642367);

  void setUsageBits(int pMember) {
    final arg0 = malloc<Int64>()..value = pMember;
    try {
      ptrcallVoid(_mb_set_usage_bits, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_usage_bits =
      resolveMethodBind('RDTextureFormat', 'get_usage_bits', 1313398998);

  int getUsageBits() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_usage_bits, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_is_resolve_buffer =
      resolveMethodBind('RDTextureFormat', 'set_is_resolve_buffer', 2586408642);

  void setIsResolveBuffer(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_is_resolve_buffer, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_is_resolve_buffer =
      resolveMethodBind('RDTextureFormat', 'get_is_resolve_buffer', 36873697);

  bool getIsResolveBuffer() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_resolve_buffer, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_is_discardable =
      resolveMethodBind('RDTextureFormat', 'set_is_discardable', 2586408642);

  void setIsDiscardable(bool pMember) {
    final arg0 = malloc<Uint8>()..value = pMember ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_is_discardable, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_is_discardable =
      resolveMethodBind('RDTextureFormat', 'get_is_discardable', 36873697);

  bool getIsDiscardable() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_is_discardable, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_shareable_format =
      resolveMethodBind('RDTextureFormat', 'add_shareable_format', 565531219);

  void addShareableFormat(int format) {
    final arg0 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_add_shareable_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_shareable_format =
      resolveMethodBind('RDTextureFormat', 'remove_shareable_format', 565531219);

  void removeShareableFormat(int format) {
    final arg0 = malloc<Int64>()..value = format;
    try {
      ptrcallVoid(_mb_remove_shareable_format, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
