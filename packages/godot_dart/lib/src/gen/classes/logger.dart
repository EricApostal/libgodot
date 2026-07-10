// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Logger extends RefCounted {
  Logger(super.nativePtr);

  /// Constructs a brand-new engine-owned Logger instance
  /// (via classdb_construct_object3), not an existing one.
  factory Logger.create() {
    return Logger(resolveClassConstructor('Logger'));
  }

  // Skipped virtual _log_error(): an argument type is unsupported ("typedarray::ScriptBacktrace").
  /// Override to hook into Godot's `_log_message` virtual.
  void logMessage(String message, bool error) {}

}
