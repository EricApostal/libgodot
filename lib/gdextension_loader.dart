import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart' show rootBundle;

/// Represents a staged (extracted) GDExtension descriptor + native library
/// copied from Flutter asset bundle into a real filesystem directory that
/// Godot can access.
class LoadedGDExtension {
  LoadedGDExtension({
    required this.directory,
    required this.descriptorPath,
    required this.libraryPath,
    required this.variantKey,
  });

  /// Directory containing the staged extension files.
  final Directory directory;

  /// Absolute path to the copied .gdextension descriptor file.
  final String descriptorPath;

  /// Absolute path to the native dynamic library referenced by the descriptor
  /// for the current platform/runtime variant.
  final String libraryPath;

  /// The libraries section key that was selected (e.g. `macos.debug`).
  final String variantKey;
}

/// Loads (stages) a Godot GDExtension descriptor + its platform-specific
/// dynamic library from Flutter assets into a temporary directory so the
/// embedded Godot runtime can discover & load it.
///
/// Typical usage:
///   final ext = await loadGDExtensionFromAssets(
///     descriptorAssetPath: 'assets/my_extension/my_extension.gdextension',
///   );
///   // Pass [ext.directory.path] as an extra search path if needed or rely
///   // on Godot's current working directory logic.
///
/// Assumptions / Simplifications:
///  * The `.gdextension` descriptor and its referenced binary (for the
///    current platform) are present in the Flutter asset bundle using the
///    same relative layout as authored.
///  * Only macOS variants are considered for now (extend switch for others).
///  * The libraries section follows standard Godot format, e.g.
///        [configuration]
///        entry_symbol = "my_extension_library_init"
///
///        [libraries]
///        macos.debug = "bin/libmy_extension.dylib"
///        macos.release = "bin/libmy_extension.dylib"
///
/// Returns a [LoadedGDExtension] describing where files were written.
/// Throws if anything is missing or cannot be parsed.
Future<LoadedGDExtension> loadGDExtensionFromAssets({
  required String descriptorAssetPath,
  String buildType = 'debug', // or 'release'
  Directory? targetRoot,
  bool overwriteIfExists = true,
}) async {
  // Read descriptor text from asset bundle.
  final descriptorBytes = await rootBundle.load(descriptorAssetPath);
  final descriptorText = utf8.decode(descriptorBytes.buffer.asUint8List());

  // Very small/loose parser for INI-like .gdextension file.
  final Map<String, Map<String, String>> sections = {};
  String currentSection = '';
  for (final rawLine in LineSplitter.split(descriptorText)) {
    final line = rawLine.trim();
    if (line.isEmpty || line.startsWith('#') || line.startsWith(';')) continue;
    if (line.startsWith('[') && line.endsWith(']')) {
      currentSection = line.substring(1, line.length - 1).trim();
      sections.putIfAbsent(currentSection, () => {});
      continue;
    }
    final eq = line.indexOf('=');
    if (eq == -1) continue; // Skip malformed.
    final key = line.substring(0, eq).trim();
    var value = line.substring(eq + 1).trim();
    // Strip a single pair of surrounding single or double quotes (simple case).
    if ((value.startsWith('"') && value.endsWith('"')) ||
        (value.startsWith("'") && value.endsWith("'"))) {
      if (value.length >= 2) {
        value = value.substring(1, value.length - 1);
      }
    }
    sections.putIfAbsent(currentSection, () => <String, String>{})[key] = value;
  }

  final libraries = sections['libraries'];
  if (libraries == null || libraries.isEmpty) {
    throw StateError(
      'Descriptor $descriptorAssetPath has no [libraries] section or it is empty',
    );
  }

  // Choose platform key.
  final platformBase = 'macos'; // Extend for other platforms later.
  final orderedCandidates = <String>[
    '$platformBase.$buildType',
    platformBase, // fallback (some descriptors just use platform)
    // Additional fallback forms can be added here.
  ];

  String? chosenKey;
  String? relativeLibPath;
  for (final c in orderedCandidates) {
    if (libraries.containsKey(c)) {
      chosenKey = c;
      relativeLibPath = libraries[c];
      break;
    }
  }
  if (chosenKey == null || relativeLibPath == null) {
    throw StateError(
      'No matching library entry found for platform="$platformBase" buildType="$buildType" in $descriptorAssetPath',
    );
  }

  // Determine staging directory.
  final root = targetRoot ?? await Directory.systemTemp.createTemp('gdext_');
  // Recreate original relative paths under staging root.
  final descriptorFile = File('${root.path}/$descriptorAssetPath');
  final libFile = File('${root.path}/${_normalizeRelative(relativeLibPath)}');

  // Ensure parent directories exist.
  await descriptorFile.parent.create(recursive: true);
  await libFile.parent.create(recursive: true);

  if (!overwriteIfExists && await descriptorFile.exists()) {
    // Fast path: assume also lib exists; validate.
    if (!await libFile.exists()) {
      throw StateError(
        'Descriptor already exists but library is missing at ${libFile.path}',
      );
    }
    return LoadedGDExtension(
      directory: root,
      descriptorPath: descriptorFile.path,
      libraryPath: libFile.path,
      variantKey: chosenKey,
    );
  }

  // Write descriptor file exactly as packaged.
  await descriptorFile.writeAsString(descriptorText);

  // Load the dynamic library asset bytes.
  final libAssetLogicalPath = _resolveSiblingAssetPath(
    descriptorAssetPath,
    relativeLibPath,
  );
  final libBytes = await rootBundle.load(libAssetLogicalPath);
  await libFile.writeAsBytes(libBytes.buffer.asUint8List());

  return LoadedGDExtension(
    directory: root,
    descriptorPath: descriptorFile.path,
    libraryPath: libFile.path,
    variantKey: chosenKey,
  );
}

/// Join descriptor directory and the relative library path (which may itself
/// contain `..` or be already relative to project root in simplest form).
String _resolveSiblingAssetPath(String descriptorAssetPath, String rel) {
  final descriptorDir = descriptorAssetPath.contains('/')
      ? descriptorAssetPath.substring(0, descriptorAssetPath.lastIndexOf('/'))
      : '';
  if (descriptorDir.isEmpty) return rel;
  return _normalizeRelative('$descriptorDir/$rel');
}

/// Normalize duplicate separators & remove leading './'. Keeps '..' segments
/// (we rely on asset packaging staying within allowed paths).
String _normalizeRelative(String p) {
  var out = p.replaceAll('\\', '/');
  out = out.replaceAll(RegExp(r'/+'), '/');
  if (out.startsWith('./')) out = out.substring(2);
  return out;
}
