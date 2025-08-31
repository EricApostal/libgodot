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

  // Candidates to try in order. Adjust names to match your actual framework/dylib.
  // 1. Directly vendored dynamic library name (if CocoaPods copied it to rpath).
  const dylibNames = <String>[
    'libgodot.dylib',
    // If the binary inside a framework has a different name, add it here.
  ];

  // 2. Framework binary inside app bundle Frameworks directory.
  const frameworkNames = <String>[
    'libgodot.framework/libgodot', // Standard case.
  ];

  DynamicLibrary? opened;

  // Try direct dylib names first (will search default locations inc. @rpath).
  for (final name in dylibNames) {
    try {
      opened = DynamicLibrary.open(name);
      break;
    } catch (_) {
      // Continue trying.
    }
  }

  // If still null, attempt to resolve inside the executable bundle.
  if (opened == null) {
    try {
      // Platform.resolvedExecutable -> .../MyApp.app/Contents/MacOS/MyApp
      final execDir = File(Platform.resolvedExecutable).parent; // .../MacOS
      final frameworksDir = Directory('${execDir.parent.path}/Frameworks');
      if (frameworksDir.existsSync()) {
        for (final f in frameworkNames) {
          final full = File('${frameworksDir.path}/$f');
          if (full.existsSync()) {
            try {
              opened = DynamicLibrary.open(full.path);
              break;
            } catch (_) {
              // keep trying
            }
          }
        }
      }
    } catch (_) {
      // Ignore and continue to fallback.
    }
  }

  // Final fallback: if linked statically into the process (static framework / archive).
  opened ??= DynamicLibrary.process();

  return NativeLibrary(opened);
}
