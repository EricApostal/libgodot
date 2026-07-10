import 'dart:io';

import 'package:flutter/material.dart';
import 'package:libgodot/libgodot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// The `flutter_assets` directory is unpacked as plain files next to the
  /// executable on Linux desktop builds, so the bundled Godot project can be
  /// pointed at directly with no extraction step.
  String get _godotProjectPath {
    final exeDir = File(Platform.resolvedExecutable).parent.path;
    return '$exeDir/data/flutter_assets/assets/godot_project';
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('libgodot: rotating cube')),
        body: Center(
          child: GodotView(projectPath: _godotProjectPath, width: 480, height: 270),
        ),
      ),
    );
  }
}
