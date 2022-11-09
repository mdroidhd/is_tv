#ifndef FLUTTER_PLUGIN_IS_TV_PLUGIN_H_
#define FLUTTER_PLUGIN_IS_TV_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace is_tv {

class IsTvPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  IsTvPlugin();

  virtual ~IsTvPlugin();

  // Disallow copy and assign.
  IsTvPlugin(const IsTvPlugin&) = delete;
  IsTvPlugin& operator=(const IsTvPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace is_tv

#endif  // FLUTTER_PLUGIN_IS_TV_PLUGIN_H_
