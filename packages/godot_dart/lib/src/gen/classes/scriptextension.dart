// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ScriptExtension extends Script {
  ScriptExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned ScriptExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory ScriptExtension.create() {
    return ScriptExtension(resolveClassConstructor('ScriptExtension'));
  }

  /// Override to hook into Godot's `_editor_can_reload_from_file` virtual.
  bool editorCanReloadFromFile() => false;

  // Skipped virtual _placeholder_erased(): an argument type is unsupported ("void*").
  /// Override to hook into Godot's `_can_instantiate` virtual.
  bool canInstantiate() => false;

  /// Override to hook into Godot's `_get_base_script` virtual.
  Script? getBaseScript() => null;

  /// Override to hook into Godot's `_get_global_name` virtual.
  String getGlobalName() => '';

  /// Override to hook into Godot's `_inherits_script` virtual.
  bool inheritsScript(Script script) => false;

  /// Override to hook into Godot's `_get_instance_base_type` virtual.
  String getInstanceBaseType() => '';

  // Skipped virtual _instance_create(): unsupported return type "void*".
  // Skipped virtual _placeholder_instance_create(): unsupported return type "void*".
  /// Override to hook into Godot's `_has_source_code` virtual.
  bool hasSourceCode() => false;

  /// Override to hook into Godot's `_get_source_code` virtual.
  String getSourceCode() => '';

  /// Override to hook into Godot's `_set_source_code` virtual.
  void setSourceCode(String code) {}

  /// Override to hook into Godot's `_reload` virtual.
  int reload(bool keepState) => 0;

  /// Override to hook into Godot's `_get_doc_class_name` virtual.
  String getDocClassName() => '';

  // Skipped virtual _get_documentation(): unsupported return type "typedarray::Dictionary".
  /// Override to hook into Godot's `_get_class_icon_path` virtual.
  String getClassIconPath() => '';

  /// Override to hook into Godot's `_has_method` virtual.
  bool hasMethod(String method) => false;

  /// Override to hook into Godot's `_has_static_method` virtual.
  bool hasStaticMethod(String method) => false;

  // Skipped virtual _get_script_method_argument_count(): unsupported return type "Variant".
  // Skipped virtual _get_method_info(): unsupported return type "Dictionary".
  /// Override to hook into Godot's `_is_tool` virtual.
  bool isTool() => false;

  /// Override to hook into Godot's `_is_valid` virtual.
  bool isValid() => false;

  /// Override to hook into Godot's `_is_abstract` virtual.
  bool isAbstract() => false;

  /// Override to hook into Godot's `_get_language` virtual.
  ScriptLanguage? getLanguage() => null;

  /// Override to hook into Godot's `_has_script_signal` virtual.
  bool hasScriptSignal(String signal) => false;

  // Skipped virtual _get_script_signal_list(): unsupported return type "typedarray::Dictionary".
  /// Override to hook into Godot's `_has_property_default_value` virtual.
  bool hasPropertyDefaultValue(String property) => false;

  // Skipped virtual _get_property_default_value(): unsupported return type "Variant".
  /// Override to hook into Godot's `_update_exports` virtual.
  void updateExports() {}

  // Skipped virtual _get_script_method_list(): unsupported return type "typedarray::Dictionary".
  // Skipped virtual _get_script_property_list(): unsupported return type "typedarray::Dictionary".
  /// Override to hook into Godot's `_get_member_line` virtual.
  int getMemberLine(String member) => 0;

  // Skipped virtual _get_constants(): unsupported return type "Dictionary".
  // Skipped virtual _get_members(): unsupported return type "typedarray::StringName".
  /// Override to hook into Godot's `_is_placeholder_fallback_enabled` virtual.
  bool isPlaceholderFallbackEnabled() => false;

  // Skipped virtual _get_rpc_config(): unsupported return type "Variant".
  // Skipped virtual _instance_has(): an argument type is unsupported ("Object").
}
