import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'libgodot_method_channel.dart';

abstract class LibgodotPlatform extends PlatformInterface {
  /// Constructs a LibgodotPlatform.
  LibgodotPlatform() : super(token: _token);

  static final Object _token = Object();

  static LibgodotPlatform _instance = MethodChannelLibgodot();

  /// The default instance of [LibgodotPlatform] to use.
  ///
  /// Defaults to [MethodChannelLibgodot].
  static LibgodotPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LibgodotPlatform] when
  /// they register themselves.
  static set instance(LibgodotPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  /// Boots a Godot instance running the project at [projectPath] using the
  /// "offscreen" display driver, and registers a Flutter texture that its
  /// rendered frames are streamed into.
  ///
  /// Returns the Flutter texture id to pass to a [Texture] widget.
  Future<int> createInstance({
    required String projectPath,
    int width = 480,
    int height = 270,
  }) {
    throw UnimplementedError('createInstance() has not been implemented.');
  }

  /// Stops the Godot instance backing [textureId] and unregisters its texture.
  Future<void> destroyInstance(int textureId) {
    throw UnimplementedError('destroyInstance() has not been implemented.');
  }
}
