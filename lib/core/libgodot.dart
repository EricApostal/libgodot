import 'package:cross_file/cross_file.dart';
import 'package:libgodot/core/native.dart';
import 'package:libgodot/core/process.dart';
import 'package:libgodot/godot/core/gdextension_ffi_bindings.dart';
import 'package:libgodot/utils/logging.dart';
import 'package:logging/logging.dart';
import 'package:universal_platform/universal_platform.dart';

class LibGodot {
  /// Game asset file ending in .pck for LibGodot to load with
  final XFile resourcePack;

  LibGodot({required this.resourcePack});

  static GDExtensionFFI? _interface;

  static bool _isInitialized = false;

  static Logger get logger => Logger("LibGodot");

  /// Initializes all LibGodot libraries
  /// Must be called before interacting with it in any way
  static void ensureInitialized() {
    if (_isInitialized) return;
    setupLogging();
    logger.info("yo");

    if (!UniversalPlatform.isMacOS) {
      throw UnsupportedError(
        'libgodot native bindings only implemented for macOS yet',
      );
    }

    _interface = NativeBridge.loadLibGodot();
    _isInitialized = true;
  }

  Future<void> start() async {
    logger.info("Starting LibGodot");
    await LibGodotProcess.start(
      resourcePack: resourcePack,
      interface: _interface!,
    );
  }
}
