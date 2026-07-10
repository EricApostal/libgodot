import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'libgodot_platform_interface.dart';

/// An implementation of [LibgodotPlatform] that uses method channels.
class MethodChannelLibgodot extends LibgodotPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('libgodot');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>(
      'getPlatformVersion',
    );
    return version;
  }

  @override
  Future<int> createInstance({
    required String projectPath,
    int width = 480,
    int height = 270,
    int? initFunctionAddress,
  }) async {
    final textureId = await methodChannel.invokeMethod<int>('createInstance', {
      'projectPath': projectPath,
      'width': width,
      'height': height,
      if (initFunctionAddress != null) 'initFunctionAddress': initFunctionAddress,
    });
    if (textureId == null) {
      throw PlatformException(
        code: 'create_instance_failed',
        message: 'Native side did not return a texture id.',
      );
    }
    return textureId;
  }

  @override
  Future<void> destroyInstance(int textureId) async {
    await methodChannel.invokeMethod<void>('destroyInstance', {
      'textureId': textureId,
    });
  }
}
