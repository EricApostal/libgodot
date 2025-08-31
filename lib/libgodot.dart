import 'dart:ffi';
import 'dart:io' show Platform, File, Directory;

import 'generated_bindings.dart';
import 'libgodot_platform_interface.dart';

/// Public API surface for the libgodot Dart plugin.
class Libgodot {
  Future<String?> getPlatformVersion() =>
      LibgodotPlatform.instance.getPlatformVersion();
}

/// Lazily loaded native bindings.
final NativeLibrary libgodotNative = _loadLibgodot();

NativeLibrary _loadLibgodot() {
  // Keep it very small & defensive: try a few common locations, then fall back.
  if (!Platform.isMacOS) {
    // Extend here for other desktop platforms when available.
    throw UnsupportedError(
      'libgodot native bindings only implemented for macOS yet',
    );
  }

  final name = 'libgodot.framework/libgodot';

  final execDir = File(Platform.resolvedExecutable).parent;
  final frameworksDir = Directory('${execDir.parent.path}/Frameworks');

  final full = File('${frameworksDir.path}/$name');

  final opened = DynamicLibrary.open(full.path);

  return NativeLibrary(opened);
}
