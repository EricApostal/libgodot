import 'libgodot_platform_interface.dart';

export 'godot_view.dart';

class Libgodot {
  Future<String?> getPlatformVersion() {
    return LibgodotPlatform.instance.getPlatformVersion();
  }

  /// Boots a Godot instance running the project at [projectPath] and returns
  /// the Flutter texture id its rendered frames are streamed into.
  ///
  /// See [LibgodotPlatform.createInstance] for the Android-specific exception
  /// to how [projectPath] is used.
  Future<int> createInstance({
    required String projectPath,
    int width = 480,
    int height = 270,
    int? initFunctionAddress,
  }) {
    return LibgodotPlatform.instance.createInstance(
      projectPath: projectPath,
      width: width,
      height: height,
      initFunctionAddress: initFunctionAddress,
    );
  }

  /// Stops the Godot instance backing [textureId].
  Future<void> destroyInstance(int textureId) {
    return LibgodotPlatform.instance.destroyInstance(textureId);
  }
}
