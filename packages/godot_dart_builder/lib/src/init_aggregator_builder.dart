// Scans the whole package for @GodotClass-annotated classes and emits one
// aggregator file (lib/godot_dart_init.g.dart) calling each class's
// generated registerXWithRegistry() function, plus a single
// initializeGodotDartClasses() entry point apps call once at startup.
//
// This exists because Dart top-level declarations are lazily initialized —
// merely importing a generated part file does not guarantee its
// registration code runs. An explicit, generated call site is the standard
// build_runner answer to that (the same shape as e.g. injectable's
// configureDependencies()).
library;

import 'dart:async';

import 'package:analyzer/dart/element/element.dart';
import 'package:build/build.dart';
import 'package:glob/glob.dart';
import 'package:godot_dart/godot_dart.dart';
import 'package:source_gen/source_gen.dart';

class GodotDartInitBuilder implements Builder {
  @override
  Map<String, List<String>> get buildExtensions => {
        r'$lib$': ['godot_dart_init.g.dart'],
      };

  @override
  Future<void> build(BuildStep buildStep) async {
    final checker = TypeChecker.fromRuntime(GodotClass);
    final annotatedClassNames = <String>[];
    final importUris = <String>{};

    await for (final input in buildStep.findAssets(Glob('lib/**.dart'))) {
      if (input.path.endsWith('.g.dart')) continue;
      if (!await buildStep.resolver.isLibrary(input)) continue;

      final library = await buildStep.resolver.libraryFor(input);
      for (final classElement in library.topLevelElements.whereType<ClassElement>()) {
        if (checker.hasAnnotationOf(classElement)) {
          annotatedClassNames.add(classElement.name);
          importUris.add(input.path.replaceFirst('lib/', ''));
        }
      }
    }

    final buffer = StringBuffer();
    buffer.writeln('// GENERATED CODE - do not edit by hand.');
    buffer.writeln('// Produced by godot_dart_builder\'s GodotDartInitBuilder.');
    buffer.writeln('library;');
    buffer.writeln();
    for (final uri in importUris) {
      buffer.writeln("import '$uri';");
    }
    buffer.writeln();
    buffer.writeln('/// Registers every @GodotClass-annotated class this package/app defines.');
    buffer.writeln('/// Call this once, before creating a Godot instance that should be able to');
    buffer.writeln('/// see these classes (e.g. right before Libgodot.createInstance).');
    buffer.writeln('void initializeGodotDartClasses() {');
    for (final className in annotatedClassNames) {
      buffer.writeln('  register${className}WithRegistry();');
    }
    buffer.writeln('}');

    await buildStep.writeAsString(
      AssetId(buildStep.inputId.package, 'lib/godot_dart_init.g.dart'),
      buffer.toString(),
    );
  }
}
