// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ScriptLanguageExtension extends ScriptLanguage {
  ScriptLanguageExtension(super.nativePtr);

  /// Constructs a brand-new engine-owned ScriptLanguageExtension instance
  /// (via classdb_construct_object3), not an existing one.
  factory ScriptLanguageExtension.create() {
    return ScriptLanguageExtension(resolveClassConstructor('ScriptLanguageExtension'));
  }

  /// Override to hook into Godot's `_get_name` virtual.
  String getName() => '';

  /// Override to hook into Godot's `_init` virtual.
  void init() {}

  /// Override to hook into Godot's `_get_type` virtual.
  String getType() => '';

  /// Override to hook into Godot's `_get_extension` virtual.
  String getExtension() => '';

  /// Override to hook into Godot's `_finish` virtual.
  void finish() {}

  // Skipped virtual _get_reserved_words(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_is_control_flow_keyword` virtual.
  bool isControlFlowKeyword(String keyword) => false;

  // Skipped virtual _get_comment_delimiters(): unsupported return type "PackedStringArray".
  // Skipped virtual _get_doc_comment_delimiters(): unsupported return type "PackedStringArray".
  // Skipped virtual _get_string_delimiters(): unsupported return type "PackedStringArray".
  /// Override to hook into Godot's `_make_template` virtual.
  Script? makeTemplate(String template, String className, String baseClassName) => null;

  // Skipped virtual _get_built_in_templates(): unsupported return type "typedarray::Dictionary".
  /// Override to hook into Godot's `_is_using_templates` virtual.
  bool isUsingTemplates() => false;

  // Skipped virtual _validate(): unsupported return type "Dictionary".
  /// Override to hook into Godot's `_validate_path` virtual.
  String validatePath(String path) => '';

  // Skipped virtual _create_script(): unsupported return type "Object".
  /// Override to hook into Godot's `_has_named_classes` virtual.
  bool hasNamedClasses() => false;

  /// Override to hook into Godot's `_supports_builtin_mode` virtual.
  bool supportsBuiltinMode() => false;

  /// Override to hook into Godot's `_supports_documentation` virtual.
  bool supportsDocumentation() => false;

  /// Override to hook into Godot's `_can_inherit_from_file` virtual.
  bool canInheritFromFile() => false;

  /// Override to hook into Godot's `_find_function` virtual.
  int findFunction(String function_, String code) => 0;

  // Skipped virtual _make_function(): an argument type is unsupported ("PackedStringArray").
  /// Override to hook into Godot's `_can_make_function` virtual.
  bool canMakeFunction() => false;

  /// Override to hook into Godot's `_open_in_external_editor` virtual.
  int openInExternalEditor(Script script, int line, int column) => 0;

  /// Override to hook into Godot's `_overrides_external_editor` virtual.
  bool overridesExternalEditor() => false;

  /// Override to hook into Godot's `_preferred_file_name_casing` virtual.
  int preferredFileNameCasing() => 0;

  // Skipped virtual _complete_code(): unsupported return type "Dictionary".
  // Skipped virtual _lookup_code(): unsupported return type "Dictionary".
  /// Override to hook into Godot's `_auto_indent_code` virtual.
  String autoIndentCode(String code, int fromLine, int toLine) => '';

  // Skipped virtual _add_global_constant(): an argument type is unsupported ("Variant").
  // Skipped virtual _add_named_global_constant(): an argument type is unsupported ("Variant").
  /// Override to hook into Godot's `_remove_named_global_constant` virtual.
  void removeNamedGlobalConstant(String name) {}

  /// Override to hook into Godot's `_thread_enter` virtual.
  void threadEnter() {}

  /// Override to hook into Godot's `_thread_exit` virtual.
  void threadExit() {}

  /// Override to hook into Godot's `_debug_get_error` virtual.
  String debugGetError() => '';

  /// Override to hook into Godot's `_debug_get_stack_level_count` virtual.
  int debugGetStackLevelCount() => 0;

  /// Override to hook into Godot's `_debug_get_stack_level_line` virtual.
  int debugGetStackLevelLine(int level) => 0;

  /// Override to hook into Godot's `_debug_get_stack_level_function` virtual.
  String debugGetStackLevelFunction(int level) => '';

  /// Override to hook into Godot's `_debug_get_stack_level_source` virtual.
  String debugGetStackLevelSource(int level) => '';

  // Skipped virtual _debug_get_stack_level_locals(): unsupported return type "Dictionary".
  // Skipped virtual _debug_get_stack_level_members(): unsupported return type "Dictionary".
  // Skipped virtual _debug_get_stack_level_instance(): unsupported return type "void*".
  // Skipped virtual _debug_get_globals(): unsupported return type "Dictionary".
  /// Override to hook into Godot's `_debug_parse_stack_level_expression` virtual.
  String debugParseStackLevelExpression(int level, String expression, int maxSubitems, int maxDepth) => '';

  // Skipped virtual _debug_get_current_stack_info(): unsupported return type "typedarray::Dictionary".
  /// Override to hook into Godot's `_reload_all_scripts` virtual.
  void reloadAllScripts() {}

  // Skipped virtual _reload_scripts(): an argument type is unsupported ("Array").
  /// Override to hook into Godot's `_reload_tool_script` virtual.
  void reloadToolScript(Script script, bool softReload) {}

  // Skipped virtual _get_recognized_extensions(): unsupported return type "PackedStringArray".
  // Skipped virtual _get_public_functions(): unsupported return type "typedarray::Dictionary".
  // Skipped virtual _get_public_constants(): unsupported return type "Dictionary".
  // Skipped virtual _get_public_annotations(): unsupported return type "typedarray::Dictionary".
  /// Override to hook into Godot's `_profiling_start` virtual.
  void profilingStart() {}

  /// Override to hook into Godot's `_profiling_stop` virtual.
  void profilingStop() {}

  /// Override to hook into Godot's `_profiling_set_save_native_calls` virtual.
  void profilingSetSaveNativeCalls(bool enable) {}

  // Skipped virtual _profiling_get_accumulated_data(): an argument type is unsupported ("ScriptLanguageExtensionProfilingInfo*").
  // Skipped virtual _profiling_get_frame_data(): an argument type is unsupported ("ScriptLanguageExtensionProfilingInfo*").
  /// Override to hook into Godot's `_frame` virtual.
  void frame() {}

  /// Override to hook into Godot's `_handles_global_class_type` virtual.
  bool handlesGlobalClassType(String type) => false;

  // Skipped virtual _get_global_class_name(): unsupported return type "Dictionary".
}
