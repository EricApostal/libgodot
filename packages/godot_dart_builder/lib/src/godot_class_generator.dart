// Generates the GDExtension registration/dispatch glue for a single
// @GodotClass-annotated Dart class: create_instance_func/free_instance_func,
// a get_virtual_func covering whichever engine virtuals the annotated
// class's Dart hierarchy actually overrides, and a registerXClass()
// function performing the actual classdb_register_extension_class6 call —
// all pure Dart FFI callbacks (Pointer.fromFunction), no native shim.
//
// Which virtuals exist and how to marshal their arguments/return isn't
// hand-curated here: it's read straight out of godot_dart's generated
// `engineVirtualsByClass` table (gen/virtuals.g.dart, itself derived from
// extension_api.json by tool/godot_api_gen). This generator's only job is
// to (a) find which of those virtuals the annotated class's Dart supertype
// chain actually overrides, via the analyzer, and (b) emit a trampoline
// that unmarshals native ptrcall args, calls the override, and marshals the
// return back, generically per VirtualValueSpec - not specific to any one
// virtual's name or shape.
//
// Threading discipline: registerXClass() is only ever invoked, synchronously,
// from GodotClassRegistry.registerAll() inside the engine's `initialize`
// callback (see godot_instance.dart) — never deferred to a later turn.
library;

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:godot_dart/godot_dart.dart';
import 'package:source_gen/source_gen.dart';

class GodotClassGenerator extends GeneratorForAnnotation<GodotClass> {
  @override
  String? generateForAnnotatedElement(Element element, ConstantReader annotation, BuildStep buildStep) {
    if (element is! ClassElement) {
      throw InvalidGenerationSourceError('@GodotClass can only be applied to classes.', element: element);
    }

    final className = element.name;
    final nameField = annotation.peek('name');
    final godotClassName =
        (nameField != null && !nameField.isNull) ? nameField.stringValue : className;

    final superElement = element.supertype?.element;
    final engineParentClassName = superElement?.name ?? 'Node';

    final overriddenVirtuals =
        _candidateVirtuals(element).where((v) => _overridesVirtual(element, v.dartName)).toList();

    return _emit(className, godotClassName, engineParentClassName, overriddenVirtuals);
  }
}

/// Every virtual declared anywhere in [element]'s ancestor chain (Dart
/// `extends`, which mirrors Godot's own `inherits` chain 1:1 by
/// construction - see tool/godot_api_gen), regardless of whether [element]
/// actually overrides it. Deduplicated by Godot name: a linear inheritance
/// chain can't declare the same virtual twice, but this stays defensive
/// against that rather than assuming it.
List<VirtualInfo> _candidateVirtuals(ClassElement element) {
  final result = <VirtualInfo>[];
  final seenGodotNames = <String>{};
  for (final supertype in element.allSupertypes) {
    final infos = engineVirtualsByClass[supertype.element.name];
    if (infos == null) continue;
    for (final info in infos) {
      if (seenGodotNames.add(info.godotName)) result.add(info);
    }
  }
  return result;
}

/// Whether [element] or any of its Dart superclasses up to (but not
/// including) the generated godot_dart engine wrapper actually overrides
/// [dartMethodName] - i.e. whether some consumer-authored class in the
/// hierarchy re-declares it, as opposed to only inheriting the base
/// wrapper's own no-op declaration. Walking the full supertype chain (rather
/// than just `element.methods`, which only sees methods declared directly
/// on the annotated class) means an override two or more levels up a
/// consumer's own class hierarchy is still detected correctly.
bool _overridesVirtual(ClassElement element, String dartMethodName) {
  ClassElement? current = element;
  while (current != null) {
    final uri = current.library.source.uri;
    final isEngineWrapperClass = uri.scheme == 'package' && uri.pathSegments.firstOrNull == 'godot_dart';
    if (isEngineWrapperClass) return false;
    if (current.methods.any((m) => m.name == dartMethodName)) return true;
    current = current.supertype?.element as ClassElement?;
  }
  return false;
}

String _emit(
  String className,
  String godotClassName,
  String engineParentClassName,
  List<VirtualInfo> overriddenVirtuals,
) {
  final buffer = StringBuffer();

  buffer.writeln(
      "GDExtensionObjectPtr _create_$className(Pointer<Void> classUserdata, int notifyPostinitialize) {");
  buffer.writeln("  final obj = GodotApi.classdbConstructObject3(StringNameCache.intern('$engineParentClassName'));");
  buffer.writeln('  final token = InstanceRegistry.createToken();');
  buffer.writeln("  GodotApi.objectSetInstance(obj, StringNameCache.intern('$godotClassName'), token);");
  buffer.writeln('  final instance = $className(obj);');
  buffer.writeln('  InstanceRegistry.bind(token, instance, obj);');
  buffer.writeln('  return obj;');

  buffer.writeln('}');
  buffer.writeln();

  buffer.writeln('void _free_$className(Pointer<Void> classUserdata, Pointer<Void> instanceToken) {');
  buffer.writeln('  InstanceRegistry.unbind(instanceToken);');
  buffer.writeln('}');
  buffer.writeln();

  for (final virtual in overriddenVirtuals) {
    final trampolineName = '_callVirtual${_pascal(virtual.dartName)}_$className';
    buffer.writeln(
        'void $trampolineName(Pointer<Void> instanceToken, Pointer<Pointer<Void>> args, Pointer<Void> rRet) {');
    buffer.writeln('  final self = InstanceRegistry.lookup<$className>(instanceToken);');
    buffer.writeln('  if (self == null) return;');

    final argVars = <String>[];
    for (var i = 0; i < virtual.args.length; i++) {
      final varName = 'arg$i';
      argVars.add(varName);
      buffer.writeln('  ${_unmarshalVirtualArg(virtual.args[i], i, varName)}');
    }
    final callExpr = 'self.${virtual.dartName}(${argVars.join(', ')})';
    final returnSpec = virtual.returnSpec;
    if (returnSpec == null) {
      buffer.writeln('  $callExpr;');
    } else {
      buffer.writeln('  final result = $callExpr;');
      buffer.writeln('  ${_marshalVirtualReturn(returnSpec)}');
    }
    buffer.writeln('}');
    buffer.writeln();
  }

  buffer.writeln('Pointer<NativeFunction<GDExtensionClassCallVirtualNative>> _getVirtual_$className(');
  buffer.writeln('    Pointer<Void> classUserdata, Pointer<Void> name, int hash) {');
  for (final virtual in overriddenVirtuals) {
    final trampolineName = '_callVirtual${_pascal(virtual.dartName)}_$className';
    buffer.writeln(
        "  if (StringNameCache.identical(name, StringNameCache.intern('${virtual.godotName}')) && hash == ${virtual.hash}) {");
    buffer.writeln(
        '    return Pointer.fromFunction<GDExtensionClassCallVirtualNative>($trampolineName);');
    buffer.writeln('  }');
  }
  buffer.writeln('  return nullptr;');
  buffer.writeln('}');
  buffer.writeln();

  buffer.writeln('void _register${className}Class() {');
  buffer.writeln('  final info = malloc<GDExtensionClassCreationInfo6>();');
  buffer.writeln('  info.ref');
  buffer.writeln('    ..isVirtual = 0');
  buffer.writeln('    ..isAbstract = 0');
  buffer.writeln('    ..isExposed = 1');
  buffer.writeln('    ..isRuntime = 0');
  buffer.writeln('    ..iconPath = nullptr');
  buffer.writeln('    ..setFunc = nullptr');
  buffer.writeln('    ..getFunc = nullptr');
  buffer.writeln('    ..getPropertyListFunc = nullptr');
  buffer.writeln('    ..freePropertyListFunc = nullptr');
  buffer.writeln('    ..propertyCanRevertFunc = nullptr');
  buffer.writeln('    ..propertyGetRevertFunc = nullptr');
  buffer.writeln('    ..validatePropertyFunc = nullptr');
  buffer.writeln('    ..notificationFunc = nullptr');
  buffer.writeln('    ..toStringFunc = nullptr');
  buffer.writeln('    ..referenceFunc = nullptr');
  buffer.writeln('    ..unreferenceFunc = nullptr');
  buffer.writeln(
      '    ..createInstanceFunc = Pointer.fromFunction<GDExtensionClassCreateInstance3Native>(_create_$className).cast()');
  buffer.writeln(
      '    ..freeInstanceFunc = Pointer.fromFunction<GDExtensionClassFreeInstanceNative>(_free_$className).cast()');
  buffer.writeln('    ..recreateInstanceFunc = nullptr');
  buffer.writeln(
      '    ..getVirtualFunc = Pointer.fromFunction<GDExtensionClassGetVirtual2Native>(_getVirtual_$className).cast()');
  buffer.writeln('    ..getVirtualCallDataFunc = nullptr');
  buffer.writeln('    ..callVirtualWithDataFunc = nullptr');
  buffer.writeln('    ..classUserdata = nullptr;');
  buffer.writeln('  GodotApi.classdbRegisterExtensionClass6(');
  buffer.writeln('    GodotApi.library,');
  buffer.writeln("    StringNameCache.intern('$godotClassName'),");
  buffer.writeln("    StringNameCache.intern('$engineParentClassName'),");
  buffer.writeln('    info,');
  buffer.writeln('  );');
  buffer.writeln('  malloc.free(info);');
  buffer.writeln('}');
  buffer.writeln();
  buffer.writeln('void register${className}WithRegistry() {');
  buffer.writeln('  GodotClassRegistry.register(_register${className}Class);');
  buffer.writeln('}');

  return buffer.toString();
}

/// Native ptrcall unmarshaling for one virtual-call argument at [args][index],
/// generic over [spec]'s category - mirrors, in the read direction,
/// tool/godot_api_gen's argument-writing code for regular outgoing calls.
String _unmarshalVirtualArg(VirtualValueSpec spec, int index, String varName) {
  return switch (spec.kind) {
    VirtualValueKind.double_ => 'final $varName = args[$index].cast<Double>().value;',
    VirtualValueKind.int_ => 'final $varName = args[$index].cast<Int64>().value;',
    VirtualValueKind.bool_ => 'final $varName = args[$index].cast<Uint8>().value != 0;',
    VirtualValueKind.pod => 'final $varName = ${spec.dartType}.readFrom(args[$index].cast(), 0);',
    VirtualValueKind.object => 'final $varName = ${spec.dartType}(args[$index].cast<Pointer<Void>>().value);',
    VirtualValueKind.string => 'final $varName = BuiltinMarshal.readGDString(args[$index].cast());',
    VirtualValueKind.stringName => 'final $varName = BuiltinMarshal.readStringName(args[$index].cast());',
  };
}

/// Native ptrcall marshaling of a virtual override's return value into
/// `rRet`, generic over [spec]'s category - mirrors, in the write direction,
/// tool/godot_api_gen's return-reading code for regular outgoing calls.
String _marshalVirtualReturn(VirtualValueSpec spec) {
  return switch (spec.kind) {
    VirtualValueKind.double_ => 'rRet.cast<Double>().value = result;',
    VirtualValueKind.int_ => 'rRet.cast<Int64>().value = result;',
    VirtualValueKind.bool_ => 'rRet.cast<Uint8>().value = result ? 1 : 0;',
    VirtualValueKind.pod => 'result.writeTo(rRet.cast(), 0);',
    VirtualValueKind.object => 'rRet.cast<Pointer<Void>>().value = result?.nativePtr ?? nullptr;',
    VirtualValueKind.string => 'BuiltinMarshal.writeGDString(rRet.cast(), result);',
    VirtualValueKind.stringName => 'BuiltinMarshal.writeStringName(rRet.cast(), result);',
  };
}

String _pascal(String snakeWithLeadingUnderscore) {
  final parts = snakeWithLeadingUnderscore.split('_').where((p) => p.isNotEmpty);
  return parts.map((p) => p[0].toUpperCase() + p.substring(1)).join();
}
