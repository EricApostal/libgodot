import 'package:flutter/material.dart';
import 'package:godot_dart/godot_dart.dart' hide Container;
import 'package:libgodot/libgodot.dart';

import 'godot_dart_init.g.dart';
import 'scene_root.dart';

void main() {
  // Registers every @GodotClass-annotated class (see spinning_controller.dart,
  // scene_root.dart, orbiting_body.dart) with GodotClassRegistry, so
  // GodotDartEntryPoint's init function knows about them once Godot boots.
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
    // Null projectPath boots an empty offscreen Godot instance without reading any
    // project.godot file or filesystem assets. The scene is created and attached
    // completely from Dart code inside onReady.
    projectPath: null,
    initialWidth: 640,
    initialHeight: 360,
    initFunctionAddress: GodotDartEntryPoint.nativeFunctionPointer.address,
    onReady: (controller) {
      final mainLoop = Engine.singleton.getMainLoop();
      if (mainLoop == null) return;
      final sceneTree = SceneTree(mainLoop.nativePtr);
      final parent = sceneTree.getCurrentScene() ?? sceneTree.getRoot();
      if (parent == null) return;

      final sceneRoot = InstanceRegistry.constructAndWrap<SceneRoot>(
        'SceneRoot',
      );
      if (sceneRoot != null) {
        parent.addChild(sceneRoot, false, 0);
      }
    },
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('we out here')),
        body: Column(
          children: [
            Expanded(
              child: Center(
                child: GodotView(controller: _controller, enableInput: true),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
