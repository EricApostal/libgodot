// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RichTextEffect extends Resource {
  RichTextEffect(super.nativePtr);

  /// Constructs a brand-new engine-owned RichTextEffect instance
  /// (via classdb_construct_object3), not an existing one.
  factory RichTextEffect.create() {
    return RichTextEffect(resolveClassConstructor('RichTextEffect'));
  }

  /// Override to hook into Godot's `_process_custom_fx` virtual.
  bool processCustomFx(CharFXTransform charFx) => false;

}
