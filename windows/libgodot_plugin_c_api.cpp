#include "include/libgodot/libgodot_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "libgodot_plugin.h"

void LibgodotPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  libgodot::LibgodotPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
