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
  /// On Android, [projectPath] is ignored: Godot's Android build always loads
  /// the project bundled into the APK's own assets (the same way every real
  /// exported Godot Android game works), so the project must instead be
  /// placed under the app module's `src/main/assets/` at build time.
  ///
  /// Returns the Flutter texture id to pass to a [Texture] widget.
  ///
  /// [initFunctionAddress], if given, is the native address of a
  /// `GDExtensionInitializationFunction` (e.g.
  /// `GodotDartEntryPoint.nativeFunctionPointer.address` from
  /// `package:godot_dart`), passed to `libgodot_create_godot_instance` in
  /// place of the platform plugin's default no-op init function — this is
  /// how Dart-authored GDExtension classes get registered with the engine.
  Future<int> createInstance({
    required String projectPath,
    int width = 480,
    int height = 270,
    int? initFunctionAddress,
  }) {
    throw UnimplementedError('createInstance() has not been implemented.');
  }

  /// Stops the Godot instance backing [textureId] and unregisters its texture.
  Future<void> destroyInstance(int textureId) {
    throw UnimplementedError('destroyInstance() has not been implemented.');
  }

  /// Requests the Godot instance backing [textureId] resize its offscreen
  /// surface to [width]x[height] (via `DisplayServer.window_set_size()` on
  /// the native side).
  ///
  /// Not immediate: the engine reallocates its surface ring over the next
  /// few rendered frames, so the [Texture] may keep showing the previous
  /// size for a moment. Returns false if the resize couldn't be performed
  /// (e.g. the instance hasn't finished starting yet, or [textureId] is
  /// unknown) — callers should treat this as non-fatal and simply try again
  /// later rather than surfacing an error.
  Future<bool> resizeInstance(int textureId, int width, int height) {
    throw UnimplementedError('resizeInstance() has not been implemented.');
  }
}
