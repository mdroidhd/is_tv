import 'is_tv_platform_interface.dart';

class IsTV {
  Future<bool?> check() {
    return IsTVPlatform.instance.check();
  }
}
