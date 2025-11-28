import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:libgodot/libgodot.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class NativeBridge {
  static final methodChannel = MethodChannel("libgodot-native-bridge");

  static Future<XFile> loadPack() async {
    final ByteData pckData = await rootBundle.load("assets/game-44.pck");
    final pckBytes = pckData.buffer.asUint8List();

    final Directory tempDir = await getTemporaryDirectory();
    final String pckPath = path.join(tempDir.path, 'game-44.pck');


    final File pckFile = File(pckPath);
    await pckFile.writeAsBytes(pckBytes);

  return XFile(pckFile.path);
  }
}
