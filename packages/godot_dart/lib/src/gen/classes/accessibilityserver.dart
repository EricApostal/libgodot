// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class AccessibilityServer extends GodotObject {
  AccessibilityServer(super.nativePtr);

  static final Pointer<Void> _mb_is_supported =
      resolveMethodBind('AccessibilityServer', 'is_supported', 36873697);

  bool isSupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped create_element(): unsupported return type "RID".
  // Skipped create_sub_element(): unsupported return type "RID".
  // Skipped create_sub_text_edit_elements(): unsupported return type "RID".
  // Skipped has_element(): an argument type is unsupported.
  // Skipped free_element(): an argument type is unsupported.
  // Skipped element_set_meta(): an argument type is unsupported.
  // Skipped element_get_meta(): unsupported return type "Variant".
  static final Pointer<Void> _mb_set_window_rect =
      resolveMethodBind('AccessibilityServer', 'set_window_rect', 2386961724);

  void setWindowRect(int windowId, Rect2 rectOut, Rect2 rectIn) {
    final arg0 = malloc<Int64>()..value = windowId;
    final arg1 = malloc<Uint8>(Rect2.nativeSize);
    rectOut.writeTo(arg1, 0);
    final arg2 = malloc<Uint8>(Rect2.nativeSize);
    rectIn.writeTo(arg2, 0);
    try {
      ptrcallVoid(_mb_set_window_rect, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_set_window_focused =
      resolveMethodBind('AccessibilityServer', 'set_window_focused', 300928843);

  void setWindowFocused(int windowId, bool focused) {
    final arg0 = malloc<Int64>()..value = windowId;
    final arg1 = malloc<Uint8>()..value = focused ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_window_focused, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped update_set_focus(): an argument type is unsupported.
  // Skipped get_window_root(): unsupported return type "RID".
  // Skipped update_set_role(): an argument type is unsupported.
  // Skipped update_set_name(): an argument type is unsupported.
  // Skipped update_set_braille_label(): an argument type is unsupported.
  // Skipped update_set_braille_role_description(): an argument type is unsupported.
  // Skipped update_set_extra_info(): an argument type is unsupported.
  // Skipped update_set_description(): an argument type is unsupported.
  // Skipped update_set_value(): an argument type is unsupported.
  // Skipped update_set_tooltip(): an argument type is unsupported.
  // Skipped update_set_bounds(): an argument type is unsupported.
  // Skipped update_set_transform(): an argument type is unsupported.
  // Skipped update_add_child(): an argument type is unsupported.
  // Skipped update_add_related_controls(): an argument type is unsupported.
  // Skipped update_add_related_details(): an argument type is unsupported.
  // Skipped update_add_related_described_by(): an argument type is unsupported.
  // Skipped update_add_related_flow_to(): an argument type is unsupported.
  // Skipped update_add_related_labeled_by(): an argument type is unsupported.
  // Skipped update_add_related_radio_group(): an argument type is unsupported.
  // Skipped update_set_active_descendant(): an argument type is unsupported.
  // Skipped update_set_next_on_line(): an argument type is unsupported.
  // Skipped update_set_previous_on_line(): an argument type is unsupported.
  // Skipped update_set_member_of(): an argument type is unsupported.
  // Skipped update_set_in_page_link_target(): an argument type is unsupported.
  // Skipped update_set_error_message(): an argument type is unsupported.
  // Skipped update_set_live(): an argument type is unsupported.
  // Skipped update_add_action(): an argument type is unsupported.
  // Skipped update_add_custom_action(): an argument type is unsupported.
  // Skipped update_set_table_row_count(): an argument type is unsupported.
  // Skipped update_set_table_column_count(): an argument type is unsupported.
  // Skipped update_set_table_row_index(): an argument type is unsupported.
  // Skipped update_set_table_column_index(): an argument type is unsupported.
  // Skipped update_set_table_cell_position(): an argument type is unsupported.
  // Skipped update_set_table_cell_span(): an argument type is unsupported.
  // Skipped update_set_list_item_count(): an argument type is unsupported.
  // Skipped update_set_list_item_index(): an argument type is unsupported.
  // Skipped update_set_list_item_level(): an argument type is unsupported.
  // Skipped update_set_list_item_selected(): an argument type is unsupported.
  // Skipped update_set_list_item_expanded(): an argument type is unsupported.
  // Skipped update_set_popup_type(): an argument type is unsupported.
  // Skipped update_set_checked(): an argument type is unsupported.
  // Skipped update_set_num_value(): an argument type is unsupported.
  // Skipped update_set_num_range(): an argument type is unsupported.
  // Skipped update_set_num_step(): an argument type is unsupported.
  // Skipped update_set_num_jump(): an argument type is unsupported.
  // Skipped update_set_scroll_x(): an argument type is unsupported.
  // Skipped update_set_scroll_x_range(): an argument type is unsupported.
  // Skipped update_set_scroll_y(): an argument type is unsupported.
  // Skipped update_set_scroll_y_range(): an argument type is unsupported.
  // Skipped update_set_text_decorations(): an argument type is unsupported.
  // Skipped update_set_text_align(): an argument type is unsupported.
  // Skipped update_set_text_selection(): an argument type is unsupported.
  // Skipped update_set_flag(): an argument type is unsupported.
  // Skipped update_set_classname(): an argument type is unsupported.
  // Skipped update_set_placeholder(): an argument type is unsupported.
  // Skipped update_set_language(): an argument type is unsupported.
  // Skipped update_set_text_orientation(): an argument type is unsupported.
  // Skipped update_set_list_orientation(): an argument type is unsupported.
  // Skipped update_set_shortcut(): an argument type is unsupported.
  // Skipped update_set_url(): an argument type is unsupported.
  // Skipped update_set_role_description(): an argument type is unsupported.
  // Skipped update_set_state_description(): an argument type is unsupported.
  // Skipped update_set_color_value(): an argument type is unsupported.
  // Skipped update_set_background_color(): an argument type is unsupported.
  // Skipped update_set_foreground_color(): an argument type is unsupported.
}
