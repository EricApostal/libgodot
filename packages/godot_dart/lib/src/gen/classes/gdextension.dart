// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GDExtension extends Resource {
  GDExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned GDExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory GDExtension.create() {
    return GDExtension(resolveClassConstructor('GDExtension'));
  }

  static final Pointer<Void> _mb_is_library_open =
      resolveMethodBind('GDExtension', 'is_library_open', 36873697);

  bool isLibraryOpen() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_library_open, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_minimum_library_initialization_level =
      resolveMethodBind('GDExtension', 'get_minimum_library_initialization_level', 964858755);

  int getMinimumLibraryInitializationLevel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_minimum_library_initialization_level, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
