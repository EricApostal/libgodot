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

  @override
  Future<({int textureId, int handleAddress})> createAndroidInstance({
    required String projectPath,
    required int width,
    required int height,
    int? initFunctionAddress,
  }) async {
    final result = await methodChannel.invokeMapMethod<String, Object?>('createInstance', {
      'projectPath': projectPath,
      'width': width,
      'height': height,
      'initFunctionAddress': ?initFunctionAddress,
    });
    final textureId = result?['textureId'] as int?;
    final handleAddress = result?['handleAddress'] as int?;
    if (textureId == null || handleAddress == null) {
      throw PlatformException(
        code: 'create_instance_failed',
        message: 'Native side did not return a textureId/handleAddress.',
      );
    }
    return (textureId: textureId, handleAddress: handleAddress);
  }

  @override
  Future<void> destroyAndroidInstance(int textureId) async {
    await methodChannel.invokeMethod<void>('destroyInstance', textureId);
  }

  @override
  Future<bool> resizeAndroidInstance(int textureId, int width, int height) async {
    final resized = await methodChannel.invokeMethod<bool>('resizeInstance', {
      'textureId': textureId,
      'width': width,
      'height': height,
    });
    return resized ?? false;
  }
}
