import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_native_log_handler/flutter_native_logs.dart';
import 'package:libgodot/rust_bridge/frb_generated.dart';
Future<void> main() async {
  await RustLib.init();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
    StreamSubscription<NativeLogMessage> subscription =
    FlutterNativeLogs().logStream.listen(
        (NativeLogMessage message) {
          print("[Native] ${message.message}");
        }
            
        );

  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Center(
          child: Text(
              'rar'),
        ),
      ),
    );
  }
}
