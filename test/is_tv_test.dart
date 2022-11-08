import 'package:flutter_test/flutter_test.dart';
import 'package:is_tv/is_tv.dart';
import 'package:is_tv/is_tv_platform_interface.dart';
import 'package:is_tv/is_tv_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockIsTVPlatform with MockPlatformInterfaceMixin implements IsTVPlatform {
  @override
  Future<bool?> check() => Future.value(true);
}

void main() {
  final IsTVPlatform initialPlatform = IsTVPlatform.instance;

  test('$MethodChannelIsTV is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelIsTV>());
  });

  test('getPlatformVersion', () async {
    IsTV isTVPlugin = IsTV();
    MockIsTVPlatform fakePlatform = MockIsTVPlatform();
    IsTVPlatform.instance = fakePlatform;

    expect(await isTVPlugin.check(), true);
  });
}
