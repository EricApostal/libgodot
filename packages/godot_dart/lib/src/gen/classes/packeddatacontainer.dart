// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PackedDataContainer extends Resource {
  PackedDataContainer(super.nativePtr);

  // Skipped pack(): an argument type is unsupported.
  static final Pointer<Void> _mb_size =
      resolveMethodBind('PackedDataContainer', 'size', 3905245786);

  int size() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
