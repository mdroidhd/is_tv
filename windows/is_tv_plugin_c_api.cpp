#include "include/is_tv/is_tv_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "is_tv_plugin.h"

void IsTvPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  is_tv::IsTvPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
