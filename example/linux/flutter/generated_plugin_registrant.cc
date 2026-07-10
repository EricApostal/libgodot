//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <libgodot/libgodot_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) libgodot_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "LibgodotPlugin");
  libgodot_plugin_register_with_registrar(libgodot_registrar);
}
