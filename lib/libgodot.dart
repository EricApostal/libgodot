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
  if (!Platform.isMacOS) {
    throw UnsupportedError(
      'libgodot native bindings only implemented for macOS yet',
    );
  }

  // Try to load from bundled assets/frameworks
  return _loadFromAssets();
}

// Synchronous fallback that searches in common locations
NativeLibrary _loadFromAssets() {
  // For now, let's try the direct approach by looking in common locations
  // where the dylib might be during development

  // Candidate relative names inside a macOS .app bundle (Flutter desktop layout).
  const candidateRelativePaths = <String>[
    // Resources directory in app bundle (this should work!)
    '../Resources/libgodot.macos.template_debug.dev.arm64.dylib',
    // Direct path to our copied dylib in assets (during development)
    '../../../assets/libgodot.macos.template_debug.dev.arm64.dylib',
    'assets/libgodot.macos.template_debug.dev.arm64.dylib',
    '../assets/libgodot.macos.template_debug.dev.arm64.dylib',
    // When shipped as a framework (preferred path if integrated as such).
    'Frameworks/libgodot.framework/libgodot',
    // If the raw dylib got copied next to the executable.
    'libgodot.macos.template_debug.dev.arm64.dylib',
    // If placed inside a bin/ folder (as Godot exports sometimes expect).
    'bin/libgodot.macos.template_debug.dev.arm64.dylib',
  ];

  final execFile = File(Platform.resolvedExecutable);
  final execDir = execFile.parent; // .../MyApp.app/Contents/MacOS
  final contentsDir = execDir.parent; // .../MyApp.app/Contents

  // Additional dev-time search roots (workspace run, tests, etc.).
  final extraRoots = <Directory>{
    execDir,
    contentsDir,
    Directory.current,
    // Add the example directory for development
    Directory(
      '/Users/eric/Documents/development/languages/dart/libgodot/example',
    ),
  };

  File? found;
  for (final root in extraRoots) {
    for (final rel in candidateRelativePaths) {
      final f = File('${root.path}/$rel');
      if (f.existsSync()) {
        found = f;
        break;
      }
    }
    if (found != null) break;
  }

  if (found == null) {
    throw StateError(
      'Unable to locate libgodot native library. Looked for: '
      '${candidateRelativePaths.join(', ')} relative to: '
      '${extraRoots.map((d) => d.path).join(' | ')}',
    );
  }

  final dylib = DynamicLibrary.open(found.path);
  return NativeLibrary(dylib);
}
