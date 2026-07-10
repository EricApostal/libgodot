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
//
// Engine *virtual* methods (is_virtual: true, e.g. Node's `_process`) get the
// same type-coverage treatment as regular methods, applied in the other
// direction: each one whose args/return classify as supported is stubbed as
// a real, public, no-op overridable Dart method on its declaring class (see
// `_tryEmitVirtualStub`), renamed off Godot's leading-underscore convention
// because a leading `_` would make it library-private and un-overridable
// from a consumer's own library. The per-virtual hash and marshaling shape
// needed to actually wire an override at runtime is written out to
// gen/virtuals.g.dart for godot_dart_builder's GodotClassGenerator to read -
// that table is the only place this data lives; nothing about which
// virtuals exist is hand-curated anywhere.
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
  final podZeroLiterals = _computePodZeroLiterals(_builtinClassesByName(api));
  _generateClasses(api, godotDartLib, podZeroLiterals);
}

// =============================================================================
// MARK: - POD builtins
// =============================================================================

Map<String, Map<String, dynamic>> _builtinClassesByName(Map<String, dynamic> api) {
  final offsetsEntry = (api['builtin_class_member_offsets'] as List)
      .cast<Map<String, dynamic>>()
      .firstWhere((e) => e['build_configuration'] == 'float_64');
  return {
    for (final c in (offsetsEntry['classes'] as List).cast<Map<String, dynamic>>()) c['name'] as String: c,
  };
}

void _generateBuiltins(Map<String, dynamic> api, String godotDartLib) {
  final classesByName = _builtinClassesByName(api);

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

/// A zero-valued Dart const-expression literal for each POD builtin (e.g.
/// `'Vector2': 'const Vector2(0.0, 0.0)'`), built recursively from each
/// type's own member list so nested builtins (Transform2D -> Vector2, ...)
/// resolve correctly. Used only as the auto-generated body of a virtual
/// method's no-op base-class stub (see `_tryEmitVirtualStub`) - never
/// observed at runtime unless a consumer's own override explicitly calls
/// `super.someVirtual()`.
Map<String, String> _computePodZeroLiterals(Map<String, Map<String, dynamic>> classesByName) {
  final result = <String, String>{};
  String literalFor(String typeName) {
    final cached = result[typeName];
    if (cached != null) return cached;
    final classJson = classesByName[typeName]!;
    final members = (classJson['members'] as List).cast<Map<String, dynamic>>();
    final fieldLiterals = members.map((m) {
      final meta = m['meta'] as String;
      if (meta == 'float') return '0.0';
      if (meta == 'int32') return '0';
      return literalFor(meta);
    }).join(', ');
    final literal = 'const $typeName($fieldLiterals)';
    result[typeName] = literal;
    return literal;
  }

  for (final name in _podBuiltins) {
    if (classesByName.containsKey(name)) literalFor(name);
  }
  return result;
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

/// A virtual method whose args/return classified as fully supported and was
/// stubbed on its declaring class - the data godot_dart_builder needs to
/// wire an override at runtime, once extracted into gen/virtuals.g.dart.
class _VirtualSpec {
  const _VirtualSpec({
    required this.godotName,
    required this.dartName,
    required this.hash,
    required this.args,
    required this.returnInfo,
  });
  final String godotName;
  final String dartName;
  final int hash;
  final List<_TypeInfo> args;
  final _TypeInfo? returnInfo;
}

void _generateClasses(Map<String, dynamic> api, String godotDartLib, Map<String, String> podZeroLiterals) {
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
  var totalVirtuals = 0, skippedVirtuals = 0;
  final virtualsByClass = <String, List<_VirtualSpec>>{};

  for (final classJson in ordered) {
    final className = classJson['name'] as String;
    final parentName = classJson['inherits'] as String?;
    final dartSuper = (parentName == null || parentName == _rootClassName || !done.contains(parentName))
        ? 'GodotObject'
        : parentName;

    final (code, emitted, skipped, virtualsEmitted, virtualsSkipped) =
        _generateClass(classJson, dartSuper, classNames, podZeroLiterals, virtualsByClass);
    totalMethods += emitted;
    skippedMethods += skipped;
    totalVirtuals += virtualsEmitted;
    skippedVirtuals += virtualsSkipped;
    if (emitted == 0 && virtualsEmitted == 0) emptyClasses++;

    File('${outDir.path}/${className.toLowerCase()}.dart').writeAsStringSync(code);
    barrel.writeln("export 'classes/${className.toLowerCase()}.dart';");
  }

  File('$godotDartLib/classes.g.dart').writeAsStringSync(barrel.toString());
  _writeVirtualsFile(godotDartLib, virtualsByClass);
  stdout.writeln('godot_api_gen: wrote ${ordered.length} classes '
      '($totalMethods methods emitted, $skippedMethods skipped, $emptyClasses classes with zero eligible methods; '
      '$totalVirtuals virtuals stubbed, $skippedVirtuals skipped)');
}

(String, int, int, int, int) _generateClass(
  Map<String, dynamic> classJson,
  String dartSuper,
  Set<String> classNames,
  Map<String, String> podZeroLiterals,
  Map<String, List<_VirtualSpec>> virtualsByClass,
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

  // Precompute which regular (non-virtual) methods will actually be emitted
  // below, so a virtual method's Dart name (stripped of its leading `_`) can
  // be checked against them - Godot's virtual and regular API surfaces
  // aren't disjoint after stripping (e.g. AudioStream declares both
  // `get_length()` and `_get_length()`), and a single class obviously can't
  // have two members with the same name.
  final regularDartNames = <String>{
    for (final m in methods)
      if (!(m['name'] as String).startsWith('_') &&
          m['is_vararg'] != true &&
          m['is_static'] != true &&
          m['hash'] != null)
        _sanitizeIdentifier(_camelCase(m['name'] as String)),
  };

  var emitted = 0, skipped = 0, virtualsEmitted = 0, virtualsSkipped = 0;
  final usedVirtualNames = <String>{};
  for (final method in methods) {
    final methodName = method['name'] as String;
    if (methodName.startsWith('_')) {
      final spec = _tryEmitVirtualStub(
          buffer, method, methodName, classNames, podZeroLiterals, regularDartNames, usedVirtualNames);
      if (spec != null) {
        virtualsByClass.putIfAbsent(className, () => []).add(spec);
        virtualsEmitted++;
      } else {
        virtualsSkipped++;
      }
      continue;
    }
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
  return (buffer.toString(), emitted, skipped, virtualsEmitted, virtualsSkipped);
}

/// Tries to stub [methodName] (an `is_virtual` method, still carrying its
/// leading `_`) as a real, public, no-op overridable Dart method on the
/// class currently being generated - written straight into [buffer] like
/// every other member. Returns the `_VirtualSpec` godot_dart_builder needs
/// to wire an override at runtime, or null (having written a `// Skipped`
/// comment explaining why) if the virtual can't be supported: an
/// unsupported arg/return type, no stable hash, vararg, or a Dart-name
/// collision with a member that's already claimed the name.
_VirtualSpec? _tryEmitVirtualStub(
  StringBuffer buffer,
  Map<String, dynamic> method,
  String methodName,
  Set<String> classNames,
  Map<String, String> podZeroLiterals,
  Set<String> regularDartNames,
  Set<String> usedVirtualNames,
) {
  if (method['is_vararg'] == true) {
    buffer.writeln('  // Skipped virtual $methodName(): vararg has no fixed ptrcall signature.');
    return null;
  }
  final hash = method['hash'] as int?;
  if (hash == null) {
    buffer.writeln('  // Skipped virtual $methodName(): no stable hash.');
    return null;
  }

  final returnInfo = method['return_value'] as Map<String, dynamic>?;
  final returnGodotType = returnInfo?['type'] as String?;
  final returnTypeInfo = returnGodotType == null ? null : _classify(returnGodotType, classNames);
  if (returnGodotType != null && returnTypeInfo == null) {
    buffer.writeln('  // Skipped virtual $methodName(): unsupported return type "$returnGodotType".');
    return null;
  }

  final arguments = (method['arguments'] as List?)?.cast<Map<String, dynamic>>() ?? const [];
  final argTypeInfos = <_TypeInfo>[];
  for (final arg in arguments) {
    final info = _classify(arg['type'] as String, classNames);
    if (info == null) {
      buffer.writeln('  // Skipped virtual $methodName(): an argument type is unsupported ("${arg['type']}").');
      return null;
    }
    argTypeInfos.add(info);
  }

  final dartName = _sanitizeIdentifier(_camelCase(methodName.replaceFirst(RegExp('^_+'), '')));
  if (regularDartNames.contains(dartName) || !usedVirtualNames.add(dartName)) {
    buffer.writeln('  // Skipped virtual $methodName(): dart name "$dartName" collides with an existing member.');
    return null;
  }

  final paramNames = <String>[];
  final paramList = StringBuffer();
  for (var i = 0; i < arguments.length; i++) {
    final pname = _sanitizeIdentifier(_camelCase(arguments[i]['name'] as String));
    paramNames.add(pname);
    if (i > 0) paramList.write(', ');
    paramList.write('${argTypeInfos[i].dartType} $pname');
  }

  final isObjectReturn = returnTypeInfo?.category == 'object';
  final dartReturnType =
      returnTypeInfo == null ? 'void' : (isObjectReturn ? '${returnTypeInfo.dartType}?' : returnTypeInfo.dartType);

  buffer.writeln("  /// Override to hook into Godot's `$methodName` virtual.");
  buffer.write('  $dartReturnType $dartName($paramList) ');
  if (returnTypeInfo == null) {
    buffer.writeln('{}');
  } else if (isObjectReturn) {
    buffer.writeln('=> null;');
  } else {
    // Non-nullable return: the auto-generated no-op body needs *some* value
    // of the right type to compile, only actually observed if a consumer's
    // own override explicitly calls `super.$dartName(...)`.
    final zeroLiteral = switch (returnTypeInfo.category) {
      'pod' => podZeroLiterals[returnTypeInfo.dartType]!,
      'string' || 'stringName' => "''",
      'bool' => 'false',
      'double' => '0.0',
      _ => '0',
    };
    buffer.writeln('=> $zeroLiteral;');
  }
  buffer.writeln();

  return _VirtualSpec(
    godotName: methodName,
    dartName: dartName,
    hash: hash,
    args: argTypeInfos,
    returnInfo: returnTypeInfo,
  );
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

/// Writes gen/virtuals.g.dart: the machine-derived (never hand-curated)
/// table godot_dart_builder's GodotClassGenerator reads to know, for a
/// virtual some consumer class actually overrides, the wire hash and native
/// ptrcall marshaling shape for its arguments/return.
void _writeVirtualsFile(String godotDartLib, Map<String, List<_VirtualSpec>> virtualsByClass) {
  final buffer = StringBuffer();
  buffer.writeln('// GENERATED CODE - do not edit by hand.');
  buffer.writeln('// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.');
  buffer.writeln('//');
  buffer.writeln('// Per-class metadata for engine virtual methods stubbed as real,');
  buffer.writeln('// overridable Dart methods on their declaring class in gen/classes/ (see');
  buffer.writeln('// the matching no-op method there). Consumed by godot_dart_builder\'s');
  buffer.writeln('// GodotClassGenerator to find, for a virtual some consumer class actually');
  buffer.writeln('// overrides, the wire hash and native ptrcall marshaling shape for its');
  buffer.writeln('// arguments/return - this table is the only place that data lives.');
  buffer.writeln('library;');
  buffer.writeln();
  buffer.writeln('/// Native ptrcall marshaling category for one virtual argument or return');
  buffer.writeln('/// value.');
  buffer.writeln('enum VirtualValueKind { double_, int_, bool_, pod, object, string, stringName }');
  buffer.writeln();
  buffer.writeln('/// One virtual argument or return value: its marshaling [kind], plus');
  buffer.writeln('/// [dartType] (the pod builtin or engine class name) for [VirtualValueKind.pod]');
  buffer.writeln('/// and [VirtualValueKind.object] - unused (empty) otherwise.');
  buffer.writeln('class VirtualValueSpec {');
  buffer.writeln("  const VirtualValueSpec(this.kind, [this.dartType = '']);");
  buffer.writeln('  final VirtualValueKind kind;');
  buffer.writeln('  final String dartType;');
  buffer.writeln('}');
  buffer.writeln();
  buffer.writeln('/// One engine virtual method: its Godot-side name (for StringName matching');
  buffer.writeln('/// against get_virtual_func), the public Dart method name it was renamed to,');
  buffer.writeln('/// its extension_api.json hash, and its marshaling shape.');
  buffer.writeln('class VirtualInfo {');
  buffer.writeln('  const VirtualInfo(this.godotName, this.dartName, this.hash, this.args, this.returnSpec);');
  buffer.writeln('  final String godotName;');
  buffer.writeln('  final String dartName;');
  buffer.writeln('  final int hash;');
  buffer.writeln('  final List<VirtualValueSpec> args;');
  buffer.writeln('  final VirtualValueSpec? returnSpec;');
  buffer.writeln('}');
  buffer.writeln();
  buffer.writeln('/// Engine class name -> the virtuals it declares (only its own, not');
  buffer.writeln('/// inherited ones - the generated class hierarchy in gen/classes/ already');
  buffer.writeln('/// carries those through normal Dart inheritance).');
  buffer.writeln('const Map<String, List<VirtualInfo>> engineVirtualsByClass = {');
  for (final entry in virtualsByClass.entries) {
    buffer.writeln("  '${entry.key}': [");
    for (final v in entry.value) {
      final argsExpr = v.args.map(_virtualValueSpecLiteral).join(', ');
      final returnExpr = v.returnInfo == null ? 'null' : _virtualValueSpecLiteral(v.returnInfo!);
      buffer.writeln("    VirtualInfo('${v.godotName}', '${v.dartName}', ${v.hash}, [$argsExpr], $returnExpr),");
    }
    buffer.writeln('  ],');
  }
  buffer.writeln('};');

  File('$godotDartLib/virtuals.g.dart').writeAsStringSync(buffer.toString());
}

String _virtualValueSpecLiteral(_TypeInfo info) {
  final kind = switch (info.category) {
    'double' => 'VirtualValueKind.double_',
    'int' => 'VirtualValueKind.int_',
    'bool' => 'VirtualValueKind.bool_',
    'pod' => 'VirtualValueKind.pod',
    'object' => 'VirtualValueKind.object',
    'string' => 'VirtualValueKind.string',
    'stringName' => 'VirtualValueKind.stringName',
    _ => throw StateError('unreachable: unknown category "${info.category}"'),
  };
  final needsDartType = info.category == 'pod' || info.category == 'object';
  return needsDartType ? "VirtualValueSpec($kind, '${info.dartType}')" : 'VirtualValueSpec($kind)';
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
