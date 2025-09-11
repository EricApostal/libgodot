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
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<int?> createMetalLayer() async {
    final layer = await methodChannel.invokeMethod<int>('createMetalLayer');
    return layer;
  }
}
