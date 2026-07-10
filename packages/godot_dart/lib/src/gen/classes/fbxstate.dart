// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FBXState extends GLTFState {
  FBXState(super.nativePtr);

  /// Constructs a brand-new engine-owned FBXState instance
  /// (via classdb_construct_object3), not an existing one.
  factory FBXState.create() {
    return FBXState(resolveClassConstructor('FBXState'));
  }

  static final Pointer<Void> _mb_get_allow_geometry_helper_nodes =
      resolveMethodBind('FBXState', 'get_allow_geometry_helper_nodes', 2240911060);

  bool getAllowGeometryHelperNodes() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_allow_geometry_helper_nodes, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_allow_geometry_helper_nodes =
      resolveMethodBind('FBXState', 'set_allow_geometry_helper_nodes', 2586408642);

  void setAllowGeometryHelperNodes(bool allow) {
    final arg0 = malloc<Uint8>()..value = allow ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_geometry_helper_nodes, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
