import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class NativeBridge {
  static final methodChannel = MethodChannel("libgodot-native-bridge");

  static Future<void> loadLibGodot() async {
    // final ByteData dylibData = await rootBundle.load('assets/libgodot-44.macos.template_debug.dev.arm64.dylib');
    // final Uint8List dylibBytes = dylibData.buffer.asUint8List();

    final ByteData pckData = await rootBundle.load("assets/game-44.pck");
    final pckBytes = pckData.buffer.asUint8List();

    final Directory tempDir = await getTemporaryDirectory();
    final String dylibPath = path.join(tempDir.path, 'libgodot-44.macos.template_debug.dev.arm64.dylib');
    final String pckPath = path.join(tempDir.path, 'game-44.pck');

    // final File dylibFile = File(dylibPath);
    // await dylibFile.writeAsBytes(dylibBytes);

    final File pckFile = File(pckPath);
    await pckFile.writeAsBytes(pckBytes);

    await Process.run('chmod', ['+x', dylibPath]);

    print("launching with path: $dylibPath}");

    // final dylib = DynamicLibrary.open(dylibPath);
    // final instanceId = startGodot(libPath: dylibPath, pckPath: pckPath);
    // final message = startGodotInstance(instanceId: instanceId);
  }
}
