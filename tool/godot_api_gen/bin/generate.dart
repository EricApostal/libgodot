// Batch generator: reads extension_api.json and emits Dart wrapper classes
// for a hand-picked set of engine classes into
// packages/godot_dart/lib/src/gen/classes/.
//
// This is deliberately a plain `dart run` script, not a build_runner Builder:
// it's a one-shot transform of a single large vendored spec file into
// hundreds of potential output files, run on demand when the engine fork's
// API changes — not an incremental, per-source-file, edit-triggered build
// (that's what godot_dart_builder, a real Builder, is for — see its
// annotation-driven per-app class registration instead).
//
// Phase 1 scope: only methods whose every argument and return type is in
// _supportedTypes are emitted (ptrcall raw-pointer marshaling for float/int/
// bool only); everything else is skipped with a comment explaining why.
// Broadening _supportedTypes (String, Vector2/3, Object references, enums)
// is Phase 2 breadth work, not a limitation of this generator's structure.
library;

import 'dart:convert';
import 'dart:io';

/// Godot type name -> (Dart type, GDExtensionVariantType constant name,
/// native FFI pointer type used to marshal a single raw ptrcall value).
const Map<String, (String dartType, String variantTypeConst, String nativeType)> _supportedTypes = {
  'float': ('double', 'GDExtensionVariantType.float', 'Double'),
  'int': ('int', 'GDExtensionVariantType.int_', 'Int64'),
  'bool': ('bool', 'GDExtensionVariantType.boolType', 'Uint8'),
};

/// Classes to generate wrappers for. Each is generated as `class X extends
/// GodotObject` directly (not threading through the real engine inheritance
/// chain yet — Object/Node/CanvasItem intermediates are Phase 2 breadth
/// work); this is enough for Dart-authored classes extending them to be
/// registered with the right *engine-side* parent (that's a string passed to
/// classdb_register_extension_class6, independent of Dart's own hierarchy).
const List<String> _targetClasses = ['Node3D', 'MeshInstance3D'];

/// Manual override for which *Dart* class each target extends, when the
/// real engine parent (per extension_api.json's `inherits`) isn't itself a
/// target class — e.g. MeshInstance3D's real chain is
/// MeshInstance3D -> GeometryInstance3D -> VisualInstance3D -> Node3D, but
/// we only generate Node3D, so MeshInstance3D extends it directly in Dart to
/// still get rotate_x/rotate_y/etc. This only affects the generated Dart
/// hierarchy, not the actual engine class registered for a subclass (that
/// comes from the *Dart* superclass's runtime type name regardless, so a
/// Dart-authored class extending MeshInstance3D here still correctly
/// registers "MeshInstance3D" as its engine parent).
const Map<String, String> _dartSuperclassOverrides = {
  'MeshInstance3D': 'Node3D',
};

void main(List<String> args) {
  final scriptDir = File.fromUri(Platform.script).parent.path;
  final apiPath = '$scriptDir/../api/extension_api.json';
  final api = jsonDecode(File(apiPath).readAsStringSync()) as Map<String, dynamic>;

  final precision = (api['header'] as Map<String, dynamic>)['precision'];
  if (precision != 'single') {
    stderr.writeln('godot_api_gen: expected header.precision == "single", got "$precision". '
        'Variant size assumptions (variantSize = 24) in variant_marshal.dart need re-checking.');
    exit(1);
  }

  final classes = (api['classes'] as List).cast<Map<String, dynamic>>();
  final outDir = Directory('$scriptDir/../../../packages/godot_dart/lib/src/gen/classes');
  outDir.createSync(recursive: true);

  for (final className in _targetClasses) {
    final classJson = classes.firstWhere(
      (c) => c['name'] == className,
      orElse: () => throw StateError('godot_api_gen: class "$className" not found in extension_api.json'),
    );
    final code = _generateClass(classJson);
    final outFile = File('${outDir.path}/${className.toLowerCase()}.dart');
    outFile.writeAsStringSync(code);
    stdout.writeln('godot_api_gen: wrote ${outFile.path}');
  }
}

String _generateClass(Map<String, dynamic> classJson) {
  final className = classJson['name'] as String;
  final methods = (classJson['methods'] as List?)?.cast<Map<String, dynamic>>() ?? const [];

  final buffer = StringBuffer();
  buffer.writeln('// GENERATED CODE - do not edit by hand.');
  buffer.writeln('// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.');
  buffer.writeln('//');
  buffer.writeln('// Phase 1 scope: extends GodotObject directly (not the real Node/CanvasItem');
  buffer.writeln('// chain yet) and only emits methods whose args/return are float/int/bool.');
  buffer.writeln('library;');
  buffer.writeln();
  buffer.writeln("import 'dart:ffi';");
  buffer.writeln();
  buffer.writeln("import 'package:ffi/ffi.dart';");
  buffer.writeln();

  buffer.writeln("import '../../runtime/godot_object.dart';");
  final dartSuper = _dartSuperclassOverrides[className];
  if (dartSuper != null) {
    buffer.writeln("import '${dartSuper.toLowerCase()}.dart';");
  }
  buffer.writeln();
  buffer.writeln('class $className extends ${dartSuper ?? 'GodotObject'} {');
  buffer.writeln('  $className(super.nativePtr);');
  buffer.writeln();

  var emitted = 0;
  for (final method in methods) {
    final methodName = method['name'] as String;
    if (methodName.startsWith('_')) continue; // virtuals handled separately by consumers overriding them.
    final hash = method['hash'];
    if (hash == null) continue; // no stable hash (e.g. a vararg/editor-only method) - skip for now.

    final returnInfo = method['return_value'] as Map<String, dynamic>?;
    final returnType = returnInfo == null ? 'void' : returnInfo['type'] as String;
    if (returnType != 'void' && !_supportedTypes.containsKey(returnType)) {
      buffer.writeln('  // Skipped $methodName(): unsupported return type "$returnType" (Phase 2 breadth work).');
      continue;
    }

    final arguments = (method['arguments'] as List?)?.cast<Map<String, dynamic>>() ?? const [];
    var allArgsSupported = true;
    for (final arg in arguments) {
      if (!_supportedTypes.containsKey(arg['type'])) {
        allArgsSupported = false;
        break;
      }
    }
    if (!allArgsSupported) {
      buffer.writeln('  // Skipped $methodName(): an argument type is unsupported (Phase 2 breadth work).');
      continue;
    }

    _emitMethod(buffer, className, methodName, hash as int, arguments, returnType);
    emitted++;
  }

  buffer.writeln('}');

  if (emitted == 0) {
    stderr.writeln('godot_api_gen: warning: $className had no eligible methods to emit.');
  }
  return buffer.toString();
}

void _emitMethod(
  StringBuffer buffer,
  String className,
  String methodName,
  int hash,
  List<Map<String, dynamic>> arguments,
  String returnType,
) {
  final dartMethodName = _camelCase(methodName);
  final fieldName = '_mb_${methodName.replaceAll(RegExp('[^a-zA-Z0-9]'), '_')}';

  buffer.writeln('  static final Pointer<Void> $fieldName =');
  buffer.writeln("      resolveMethodBind('$className', '$methodName', $hash);");
  buffer.writeln();

  final dartReturnType = returnType == 'void' ? 'void' : _supportedTypes[returnType]!.$1;
  final paramList = arguments
      .map((a) => '${_supportedTypes[a['type']]!.$1} ${_camelCase(a['name'] as String)}')
      .join(', ');

  buffer.writeln('  $dartReturnType $dartMethodName($paramList) {');

  final argVars = <String>[];
  for (var i = 0; i < arguments.length; i++) {
    final arg = arguments[i];
    final nativeType = _supportedTypes[arg['type']]!.$3;
    final varName = 'arg$i';
    buffer.writeln('    final $varName = malloc<$nativeType>()..value = ${_camelCase(arg['name'] as String)}${arg['type'] == 'bool' ? ' ? 1 : 0' : ''};');
    argVars.add(varName);
  }

  if (returnType == 'void') {
    buffer.writeln('    try {');
    buffer.writeln('      ptrcallVoid($fieldName, nativePtr, [${argVars.map((v) => '$v.cast()').join(', ')}]);');
    buffer.writeln('    } finally {');
    for (final v in argVars) {
      buffer.writeln('      malloc.free($v);');
    }
    buffer.writeln('    }');
  } else {
    final nativeReturnType = _supportedTypes[returnType]!.$3;
    buffer.writeln('    final ret = malloc<$nativeReturnType>();');
    buffer.writeln('    try {');
    buffer.writeln('      ptrcallWithReturn($fieldName, nativePtr, [${argVars.map((v) => '$v.cast()').join(', ')}], ret.cast());');
    buffer.writeln('      return ret.value${returnType == 'bool' ? ' != 0' : ''};');
    buffer.writeln('    } finally {');
    buffer.writeln('      malloc.free(ret);');
    for (final v in argVars) {
      buffer.writeln('      malloc.free($v);');
    }
    buffer.writeln('    }');
  }

  buffer.writeln('  }');
  buffer.writeln();
}

String _camelCase(String snake) {
  final parts = snake.split('_');
  return parts.first + parts.skip(1).map((p) => p.isEmpty ? '' : p[0].toUpperCase() + p.substring(1)).join();
}

String _snakeCase(String pascal) {
  final buffer = StringBuffer();
  for (var i = 0; i < pascal.length; i++) {
    final char = pascal[i];
    if (char.toUpperCase() == char && char.toLowerCase() != char && i > 0) {
      buffer.write('_');
    }
    buffer.write(char.toLowerCase());
  }
  return buffer.toString();
}
