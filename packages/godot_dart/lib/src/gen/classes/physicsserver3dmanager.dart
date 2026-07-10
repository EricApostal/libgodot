// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class PhysicsServer3DManager extends GodotObject {
  PhysicsServer3DManager(super.nativePtr);

  /// Constructs a brand-new engine-owned PhysicsServer3DManager instance
  /// (via classdb_construct_object3), not an existing one.
  factory PhysicsServer3DManager.create() {
    return PhysicsServer3DManager(resolveClassConstructor('PhysicsServer3DManager'));
  }

  // Skipped register_server(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_default_server =
      resolveMethodBind('PhysicsServer3DManager', 'set_default_server', 2956805083);

  void setDefaultServer(String name, int priority) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), name);
    final arg1 = malloc<Int64>()..value = priority;
    try {
      ptrcallVoid(_mb_set_default_server, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

}
