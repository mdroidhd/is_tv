import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:is_tv/is_tv_method_channel.dart';

void main() {
  MethodChannelIsTV platform = MethodChannelIsTV();
  const MethodChannel channel = MethodChannel('is_tv');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return true;
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.check(), true);
  });
}
