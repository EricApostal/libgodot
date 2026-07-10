// Generates the GDExtension registration/dispatch glue for a single
// @GodotClass-annotated Dart class: create_instance_func/free_instance_func,
// a get_virtual_func covering the small set of engine virtuals this Phase 1
// generator recognizes by name, and a registerXClass() function performing
// the actual classdb_register_extension_class6 call — all pure Dart FFI
// callbacks (Pointer.fromFunction), no native shim.
//
// Threading discipline: registerXClass() is only ever invoked, synchronously,
// from GodotClassRegistry.registerAll() inside the engine's `initialize`
// callback (see godot_instance.dart) — never deferred to a later turn.
library;

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:godot_dart/godot_dart.dart';
import 'package:source_gen/source_gen.dart';

/// Engine virtuals this Phase 1 generator can wire up as overrides, with
/// their real hash (from extension_api.json, Node._ready/_process) and
/// native ptrcall argument shape. Broadening this table to the full virtual
/// surface (and deriving it from extension_api.json instead of hand-curating
/// it here) is Phase 2 breadth work.
const Map<String, ({int hash, List<String> args})> _supportedVirtuals = {
  '_ready': (hash: 3218959716, args: []),
  '_process': (hash: 373806689, args: ['double']),
  '_physics_process': (hash: 373806689, args: ['double']),
};

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

    final overriddenVirtuals = _supportedVirtuals.keys
        .where((name) => element.methods.any((m) => m.name == name))
        .toList();

    return _emit(className, godotClassName, engineParentClassName, overriddenVirtuals);
  }
}

String _emit(
  String className,
  String godotClassName,
  String engineParentClassName,
  List<String> overriddenVirtuals,
) {
  final buffer = StringBuffer();

  buffer.writeln(
      "GDExtensionObjectPtr _create_$className(Pointer<Void> classUserdata, int notifyPostinitialize) {");
  buffer.writeln("  final obj = GodotApi.classdbConstructObject3(StringNameCache.intern('$engineParentClassName'));");
  buffer.writeln('  final token = InstanceRegistry.createToken();');
  buffer.writeln("  GodotApi.objectSetInstance(obj, StringNameCache.intern('$godotClassName'), token);");
  buffer.writeln('  final instance = $className(obj);');
  buffer.writeln('  InstanceRegistry.bind(token, instance);');
  buffer.writeln('  return obj;');
  buffer.writeln('}');
  buffer.writeln();

  buffer.writeln('void _free_$className(Pointer<Void> classUserdata, Pointer<Void> instanceToken) {');
  buffer.writeln('  InstanceRegistry.unbind(instanceToken);');
  buffer.writeln('}');
  buffer.writeln();

  for (final virtualName in overriddenVirtuals) {
    final virtual = _supportedVirtuals[virtualName]!;
    final trampolineName = '_callVirtual${_pascal(virtualName)}_$className';
    buffer.writeln(
        'void $trampolineName(Pointer<Void> instanceToken, Pointer<Pointer<Void>> args, Pointer<Void> rRet) {');
    buffer.writeln('  final self = InstanceRegistry.lookup<$className>(instanceToken);');
    buffer.writeln('  if (self == null) return;');
    if (virtual.args.isEmpty) {
      buffer.writeln('  self.$virtualName();');
    } else {
      // Only single-`double` virtuals are supported in Phase 1 (_process/_physics_process).
      buffer.writeln('  final arg0 = args[0].cast<Double>().value;');
      buffer.writeln('  self.$virtualName(arg0);');
    }
    buffer.writeln('}');
    buffer.writeln();
  }

  buffer.writeln('Pointer<NativeFunction<GDExtensionClassCallVirtualNative>> _getVirtual_$className(');
  buffer.writeln('    Pointer<Void> classUserdata, Pointer<Void> name, int hash) {');
  for (final virtualName in overriddenVirtuals) {
    final trampolineName = '_callVirtual${_pascal(virtualName)}_$className';
    buffer.writeln("  if (StringNameCache.identical(name, StringNameCache.intern('$virtualName'))) {");
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

String _pascal(String snakeWithLeadingUnderscore) {
  final parts = snakeWithLeadingUnderscore.split('_').where((p) => p.isNotEmpty);
  return parts.map((p) => p[0].toUpperCase() + p.substring(1)).join();
}
