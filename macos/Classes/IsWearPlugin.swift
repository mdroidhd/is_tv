import Cocoa
import FlutterMacOS

public class IsTVPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "is_tv", binaryMessenger: registrar.messenger)
    let instance = IsTVPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      if(call.method == "check") {
        return result(false);
      result(FlutterMethodNotImplemented)
    }
  }
}
