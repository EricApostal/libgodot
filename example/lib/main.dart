import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:libgodot/libgodot.dart';
import 'package:libgodot/godot_instance.dart';
import 'dart:io' show Platform;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String _platformVersion = 'Unknown';
  final _libgodotPlugin = Libgodot();

  @override
  void initState() {
    super.initState();
    // Create a Godot instance (minimal) on startup.
    try {
      final instance = createGodotInstance();
      print('Godot instance created: valid=${instance.isValid}');
    } catch (e, st) {
      print('Failed to create Godot instance: $e\n$st');
    }
    // initPlatformState(); // Existing example logic.
  }

  // Platform messages are asynchronous, so we initialize in an async method.
  Future<void> initPlatformState() async {
    String platformVersion;
    // Platform messages may fail, so we use a try/catch PlatformException.
    // We also handle the message potentially returning null.
    try {
      platformVersion =
          await _libgodotPlugin.getPlatformVersion() ??
          'Unknown platform version';
    } on PlatformException {
      platformVersion = 'Failed to get platform version.';
    }

    // If the widget was removed from the tree while the asynchronous platform
    // message was in flight, we want to discard the reply rather than calling
    // setState to update our non-existent appearance.
    if (!mounted) return;

    setState(() {
      _platformVersion = platformVersion;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Plugin example app')),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Running on: $_platformVersion'),
            ),
            if (Platform.isMacOS) const Expanded(child: GodotView()),
          ],
        ),
      ),
    );
  }
}

/// Embeds the native Godot NSView on macOS.
class GodotView extends StatelessWidget {
  const GodotView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Platform.isMacOS) {
      return const Center(child: Text('Godot view only on macOS for now'));
    }
    const viewType = 'GodotView';
    const creationParams = <String, dynamic>{};
    return AppKitView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParams: creationParams,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
