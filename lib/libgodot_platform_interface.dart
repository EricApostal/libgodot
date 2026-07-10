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

  /// Wraps the Godot instance at native address [handleAddress] (a `GodotCoreHandle` from
  /// `godot_core_create`, already started -- see [GodotController]) in a platform texture and
  /// registers it with Flutter.
  ///
  /// Everything about the instance itself (booting it, resizing it, tearing it down) goes
  /// straight through `lib/src/godot_core_bindings.g.dart`'s FFI bindings instead of a method
  /// channel; this is the one thing that still has to be a native platform call, since only
  /// native code has a `FlutterTextureRegistrar`/`FlTextureRegistrar` to register against.
  ///
  /// Returns the Flutter texture id to pass to a [Texture] widget.
  Future<int> registerTexture(int handleAddress) {
    throw UnimplementedError('registerTexture() has not been implemented.');
  }

  /// Stops the Godot instance backing [textureId] (via `godot_core_destroy`) and unregisters
  /// its texture.
  Future<void> unregisterTexture(int textureId) {
    throw UnimplementedError('unregisterTexture() has not been implemented.');
  }

  /// Android only: boots a Godot instance and registers its texture in one call.
  ///
  /// Android can't use [registerTexture]'s FFI-driven create/start (there is no
  /// `libgodot_create_godot_instance()` for Android -- its bootstrap goes through Kotlin's
  /// `Godot`/`GodotLib` JNI layer instead, see `LibgodotPlugin.kt`), so the whole boot sequence
  /// happens natively here instead of via `godot_core_create`/`_start`.
  ///
  /// [projectPath] is validated but otherwise unused: Godot's Android build always loads the
  /// project bundled into the APK's own assets (see [GodotController]'s doc comment).
  ///
  /// Returns the Flutter texture id, plus the native `GodotCoreHandle` address so
  /// [GodotController] can still resize via FFI (`godot_core_resize`) afterward, same as the
  /// other platforms.
  Future<({int textureId, int handleAddress})> createAndroidInstance({
    required String projectPath,
    required int width,
    required int height,
    int? initFunctionAddress,
  }) {
    throw UnimplementedError('createAndroidInstance() has not been implemented.');
  }

  /// Android only: stops the Godot instance backing [textureId] and unregisters its texture.
  Future<void> destroyAndroidInstance(int textureId) {
    throw UnimplementedError('destroyAndroidInstance() has not been implemented.');
  }
}
