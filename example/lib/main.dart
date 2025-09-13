import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:async';

import 'dart:io' show Platform;

import 'package:libgodot/libgodot.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late final LibGodot libGodot;
  @override
  void initState() {
    super.initState();
    _initGodot();
  }

  Future<void> _initGodot() async {
    LibGodot.ensureInitialized();
    final assetData = (await rootBundle.load(
      "assets/game.pck",
    )).buffer.asUint8List();

    final file = XFile.fromData(assetData);

    libGodot = LibGodot(resourcePack: file);

    libGodot.start();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('LibGodot example app')),
        body: Column(
          children: [if (Platform.isMacOS) const Expanded(child: GodotView())],
        ),
      ),
    );
  }
}

class GodotView extends StatelessWidget {
  const GodotView({super.key});

  @override
  Widget build(BuildContext context) {
    if (!Platform.isMacOS) {
      return const Center(
        child: Text('GodotView is only implemented for macOS in this example'),
      );
    }

    const viewType = 'libgodot/metal_view';
    return AppKitView(
      viewType: viewType,
      layoutDirection: TextDirection.ltr,
      creationParamsCodec: const StandardMessageCodec(),
    );
  }
}
