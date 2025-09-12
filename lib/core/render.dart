import 'package:libgodot/core/native.dart';

class LibGodotRenderer {
  /// Creates the CAMetalLayer for Apple devices
  static Future<int?> createMetalLayer() async {
    final layer = await NativeBridge.methodChannel.invokeMethod<int>(
      'createMetalLayer',
    );
    return layer;
  }
}
