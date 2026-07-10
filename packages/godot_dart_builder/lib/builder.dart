library;

import 'package:build/build.dart';
import 'package:source_gen/source_gen.dart';

import 'src/godot_class_generator.dart';
import 'src/init_aggregator_builder.dart';

Builder godotClassBuilder(BuilderOptions options) =>
    PartBuilder([GodotClassGenerator()], '.g.dart', header: '');

Builder godotDartInitBuilder(BuilderOptions options) => GodotDartInitBuilder();
