import 'package:flutter_test/flutter_test.dart';
import 'package:libgodot/libgodot.dart';
import 'package:libgodot/libgodot_platform_interface.dart';
import 'package:libgodot/libgodot_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLibgodotPlatform
    with MockPlatformInterfaceMixin
    implements LibgodotPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LibgodotPlatform initialPlatform = LibgodotPlatform.instance;

  test('$MethodChannelLibgodot is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLibgodot>());
  });

  test('getPlatformVersion', () async {
    Libgodot libgodotPlugin = Libgodot();
    MockLibgodotPlatform fakePlatform = MockLibgodotPlatform();
    LibgodotPlatform.instance = fakePlatform;

    expect(await libgodotPlugin.getPlatformVersion(), '42');
  });
}
