// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FoldableGroup extends Resource {
  FoldableGroup(super.nativePtr);

  static final Pointer<Void> _mb_get_expanded_container =
      resolveMethodBind('FoldableGroup', 'get_expanded_container', 1427441056);

  FoldableContainer? getExpandedContainer() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_expanded_container, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : FoldableContainer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_containers(): unsupported return type "typedarray::FoldableContainer".
  static final Pointer<Void> _mb_set_allow_folding_all =
      resolveMethodBind('FoldableGroup', 'set_allow_folding_all', 2586408642);

  void setAllowFoldingAll(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_allow_folding_all, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_allow_folding_all =
      resolveMethodBind('FoldableGroup', 'is_allow_folding_all', 36873697);

  bool isAllowFoldingAll() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_allow_folding_all, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
