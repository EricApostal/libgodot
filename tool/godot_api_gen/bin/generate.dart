// Batch generator: reads extension_api.json and emits Dart wrapper classes
// for (nearly) every non-editor engine class, plus the POD builtin value
// types, into packages/godot_dart/lib/src/gen/.
//
// This is deliberately a plain `dart run` script, not a build_runner Builder:
// it's a one-shot transform of a single large vendored spec file into
// hundreds of output files, run on demand when the engine fork's API
// changes — not an incremental, per-source-file, edit-triggered build
// (that's what godot_dart_builder, a real Builder, is for).
//
// Type coverage (chosen by frequency across the whole API - see commit
// history/conversation for the analysis): primitives (float/int/bool),
// enums/bitfields (ptrcall as raw int64, matching godot-cpp's convention of
// encoding all enums that way), the 16 POD builtins (Vector2/3/4 + i variants,
// Color, Rect2/2i, Plane, Quaternion, AABB, Basis, Transform2D/3D, Projection),
// String, StringName, and Object-derived references. Together these cover
// ~82% of all argument/return type usages in the full API. Everything else
// (Array, Dictionary, Callable, Signal, RID, Packed*Array, Variant, NodePath,
// typed arrays) is skipped with a comment explaining why - broadening this is
// future work, not a limitation of the generator's structure.
//
// Also skipped: vararg methods (no fixed ptrcall signature), static methods
// (no instance to bind against in this generator's calling convention), and
// methods with no stable hash. Default argument values are not modeled -
// every generated parameter is required.
library;

import 'dart:convert';
import 'dart:io';

/// Godot type name -> Dart type name for the 16 POD builtins, in dependency
/// order (each only references earlier entries).
const List<String> _podBuiltins = [
  'Vector2', 'Vector2i', 'Vector3', 'Vector3i', 'Vector4', 'Vector4i', 'Color',
  'Rect2', 'Rect2i', 'Plane', 'Quaternion', 'AABB',
  'Basis', 'Transform2D', 'Transform3D', 'Projection',
];

/// Godot's own "Object" class would shadow dart:core's Object if generated
/// under that name; the hand-written GodotObject already fills that role, so
/// "Object" itself is never generated - every class with no parent (or whose
/// parent is "Object") extends GodotObject directly instead.
const String _rootClassName = 'Object';

void main(List<String> args) {
  final scriptDir = File.fromUri(Platform.script).parent.path;
  final apiPath = '$scriptDir/../api/extension_api.json';
  final api = jsonDecode(File(apiPath).readAsStringSync()) as Map<String, dynamic>;

  final precision = (api['header'] as Map<String, dynamic>)['precision'];
  if (precision != 'single') {
    stderr.writeln('godot_api_gen: expected header.precision == "single", got "$precision". '
        'POD builtin member types (real_t) and Variant size assumptions need re-checking.');
    exit(1);
  }

  final godotDartLib = '$scriptDir/../../../packages/godot_dart/lib/src/gen';
  _generateBuiltins(api, godotDartLib);
  _generateClasses(api, godotDartLib);
}

// =============================================================================
// MARK: - POD builtins
// =============================================================================

void _generateBuiltins(Map<String, dynamic> api, String godotDartLib) {
  final offsetsEntry = (api['builtin_class_member_offsets'] as List)
      .cast<Map<String, dynamic>>()
      .firstWhere((e) => e['build_configuration'] == 'float_64');
  final classesByName = <String, Map<String, dynamic>>{
    for (final c in (offsetsEntry['classes'] as List).cast<Map<String, dynamic>>()) c['name'] as String: c,
  };

  final outDir = Directory('$godotDartLib/builtins')..createSync(recursive: true);
  final barrel = StringBuffer();
  barrel.writeln('// GENERATED CODE - do not edit by hand.');
  barrel.writeln('library;');
  barrel.writeln();

  for (final name in _podBuiltins) {
    final classJson = classesByName[name];
    if (classJson == null) {
      stderr.writeln('godot_api_gen: warning: builtin "$name" not found in builtin_class_member_offsets, skipping.');
      continue;
    }
    final members = (classJson['members'] as List).cast<Map<String, dynamic>>();
    final code = _generateBuiltinClass(name, members);
    File('${outDir.path}/${name.toLowerCase()}.dart').writeAsStringSync(code);
    barrel.writeln("export 'builtins/${name.toLowerCase()}.dart';");
  }

  File('$godotDartLib/builtins.g.dart').writeAsStringSync(barrel.toString());
  stdout.writeln('godot_api_gen: wrote ${_podBuiltins.length} builtins + builtins.g.dart barrel');
}

/// Maps a member's `meta` type to (Dart field type, native FFI pointer type
/// for a single leaf read/write), or null if it's a nested builtin (handled
/// recursively via that builtin's own readFrom/writeTo).
const Map<String, (String, String)> _leafMemberTypes = {
  'float': ('double', 'Float'),
  'int32': ('int', 'Int32'),
};

String _generateBuiltinClass(String className, List<Map<String, dynamic>> members) {
  final buffer = StringBuffer();
  buffer.writeln('// GENERATED CODE - do not edit by hand.');
  buffer.writeln('// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.');
  buffer.writeln('library;');
  buffer.writeln();
  buffer.writeln("import 'dart:ffi';");
  buffer.writeln();

  // Import any nested builtin member types (e.g. Transform2D needs Vector2).
  final nestedTypes = members.map((m) => m['meta'] as String).where((t) => !_leafMemberTypes.containsKey(t)).toSet();
  for (final nested in nestedTypes) {
    buffer.writeln("import '${nested.toLowerCase()}.dart';");
  }
  buffer.writeln();

  final fieldNames = members.map((m) => m['member'] as String).toList();
  final ctorArgs = fieldNames.map((f) => 'this.$f').join(', ');

  buffer.writeln('final class $className {');
  buffer.writeln('  const $className($ctorArgs);');
  buffer.writeln();
  for (final m in members) {
    final meta = m['meta'] as String;
    final dartType = _leafMemberTypes[meta]?.$1 ?? meta;
    buffer.writeln('  final $dartType ${m['member']};');
  }
  buffer.writeln();

  final totalSize = _builtinSize(members);
  buffer.writeln('  static const int nativeSize = $totalSize;');
  buffer.writeln();

  buffer.writeln('  static $className readFrom(Pointer<Uint8> buf, int offset) {');
  buffer.writeln('    return $className(');
  for (final m in members) {
    final meta = m['meta'] as String;
    final offset = m['offset'];
    final leaf = _leafMemberTypes[meta];
    if (leaf != null) {
      buffer.writeln('      (buf + offset + $offset).cast<${leaf.$2}>().value,');
    } else {
      buffer.writeln('      $meta.readFrom(buf, offset + $offset),');
    }
  }
  buffer.writeln('    );');
  buffer.writeln('  }');
  buffer.writeln();

  buffer.writeln('  void writeTo(Pointer<Uint8> buf, int offset) {');
  for (final m in members) {
    final meta = m['meta'] as String;
    final offset = m['offset'];
    final leaf = _leafMemberTypes[meta];
    final fieldName = m['member'];
    if (leaf != null) {
      buffer.writeln('    (buf + offset + $offset).cast<${leaf.$2}>().value = $fieldName;');
    } else {
      buffer.writeln('    $fieldName.writeTo(buf, offset + $offset);');
    }
  }
  buffer.writeln('  }');
  buffer.writeln('}');
  return buffer.toString();
}

int _builtinSize(List<Map<String, dynamic>> members) {
  // Every POD builtin here is tightly packed with no trailing padding (per
  // the real offsets dumped from the engine), so size = last member's
  // offset + its own size.
  var maxEnd = 0;
  for (final m in members) {
    final meta = m['meta'] as String;
    final offset = m['offset'] as int;
    final leafSize = meta == 'float' || meta == 'int32' ? 4 : null;
    final end = offset + (leafSize ?? _podSizeOf(meta));
    if (end > maxEnd) maxEnd = end;
  }
  return maxEnd;
}

int _podSizeOf(String builtinName) {
  const sizes = {
    'Vector2': 8, 'Vector2i': 8, 'Vector3': 12, 'Vector3i': 12,
    'Vector4': 16, 'Vector4i': 16, 'Color': 16,
    'Rect2': 16, 'Rect2i': 16, 'Plane': 16, 'Quaternion': 16, 'AABB': 24,
    'Basis': 36, 'Transform2D': 24, 'Transform3D': 48, 'Projection': 64,
  };
  return sizes[builtinName]!;
}

// =============================================================================
// MARK: - Engine classes
// =============================================================================

class _TypeInfo {
  const _TypeInfo(this.dartType, this.category);
  final String dartType;
  // One of: 'double', 'int', 'bool', 'pod', 'object', 'string', 'stringName'.
  final String category;
}

_TypeInfo? _classify(String godotType, Set<String> classNames) {
  switch (godotType) {
    case 'float':
      return const _TypeInfo('double', 'double');
    case 'int':
      return const _TypeInfo('int', 'int');
    case 'bool':
      return const _TypeInfo('bool', 'bool');
    case 'String':
      return const _TypeInfo('String', 'string');
    case 'StringName':
      return const _TypeInfo('String', 'stringName');
  }
  if (godotType.startsWith('enum::') || godotType.startsWith('bitfield::')) {
    return const _TypeInfo('int', 'int');
  }
  if (_podBuiltins.contains(godotType)) {
    return _TypeInfo(godotType, 'pod');
  }
  if (classNames.contains(godotType)) {
    return _TypeInfo(godotType, 'object');
  }
  return null;
}

void _generateClasses(Map<String, dynamic> api, String godotDartLib) {
  final allClasses = (api['classes'] as List).cast<Map<String, dynamic>>();
  final selected = allClasses.where((c) => c['api_type'] != 'editor' && c['name'] != _rootClassName).toList();
  final classNames = {for (final c in selected) c['name'] as String};
  final byName = {for (final c in selected) c['name'] as String: c};

  // Topological order (parent before child) via simple repeated-pass
  // resolution - classes[] isn't guaranteed pre-sorted by inheritance.
  final ordered = <Map<String, dynamic>>[];
  final done = <String>{_rootClassName};
  var remaining = List.of(selected);
  while (remaining.isNotEmpty) {
    final next = <Map<String, dynamic>>[];
    for (final c in remaining) {
      final parent = c['inherits'] as String?;
      if (parent == null || done.contains(parent)) {
        ordered.add(c);
        done.add(c['name'] as String);
      } else {
        next.add(c);
      }
    }
    if (next.length == remaining.length) {
      // Cycle or missing parent (e.g. parent is an excluded editor-only
      // class) - fall back to GodotObject for the rest rather than looping
      // forever.
      for (final c in next) {
        ordered.add(c);
        done.add(c['name'] as String);
      }
      break;
    }
    remaining = next;
  }

  final outDir = Directory('$godotDartLib/classes')..createSync(recursive: true);
  final barrel = StringBuffer();
  barrel.writeln('// GENERATED CODE - do not edit by hand.');
  barrel.writeln('library;');
  barrel.writeln();

  var totalMethods = 0, skippedMethods = 0, emptyClasses = 0;

  for (final classJson in ordered) {
    final className = classJson['name'] as String;
    final parentName = classJson['inherits'] as String?;
    final dartSuper = (parentName == null || parentName == _rootClassName || !done.contains(parentName))
        ? 'GodotObject'
        : parentName;

    final (code, emitted, skipped) = _generateClass(classJson, dartSuper, classNames);
    totalMethods += emitted;
    skippedMethods += skipped;
    if (emitted == 0) emptyClasses++;

    File('${outDir.path}/${className.toLowerCase()}.dart').writeAsStringSync(code);
    barrel.writeln("export 'classes/${className.toLowerCase()}.dart';");
  }

  File('$godotDartLib/classes.g.dart').writeAsStringSync(barrel.toString());
  stdout.writeln('godot_api_gen: wrote ${ordered.length} classes '
      '($totalMethods methods emitted, $skippedMethods skipped, $emptyClasses classes with zero eligible methods)');
}

(String, int, int) _generateClass(
  Map<String, dynamic> classJson,
  String dartSuper,
  Set<String> classNames,
) {
  final className = classJson['name'] as String;
  final methods = (classJson['methods'] as List?)?.cast<Map<String, dynamic>>() ?? const [];

  final buffer = StringBuffer();
  buffer.writeln('// GENERATED CODE - do not edit by hand.');
  buffer.writeln('// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.');
  buffer.writeln('library;');
  buffer.writeln();
  buffer.writeln("import 'dart:ffi';");
  buffer.writeln();
  buffer.writeln("import 'package:ffi/ffi.dart';");
  buffer.writeln();
  buffer.writeln("import '../../runtime/builtin_marshal.dart';");
  buffer.writeln("import '../../runtime/godot_object.dart';");
  buffer.writeln("import '../builtins.g.dart';");
  buffer.writeln("import '../classes.g.dart';");
  buffer.writeln();
  buffer.writeln('class $className extends $dartSuper {');
  buffer.writeln('  $className(super.nativePtr);');
  buffer.writeln();

  if (classJson['is_instantiable'] == true) {
    buffer.writeln('  /// Constructs a brand-new engine-owned $className instance');
    buffer.writeln('  /// (via classdb_construct_object3), not an existing one.');
    buffer.writeln('  factory $className.create() {');
    buffer.writeln("    return $className(resolveClassConstructor('$className'));");
    buffer.writeln('  }');
    buffer.writeln();
  }

  var emitted = 0, skipped = 0;
  for (final method in methods) {
    final methodName = method['name'] as String;
    if (methodName.startsWith('_')) continue; // virtuals: overridden by consumers, not called directly here.
    if (method['is_vararg'] == true) continue; // no fixed ptrcall signature.
    if (method['is_static'] == true) continue; // no instance to bind against in this generator.
    final hash = method['hash'];
    if (hash == null) continue;

    final returnInfo = method['return_value'] as Map<String, dynamic>?;
    final returnGodotType = returnInfo == null ? 'void' : returnInfo['type'] as String;
    final returnTypeInfo = returnGodotType == 'void' ? null : _classify(returnGodotType, classNames);
    if (returnGodotType != 'void' && returnTypeInfo == null) {
      buffer.writeln('  // Skipped $methodName(): unsupported return type "$returnGodotType".');
      skipped++;
      continue;
    }

    final arguments = (method['arguments'] as List?)?.cast<Map<String, dynamic>>() ?? const [];
    final argTypeInfos = <_TypeInfo>[];
    var allArgsSupported = true;
    for (final arg in arguments) {
      final info = _classify(arg['type'] as String, classNames);
      if (info == null) {
        allArgsSupported = false;
        break;
      }
      argTypeInfos.add(info);
    }
    if (!allArgsSupported) {
      buffer.writeln('  // Skipped $methodName(): an argument type is unsupported.');
      skipped++;
      continue;
    }

    _emitMethod(buffer, className, methodName, hash as int, arguments, argTypeInfos, returnTypeInfo);
    emitted++;
  }

  buffer.writeln('}');
  return (buffer.toString(), emitted, skipped);
}

void _emitMethod(
  StringBuffer buffer,
  String className,
  String methodName,
  int hash,
  List<Map<String, dynamic>> arguments,
  List<_TypeInfo> argTypeInfos,
  _TypeInfo? returnTypeInfo,
) {
  final dartMethodName = _sanitizeIdentifier(_camelCase(methodName));
  final fieldName = '_mb_${methodName.replaceAll(RegExp('[^a-zA-Z0-9]'), '_')}';

  buffer.writeln('  static final Pointer<Void> $fieldName =');
  buffer.writeln("      resolveMethodBind('$className', '$methodName', $hash);");
  buffer.writeln();

  final isObjectReturn = returnTypeInfo?.category == 'object';
  final dartReturnType = returnTypeInfo == null
      ? 'void'
      : (isObjectReturn ? '${returnTypeInfo.dartType}?' : returnTypeInfo.dartType);

  final paramNames = <String>[];
  final paramList = StringBuffer();
  for (var i = 0; i < arguments.length; i++) {
    final arg = arguments[i];
    final pname = _sanitizeIdentifier(_camelCase(arg['name'] as String));
    paramNames.add(pname);
    if (i > 0) paramList.write(', ');
    paramList.write('${argTypeInfos[i].dartType} $pname');
  }

  buffer.writeln('  $dartReturnType $dartMethodName($paramList) {');

  // Allocate + write each argument into its ptrcall slot.
  final argVars = <String>[];
  for (var i = 0; i < arguments.length; i++) {
    final info = argTypeInfos[i];
    final pname = paramNames[i];
    final varName = 'arg$i';
    argVars.add(varName);
    switch (info.category) {
      case 'double':
        buffer.writeln('    final $varName = malloc<Double>()..value = $pname;');
      case 'int':
        buffer.writeln('    final $varName = malloc<Int64>()..value = $pname;');
      case 'bool':
        buffer.writeln('    final $varName = malloc<Uint8>()..value = $pname ? 1 : 0;');
      case 'pod':
        buffer.writeln('    final $varName = malloc<Uint8>(${info.dartType}.nativeSize);');
        buffer.writeln('    $pname.writeTo($varName, 0);');
      case 'object':
        buffer.writeln('    final $varName = malloc<Pointer<Void>>()..value = $pname.nativePtr;');
      case 'string':
        buffer.writeln('    final $varName = malloc<Uint8>(managedHandleSize);');
        buffer.writeln('    BuiltinMarshal.writeGDString($varName.cast(), $pname);');
      case 'stringName':
        buffer.writeln('    final $varName = malloc<Uint8>(managedHandleSize);');
        buffer.writeln('    BuiltinMarshal.writeStringName($varName.cast(), $pname);');
    }
  }

  buffer.writeln('    try {');
  final argListExpr = '[${argVars.map((v) => '$v.cast<Void>()').join(', ')}]';

  if (returnTypeInfo == null) {
    buffer.writeln('      ptrcallVoid($fieldName, nativePtr, $argListExpr);');
  } else if (returnTypeInfo.category == 'pod') {
    buffer.writeln('      final ret = malloc<Uint8>(${returnTypeInfo.dartType}.nativeSize);');
    buffer.writeln('      try {');
    buffer.writeln('        ptrcallWithReturn($fieldName, nativePtr, $argListExpr, ret.cast());');
    buffer.writeln('        return ${returnTypeInfo.dartType}.readFrom(ret, 0);');
    buffer.writeln('      } finally {');
    buffer.writeln('        malloc.free(ret);');
    buffer.writeln('      }');
  } else if (returnTypeInfo.category == 'object') {
    buffer.writeln('      final ret = malloc<Pointer<Void>>();');
    buffer.writeln('      try {');
    buffer.writeln('        ptrcallWithReturn($fieldName, nativePtr, $argListExpr, ret.cast());');
    buffer.writeln('        final resultPtr = ret.value;');
    buffer.writeln('        return resultPtr.address == 0 ? null : ${returnTypeInfo.dartType}(resultPtr);');
    buffer.writeln('      } finally {');
    buffer.writeln('        malloc.free(ret);');
    buffer.writeln('      }');
  } else if (returnTypeInfo.category == 'string' || returnTypeInfo.category == 'stringName') {
    final reader = returnTypeInfo.category == 'string' ? 'readGDString' : 'readStringName';
    final destroyer = returnTypeInfo.category == 'string' ? 'destroyGDString' : 'destroyStringName';
    buffer.writeln('      final ret = malloc<Uint8>(managedHandleSize);');
    buffer.writeln('      try {');
    buffer.writeln('        ptrcallWithReturn($fieldName, nativePtr, $argListExpr, ret.cast());');
    buffer.writeln('        final result = BuiltinMarshal.$reader(ret.cast());');
    buffer.writeln('        BuiltinMarshal.$destroyer(ret.cast());');
    buffer.writeln('        return result;');
    buffer.writeln('      } finally {');
    buffer.writeln('        malloc.free(ret);');
    buffer.writeln('      }');
  } else {
    // double/int/bool
    final nativeType = switch (returnTypeInfo.category) { 'double' => 'Double', 'bool' => 'Uint8', _ => 'Int64' };
    buffer.writeln('      final ret = malloc<$nativeType>();');
    buffer.writeln('      try {');
    buffer.writeln('        ptrcallWithReturn($fieldName, nativePtr, $argListExpr, ret.cast());');
    buffer.writeln('        return ret.value${returnTypeInfo.category == 'bool' ? ' != 0' : ''};');
    buffer.writeln('      } finally {');
    buffer.writeln('        malloc.free(ret);');
    buffer.writeln('      }');
  }

  buffer.writeln('    } finally {');
  for (var i = 0; i < arguments.length; i++) {
    final info = argTypeInfos[i];
    final varName = argVars[i];
    if (info.category == 'string') {
      buffer.writeln('      BuiltinMarshal.destroyGDString($varName.cast());');
    } else if (info.category == 'stringName') {
      buffer.writeln('      BuiltinMarshal.destroyStringName($varName.cast());');
    }
    buffer.writeln('      malloc.free($varName);');
  }
  buffer.writeln('    }');
  buffer.writeln('  }');
  buffer.writeln();
}

const Set<String> _dartReservedWords = {
  'abstract', 'as', 'assert', 'async', 'await', 'break', 'case', 'catch', 'class',
  'const', 'continue', 'covariant', 'default', 'deferred', 'do', 'dynamic', 'else',
  'enum', 'export', 'extends', 'extension', 'external', 'factory', 'false', 'final',
  'finally', 'for', 'function', 'get', 'hide', 'if', 'implements', 'import', 'in',
  'interface', 'is', 'library', 'mixin', 'new', 'null', 'on', 'operator', 'part',
  'required', 'rethrow', 'return', 'set', 'show', 'static', 'super', 'switch',
  'sync', 'this', 'throw', 'true', 'try', 'typedef', 'var', 'void', 'while', 'with', 'yield',
};

String _sanitizeIdentifier(String name) {
  if (_dartReservedWords.contains(name)) return '${name}_';
  if (name.isEmpty) return 'unnamed';
  return name;
}

String _camelCase(String snake) {
  final parts = snake.split('_');
  return parts.first + parts.skip(1).map((p) => p.isEmpty ? '' : p[0].toUpperCase() + p.substring(1)).join();
}
