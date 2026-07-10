// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Cubemap extends ImageTextureLayered {
  Cubemap(super.nativePtr);

  /// Constructs a brand-new engine-owned Cubemap instance
  /// (via classdb_construct_object3), not an existing one.
  factory Cubemap.create() {
    return Cubemap(resolveClassConstructor('Cubemap'));
  }

  static final Pointer<Void> _mb_create_placeholder =
      resolveMethodBind('Cubemap', 'create_placeholder', 121922552);

  Resource? createPlaceholder() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_placeholder, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Resource(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
