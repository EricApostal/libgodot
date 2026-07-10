// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class GraphNode extends GraphElement {
  GraphNode(super.nativePtr);

  static final Pointer<Void> _mb_set_title =
      resolveMethodBind('GraphNode', 'set_title', 83702148);

  void setTitle(String title) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), title);
    try {
      ptrcallVoid(_mb_set_title, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_title =
      resolveMethodBind('GraphNode', 'get_title', 201670096);

  String getTitle() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_title, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_titlebar_hbox =
      resolveMethodBind('GraphNode', 'get_titlebar_hbox', 3590609951);

  HBoxContainer? getTitlebarHbox() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_titlebar_hbox, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : HBoxContainer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_slot =
      resolveMethodBind('GraphNode', 'set_slot', 2873310869);

  void setSlot(int slotIndex, bool enableLeftPort, int typeLeft, Color colorLeft, bool enableRightPort, int typeRight, Color colorRight, Texture2D customIconLeft, Texture2D customIconRight, bool drawStylebox) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Uint8>()..value = enableLeftPort ? 1 : 0;
    final arg2 = malloc<Int64>()..value = typeLeft;
    final arg3 = malloc<Uint8>(Color.nativeSize);
    colorLeft.writeTo(arg3, 0);
    final arg4 = malloc<Uint8>()..value = enableRightPort ? 1 : 0;
    final arg5 = malloc<Int64>()..value = typeRight;
    final arg6 = malloc<Uint8>(Color.nativeSize);
    colorRight.writeTo(arg6, 0);
    final arg7 = malloc<Pointer<Void>>()..value = customIconLeft.nativePtr;
    final arg8 = malloc<Pointer<Void>>()..value = customIconRight.nativePtr;
    final arg9 = malloc<Uint8>()..value = drawStylebox ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_slot, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>(), arg4.cast<Void>(), arg5.cast<Void>(), arg6.cast<Void>(), arg7.cast<Void>(), arg8.cast<Void>(), arg9.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
      malloc.free(arg4);
      malloc.free(arg5);
      malloc.free(arg6);
      malloc.free(arg7);
      malloc.free(arg8);
      malloc.free(arg9);
    }
  }

  static final Pointer<Void> _mb_clear_slot =
      resolveMethodBind('GraphNode', 'clear_slot', 1286410249);

  void clearSlot(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      ptrcallVoid(_mb_clear_slot, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_clear_all_slots =
      resolveMethodBind('GraphNode', 'clear_all_slots', 3218959716);

  void clearAllSlots() {
    try {
      ptrcallVoid(_mb_clear_all_slots, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_slot_enabled_left =
      resolveMethodBind('GraphNode', 'is_slot_enabled_left', 1116898809);

  bool isSlotEnabledLeft(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_slot_enabled_left, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_slot_enabled_left =
      resolveMethodBind('GraphNode', 'set_slot_enabled_left', 300928843);

  void setSlotEnabledLeft(int slotIndex, bool enable) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_slot_enabled_left, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_slot_type_left =
      resolveMethodBind('GraphNode', 'set_slot_type_left', 3937882851);

  void setSlotTypeLeft(int slotIndex, int type) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_slot_type_left, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_slot_type_left =
      resolveMethodBind('GraphNode', 'get_slot_type_left', 923996154);

  int getSlotTypeLeft(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_slot_type_left, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_slot_color_left =
      resolveMethodBind('GraphNode', 'set_slot_color_left', 2878471219);

  void setSlotColorLeft(int slotIndex, Color color) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_slot_color_left, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_slot_color_left =
      resolveMethodBind('GraphNode', 'get_slot_color_left', 3457211756);

  Color getSlotColorLeft(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_slot_color_left, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_slot_custom_icon_left =
      resolveMethodBind('GraphNode', 'set_slot_custom_icon_left', 666127730);

  void setSlotCustomIconLeft(int slotIndex, Texture2D customIcon) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Pointer<Void>>()..value = customIcon.nativePtr;
    try {
      ptrcallVoid(_mb_set_slot_custom_icon_left, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_slot_custom_icon_left =
      resolveMethodBind('GraphNode', 'get_slot_custom_icon_left', 3536238170);

  Texture2D? getSlotCustomIconLeft(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_slot_custom_icon_left, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_slot_metadata_left(): an argument type is unsupported.
  // Skipped get_slot_metadata_left(): unsupported return type "Variant".
  static final Pointer<Void> _mb_is_slot_enabled_right =
      resolveMethodBind('GraphNode', 'is_slot_enabled_right', 1116898809);

  bool isSlotEnabledRight(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_slot_enabled_right, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_slot_enabled_right =
      resolveMethodBind('GraphNode', 'set_slot_enabled_right', 300928843);

  void setSlotEnabledRight(int slotIndex, bool enable) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_slot_enabled_right, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_slot_type_right =
      resolveMethodBind('GraphNode', 'set_slot_type_right', 3937882851);

  void setSlotTypeRight(int slotIndex, int type) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Int64>()..value = type;
    try {
      ptrcallVoid(_mb_set_slot_type_right, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_slot_type_right =
      resolveMethodBind('GraphNode', 'get_slot_type_right', 923996154);

  int getSlotTypeRight(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_slot_type_right, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_slot_color_right =
      resolveMethodBind('GraphNode', 'set_slot_color_right', 2878471219);

  void setSlotColorRight(int slotIndex, Color color) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Uint8>(Color.nativeSize);
    color.writeTo(arg1, 0);
    try {
      ptrcallVoid(_mb_set_slot_color_right, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_slot_color_right =
      resolveMethodBind('GraphNode', 'get_slot_color_right', 3457211756);

  Color getSlotColorRight(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_slot_color_right, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_slot_custom_icon_right =
      resolveMethodBind('GraphNode', 'set_slot_custom_icon_right', 666127730);

  void setSlotCustomIconRight(int slotIndex, Texture2D customIcon) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Pointer<Void>>()..value = customIcon.nativePtr;
    try {
      ptrcallVoid(_mb_set_slot_custom_icon_right, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_slot_custom_icon_right =
      resolveMethodBind('GraphNode', 'get_slot_custom_icon_right', 3536238170);

  Texture2D? getSlotCustomIconRight(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_slot_custom_icon_right, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped set_slot_metadata_right(): an argument type is unsupported.
  // Skipped get_slot_metadata_right(): unsupported return type "Variant".
  static final Pointer<Void> _mb_is_slot_draw_stylebox =
      resolveMethodBind('GraphNode', 'is_slot_draw_stylebox', 1116898809);

  bool isSlotDrawStylebox(int slotIndex) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_slot_draw_stylebox, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_slot_draw_stylebox =
      resolveMethodBind('GraphNode', 'set_slot_draw_stylebox', 300928843);

  void setSlotDrawStylebox(int slotIndex, bool enable) {
    final arg0 = malloc<Int64>()..value = slotIndex;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_slot_draw_stylebox, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_set_ignore_invalid_connection_type =
      resolveMethodBind('GraphNode', 'set_ignore_invalid_connection_type', 2586408642);

  void setIgnoreInvalidConnectionType(bool ignore) {
    final arg0 = malloc<Uint8>()..value = ignore ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_ignore_invalid_connection_type, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_ignoring_valid_connection_type =
      resolveMethodBind('GraphNode', 'is_ignoring_valid_connection_type', 36873697);

  bool isIgnoringValidConnectionType() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ignoring_valid_connection_type, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_slots_focus_mode =
      resolveMethodBind('GraphNode', 'set_slots_focus_mode', 3232914922);

  void setSlotsFocusMode(int focusMode) {
    final arg0 = malloc<Int64>()..value = focusMode;
    try {
      ptrcallVoid(_mb_set_slots_focus_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_slots_focus_mode =
      resolveMethodBind('GraphNode', 'get_slots_focus_mode', 2132829277);

  int getSlotsFocusMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_slots_focus_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_input_port_count =
      resolveMethodBind('GraphNode', 'get_input_port_count', 2455072627);

  int getInputPortCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_port_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_input_port_position =
      resolveMethodBind('GraphNode', 'get_input_port_position', 3114997196);

  Vector2 getInputPortPosition(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_input_port_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_port_type =
      resolveMethodBind('GraphNode', 'get_input_port_type', 3744713108);

  int getInputPortType(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_port_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_port_color =
      resolveMethodBind('GraphNode', 'get_input_port_color', 2624840992);

  Color getInputPortColor(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_input_port_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_port_slot =
      resolveMethodBind('GraphNode', 'get_input_port_slot', 3744713108);

  int getInputPortSlot(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_port_slot, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_output_port_count =
      resolveMethodBind('GraphNode', 'get_output_port_count', 2455072627);

  int getOutputPortCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_output_port_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_output_port_position =
      resolveMethodBind('GraphNode', 'get_output_port_position', 3114997196);

  Vector2 getOutputPortPosition(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_output_port_position, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_output_port_type =
      resolveMethodBind('GraphNode', 'get_output_port_type', 3744713108);

  int getOutputPortType(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_output_port_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_output_port_color =
      resolveMethodBind('GraphNode', 'get_output_port_color', 2624840992);

  Color getOutputPortColor(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Uint8>(Color.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_output_port_color, nativePtr, [arg0.cast<Void>()], ret.cast());
        return Color.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_output_port_slot =
      resolveMethodBind('GraphNode', 'get_output_port_slot', 3744713108);

  int getOutputPortSlot(int portIdx) {
    final arg0 = malloc<Int64>()..value = portIdx;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_output_port_slot, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

}
