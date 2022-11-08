import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'is_tv_method_channel.dart';

abstract class IsTVPlatform extends PlatformInterface {
  /// Constructs a IsTVPlatform.
  IsTVPlatform() : super(token: _token);

  static final Object _token = Object();

  static IsTVPlatform _instance = MethodChannelIsTV();

  /// The default instance of [IsTVPlatform] to use.
  ///
  /// Defaults to [MethodChannelIsTV].
  static IsTVPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [IsTVPlatform] when
  /// they register themselves.
  static set instance(IsTVPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool?> check() async {
    throw UnimplementedError('check() has not been implemented.');
  }
}
