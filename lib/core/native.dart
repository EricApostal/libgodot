import 'dart:ffi';
import 'dart:io';
import 'dart:typed_data';

import 'package:flutter/services.dart';
import 'package:libgodot/godot/core/gdextension_ffi_bindings.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class NativeBridge {
  static final methodChannel = MethodChannel("libgodot-native-bridge");

  static Future<GDExtensionFFI> loadLibGodot() async {
    final ByteData dylibData = await rootBundle.load('assets/libgodot.macos.editor.arm64.dylib');
    final Uint8List dylibBytes = dylibData.buffer.asUint8List();

    final Directory tempDir = await getTemporaryDirectory();
    final String dylibPath = path.join(tempDir.path, 'libgodot.macos.editor.arm64.dylib');

    final File dylibFile = File(dylibPath);
    await dylibFile.writeAsBytes(dylibBytes);

    await Process.run('chmod', ['+x', dylibPath]);

    final dylib = DynamicLibrary.open(dylibPath);
    return GDExtensionFFI(dylib);
  }
}
