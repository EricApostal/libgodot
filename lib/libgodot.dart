
import 'libgodot_platform_interface.dart';

class Libgodot {
  Future<String?> getPlatformVersion() {
    return LibgodotPlatform.instance.getPlatformVersion();
  }
}
