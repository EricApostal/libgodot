// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PlaceholderTexture3D extends Texture3D {
  PlaceholderTexture3D(super.nativePtr);

  /// Constructs a brand-new engine-owned PlaceholderTexture3D instance
  /// (via classdb_construct_object3), not an existing one.
  factory PlaceholderTexture3D.create() {
    return PlaceholderTexture3D(resolveClassConstructor('PlaceholderTexture3D'));
  }

  static final Pointer<Void> _mb_set_size =
      resolveMethodBind('PlaceholderTexture3D', 'set_size', 560364750);

  void setSize(Vector3i size) {
    final arg0 = malloc<Uint8>(Vector3i.nativeSize);
    size.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_size =
      resolveMethodBind('PlaceholderTexture3D', 'get_size', 2785653706);

  Vector3i getSize() {
    try {
      final ret = malloc<Uint8>(Vector3i.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_size, nativePtr, [], ret.cast());
        return Vector3i.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
