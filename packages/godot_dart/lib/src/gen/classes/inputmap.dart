// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class InputMap extends GodotObject {
  InputMap(super.nativePtr);

  /// Constructs a brand-new engine-owned InputMap instance
  /// (via classdb_construct_object3), not an existing one.
  factory InputMap.create() {
    return InputMap(resolveClassConstructor('InputMap'));
  }

  static final Pointer<Void> _mb_has_action =
      resolveMethodBind('InputMap', 'has_action', 2619796661);

  bool hasAction(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_action, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped get_actions(): unsupported return type "typedarray::StringName".
  static final Pointer<Void> _mb_add_action =
      resolveMethodBind('InputMap', 'add_action', 1195233573);

  void addAction(String action, double deadzone) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Double>()..value = deadzone;
    try {
      ptrcallVoid(_mb_add_action, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_erase_action =
      resolveMethodBind('InputMap', 'erase_action', 3304788590);

  void eraseAction(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_erase_action, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_action_description =
      resolveMethodBind('InputMap', 'get_action_description', 957595536);

  String getActionDescription(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_action_description, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_action_set_deadzone =
      resolveMethodBind('InputMap', 'action_set_deadzone', 4135858297);

  void actionSetDeadzone(String action, double deadzone) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Double>()..value = deadzone;
    try {
      ptrcallVoid(_mb_action_set_deadzone, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_action_get_deadzone =
      resolveMethodBind('InputMap', 'action_get_deadzone', 1391627649);

  double actionGetDeadzone(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_action_get_deadzone, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_action_add_event =
      resolveMethodBind('InputMap', 'action_add_event', 518302593);

  void actionAddEvent(String action, InputEvent event) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Pointer<Void>>()..value = event.nativePtr;
    try {
      ptrcallVoid(_mb_action_add_event, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_action_has_event =
      resolveMethodBind('InputMap', 'action_has_event', 1185871985);

  bool actionHasEvent(String action, InputEvent event) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Pointer<Void>>()..value = event.nativePtr;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_action_has_event, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_action_erase_event =
      resolveMethodBind('InputMap', 'action_erase_event', 518302593);

  void actionEraseEvent(String action, InputEvent event) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    final arg1 = malloc<Pointer<Void>>()..value = event.nativePtr;
    try {
      ptrcallVoid(_mb_action_erase_event, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_action_erase_events =
      resolveMethodBind('InputMap', 'action_erase_events', 3304788590);

  void actionEraseEvents(String action) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), action);
    try {
      ptrcallVoid(_mb_action_erase_events, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped action_get_events(): unsupported return type "typedarray::InputEvent".
  static final Pointer<Void> _mb_event_is_action =
      resolveMethodBind('InputMap', 'event_is_action', 3193353650);

  bool eventIsAction(InputEvent event, String action, bool exactMatch) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), action);
    final arg2 = malloc<Uint8>()..value = exactMatch ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_event_is_action, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_load_from_project_settings =
      resolveMethodBind('InputMap', 'load_from_project_settings', 3218959716);

  void loadFromProjectSettings() {
    try {
      ptrcallVoid(_mb_load_from_project_settings, nativePtr, []);
    } finally {
    }
  }

}
