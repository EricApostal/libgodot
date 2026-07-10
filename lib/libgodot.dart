import 'libgodot_platform_interface.dart';

export 'godot_controller.dart';
export 'godot_view.dart';

class Libgodot {
  Future<String?> getPlatformVersion() {
    return LibgodotPlatform.instance.getPlatformVersion();
  }
}
