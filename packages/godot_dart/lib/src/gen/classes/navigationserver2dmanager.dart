// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class NavigationServer2DManager extends GodotObject {
  NavigationServer2DManager(super.nativePtr);

  static NavigationServer2DManager? _singleton;
  static NavigationServer2DManager get singleton {
    return _singleton ??= NavigationServer2DManager(resolveSingleton('NavigationServer2DManager'));
  }

  /// Constructs a brand-new engine-owned NavigationServer2DManager instance
  /// (via classdb_construct_object3), not an existing one.
  factory NavigationServer2DManager.create() {
    return NavigationServer2DManager(resolveClassConstructor('NavigationServer2DManager'));
  }

  // Skipped register_server(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_default_server =
      resolveMethodBind('NavigationServer2DManager', 'set_default_server', 2956805083);

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
