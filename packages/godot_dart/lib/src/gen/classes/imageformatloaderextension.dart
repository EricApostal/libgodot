// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ImageFormatLoaderExtension extends ImageFormatLoader {
  ImageFormatLoaderExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned ImageFormatLoaderExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory ImageFormatLoaderExtension.create() {
    return ImageFormatLoaderExtension(resolveClassConstructor('ImageFormatLoaderExtension'));
  }

  // Skipped virtual _get_recognized_extensions(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_load_image` virtual.
  int loadImage(Image image, FileAccess fileaccess, int flags, double scale) => 0;

  static final Pointer<Void> _mb_add_format_loader =
      resolveMethodBind('ImageFormatLoaderExtension', 'add_format_loader', 3218959716);

  void addFormatLoader() {
    try {
      ptrcallVoid(_mb_add_format_loader, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_remove_format_loader =
      resolveMethodBind('ImageFormatLoaderExtension', 'remove_format_loader', 3218959716);

  void removeFormatLoader() {
    try {
      ptrcallVoid(_mb_remove_format_loader, nativePtr, []);
    } finally {
    }
  }

}
