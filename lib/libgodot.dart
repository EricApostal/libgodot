import 'dart:ffi';
import 'dart:io' show Platform, File, Directory, Process;
import 'package:flutter/services.dart';
import 'package:path/path.dart' as path;

import 'generated_bindings.dart';
import 'libgodot_platform_interface.dart';

/// Public API surface for the libgodot Dart plugin.
class Libgodot {
  Future<String?> getPlatformVersion() =>
      LibgodotPlatform.instance.getPlatformVersion();
}

/// Lazily loaded native bindings.
/// Note: This will be null until [initializeLibgodot] is called.
NativeLibrary? _libgodotNative;

/// Public getter for the native library.
/// Throws if [initializeLibgodot] hasn't been called yet.
NativeLibrary get libgodotNative {
  final lib = _libgodotNative;
  if (lib == null) {
    throw StateError(
      'libgodot not initialized. Call initializeLibgodot() first.',
    );
  }
  return lib;
}

/// Initialize the libgodot native library by extracting it from assets.
/// This must be called before using any libgodot functionality.
Future<void> initializeLibgodot() async {
  if (!Platform.isMacOS) {
    throw UnsupportedError(
      'libgodot native bindings only implemented for macOS yet',
    );
  }

  if (_libgodotNative != null) {
    return; // Already initialized
  }

  _libgodotNative = await _loadLibgodotFromAssets();
}

/// Load the libgodot dylib by extracting it from Flutter assets.
Future<NativeLibrary> _loadLibgodotFromAssets() async {
  // Get the app's temporary directory where we can write files
  final tempDir = Directory.systemTemp;
  final dylibName = 'libgodot.macos.template_debug.dev.arm64.dylib';
  final extractedFile = File(path.join(tempDir.path, 'libgodot', dylibName));

  // Create directory if it doesn't exist
  await extractedFile.parent.create(recursive: true);

  // Check if we already have the dylib extracted and it's newer than our app
  final assetKey = 'assets/$dylibName';
  bool shouldExtract = true;

  if (await extractedFile.exists()) {
    // For now, always re-extract to ensure we have the latest version
    // In production, you might want to check modification times or versions
    shouldExtract = true;
  }

  if (shouldExtract) {
    try {
      // Load the dylib from Flutter assets
      final assetData = await rootBundle.load(assetKey);
      final bytes = assetData.buffer.asUint8List();

      // Write to the temporary location
      await extractedFile.writeAsBytes(bytes);

      // Make it executable (important!)
      final result = await Process.run('chmod', ['+x', extractedFile.path]);
      if (result.exitCode != 0) {
        throw StateError('Failed to make dylib executable: ${result.stderr}');
      }
    } catch (e) {
      throw StateError(
        'Failed to extract libgodot dylib from assets: $e. '
        'Make sure $assetKey is listed in pubspec.yaml assets.',
      );
    }
  }

  // Now load the extracted dylib
  try {
    final dylib = DynamicLibrary.open(extractedFile.path);
    return NativeLibrary(dylib);
  } catch (e) {
    throw StateError(
      'Failed to load extracted libgodot dylib from ${extractedFile.path}: $e',
    );
  }
}
