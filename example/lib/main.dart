import 'dart:io';

import 'package:flutter/material.dart';
import 'package:godot_dart/godot_dart.dart';
import 'package:libgodot/libgodot.dart';

import 'godot_dart_init.g.dart';

void main() {
  // Registers every @GodotClass-annotated class (see spinning_controller.dart)
  // with GodotClassRegistry, so GodotDartEntryPoint's init function knows
  // about them once a Godot instance is created below.
  initializeGodotDartClasses();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final _controller = GodotController(
    projectPath: _godotProjectPath,
    initialWidth: 640,
    initialHeight: 360,
    initFunctionAddress: GodotDartEntryPoint.nativeFunctionPointer.address,
  );

  /// On Linux desktop builds the `flutter_assets` directory is unpacked as plain files next to
  /// the executable, so the bundled Godot project can be pointed at directly. On macOS it instead
  /// lives inside the app bundle's App.framework Resources. On Android this is unused: Godot's
  /// Android build always loads the project bundled into the APK's own assets (see
  /// example/android/app/src/main/assets/ and LibgodotPlugin.kt's class doc for why), rather than
  /// an arbitrary runtime path.
  String get _godotProjectPath {
    final exeDir = File(Platform.resolvedExecutable).parent.path;
    if (Platform.isMacOS) {
      final contentsDir = Directory(exeDir).parent.path;
      return '$contentsDir/Frameworks/App.framework/Resources/flutter_assets/assets/godot_project';
    }
    return '$exeDir/data/flutter_assets/assets/godot_project';
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('libgodot: all-Dart scene')),
        body: Center(child: GodotView(controller: _controller)),
      ),
    );
  }
}
