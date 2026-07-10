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
  Future<int> registerTexture(int handleAddress) async {
    final textureId = await methodChannel.invokeMethod<int>(
      'registerTexture',
      handleAddress,
    );
    if (textureId == null) {
      throw PlatformException(
        code: 'register_texture_failed',
        message: 'Native side did not return a texture id.',
      );
    }
    return textureId;
  }

  @override
  Future<void> unregisterTexture(int textureId) async {
    await methodChannel.invokeMethod<void>('unregisterTexture', textureId);
  }
}
