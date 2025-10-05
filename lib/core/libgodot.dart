import 'package:cross_file/cross_file.dart';
import 'package:libgodot/core/native.dart';
import 'package:libgodot/src/rust/frb_generated.dart';
import 'package:libgodot/utils/logging.dart';
import 'package:logging/logging.dart';
import 'package:universal_platform/universal_platform.dart';

// TODO: We might want to make something here a singleton
// that way we can allow the users to create view with a ref
// to libgodot

class LibGodot {
  /// Game asset file ending in .pck for LibGodot to load with
  final XFile resourcePack;

  LibGodot({required this.resourcePack});

  // static GDExtensionFFI? _interface;

  static bool _isInitialized = false;

  static Logger get logger => Logger("LibGodot");

  /// Initializes all LibGodot libraries
  /// Must be called before interacting with it in any way
  static Future<void> ensureInitialized() async {
    if (_isInitialized) return;
    await RustLib.init();
    setupLogging();

    if (!UniversalPlatform.isMacOS) {
      throw UnsupportedError(
        'libgodot native bindings only implemented for macOS yet',
      );
    }

    _isInitialized = true;
  }

  Future<void> create() async {
    print("creating");

    NativeBridge.loadLibGodot();
    // final instance = await LibGodotProcess.create(
    //   resourcePack: resourcePack,
    //   interface: _interface!,
    // );

    // startGodot(path: );

    // return instance;
  }

  // Future<void> start(GodotInstance godotInstance) async {
  //   final instance = await LibGodotProcess.start(godotInstance);
  // }
}
