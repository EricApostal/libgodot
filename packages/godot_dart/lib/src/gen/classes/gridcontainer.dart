// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GridContainer extends Container {
  GridContainer(super.nativePtr);

  static final Pointer<Void> _mb_set_columns =
      resolveMethodBind('GridContainer', 'set_columns', 1286410249);

  void setColumns(int columns) {
    final arg0 = malloc<Int64>()..value = columns;
    try {
      ptrcallVoid(_mb_set_columns, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_columns =
      resolveMethodBind('GridContainer', 'get_columns', 3905245786);

  int getColumns() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_columns, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
