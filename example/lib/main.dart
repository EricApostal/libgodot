import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show AssetManifest, rootBundle;
import 'package:libgodot/libgodot.dart';
import 'package:path_provider/path_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  /// On Linux desktop builds the `flutter_assets` directory is unpacked as plain files next to
  /// the executable, so the bundled Godot project can be pointed at directly with no extraction
  /// step. On Android it's packed inside the APK instead, so it's extracted to a real directory
  /// under the app's own storage the first time it's needed; see [_extractGodotProjectAndroid].
  Future<String> _godotProjectPath() async {
    if (Platform.isAndroid) {
      return _extractGodotProjectAndroid();
    }
    final exeDir = File(Platform.resolvedExecutable).parent.path;
    return '$exeDir/data/flutter_assets/assets/godot_project';
  }

  Future<String> _extractGodotProjectAndroid() async {
    const assetPrefix = 'assets/godot_project/';
    final targetDir = Directory(
      '${(await getApplicationSupportDirectory()).path}/godot_project',
    );

    final manifest = await AssetManifest.loadFromAssetBundle(rootBundle);
    for (final key in manifest.listAssets()) {
      if (!key.startsWith(assetPrefix)) {
        continue;
      }
      final bytes = await rootBundle.load(key);
      final file = File('${targetDir.path}/${key.substring(assetPrefix.length)}');
      await file.parent.create(recursive: true);
      await file.writeAsBytes(bytes.buffer.asUint8List(), flush: true);
    }

    return targetDir.path;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('libgodot: rotating cube')),
        body: Center(
          child: FutureBuilder<String>(
            future: _godotProjectPath(),
            builder: (context, snapshot) {
              final projectPath = snapshot.data;
              if (projectPath == null) {
                return const CircularProgressIndicator();
              }
              return GodotView(projectPath: projectPath, width: 480, height: 270);
            },
          ),
        ),
      ),
    );
  }
}
