// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class SceneTree extends MainLoop {
  SceneTree(super.nativePtr);

  static final Pointer<Void> _mb_get_root =
      resolveMethodBind('SceneTree', 'get_root', 1757182445);

  Window? getRoot() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_root, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Window(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_has_group =
      resolveMethodBind('SceneTree', 'has_group', 2619796661);

  bool hasGroup(String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_group, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_accessibility_enabled =
      resolveMethodBind('SceneTree', 'is_accessibility_enabled', 36873697);

  bool isAccessibilityEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_accessibility_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_accessibility_supported =
      resolveMethodBind('SceneTree', 'is_accessibility_supported', 36873697);

  bool isAccessibilitySupported() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_accessibility_supported, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_auto_accept_quit =
      resolveMethodBind('SceneTree', 'is_auto_accept_quit', 36873697);

  bool isAutoAcceptQuit() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_auto_accept_quit, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_auto_accept_quit =
      resolveMethodBind('SceneTree', 'set_auto_accept_quit', 2586408642);

  void setAutoAcceptQuit(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_auto_accept_quit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_quit_on_go_back =
      resolveMethodBind('SceneTree', 'is_quit_on_go_back', 36873697);

  bool isQuitOnGoBack() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_quit_on_go_back, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_quit_on_go_back =
      resolveMethodBind('SceneTree', 'set_quit_on_go_back', 2586408642);

  void setQuitOnGoBack(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_quit_on_go_back, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_debug_collisions_hint =
      resolveMethodBind('SceneTree', 'set_debug_collisions_hint', 2586408642);

  void setDebugCollisionsHint(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_collisions_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_debugging_collisions_hint =
      resolveMethodBind('SceneTree', 'is_debugging_collisions_hint', 36873697);

  bool isDebuggingCollisionsHint() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_debugging_collisions_hint, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_paths_hint =
      resolveMethodBind('SceneTree', 'set_debug_paths_hint', 2586408642);

  void setDebugPathsHint(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_paths_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_debugging_paths_hint =
      resolveMethodBind('SceneTree', 'is_debugging_paths_hint', 36873697);

  bool isDebuggingPathsHint() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_debugging_paths_hint, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_navigation_hint =
      resolveMethodBind('SceneTree', 'set_debug_navigation_hint', 2586408642);

  void setDebugNavigationHint(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_debug_navigation_hint, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_debugging_navigation_hint =
      resolveMethodBind('SceneTree', 'is_debugging_navigation_hint', 36873697);

  bool isDebuggingNavigationHint() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_debugging_navigation_hint, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_edited_scene_root =
      resolveMethodBind('SceneTree', 'set_edited_scene_root', 1078189570);

  void setEditedSceneRoot(Node scene) {
    final arg0 = malloc<Pointer<Void>>()..value = scene.nativePtr;
    try {
      ptrcallVoid(_mb_set_edited_scene_root, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_edited_scene_root =
      resolveMethodBind('SceneTree', 'get_edited_scene_root', 3160264692);

  Node? getEditedSceneRoot() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_edited_scene_root, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_pause =
      resolveMethodBind('SceneTree', 'set_pause', 2586408642);

  void setPause(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_pause, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_paused =
      resolveMethodBind('SceneTree', 'is_paused', 36873697);

  bool isPaused() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_paused, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_create_timer =
      resolveMethodBind('SceneTree', 'create_timer', 2709170273);

  SceneTreeTimer? createTimer(double timeSec, bool processAlways, bool processInPhysics, bool ignoreTimeScale) {
    final arg0 = malloc<Double>()..value = timeSec;
    final arg1 = malloc<Uint8>()..value = processAlways ? 1 : 0;
    final arg2 = malloc<Uint8>()..value = processInPhysics ? 1 : 0;
    final arg3 = malloc<Uint8>()..value = ignoreTimeScale ? 1 : 0;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_timer, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : SceneTreeTimer(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
      malloc.free(arg2);
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_create_tween =
      resolveMethodBind('SceneTree', 'create_tween', 3426978995);

  Tween? createTween() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_create_tween, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Tween(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_processed_tweens(): unsupported return type "typedarray::Tween".
  static final Pointer<Void> _mb_get_node_count =
      resolveMethodBind('SceneTree', 'get_node_count', 3905245786);

  int getNodeCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_node_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_frame =
      resolveMethodBind('SceneTree', 'get_frame', 3905245786);

  int getFrame() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_frame, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_quit =
      resolveMethodBind('SceneTree', 'quit', 1995695955);

  void quit(int exitCode) {
    final arg0 = malloc<Int64>()..value = exitCode;
    try {
      ptrcallVoid(_mb_quit, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_physics_interpolation_enabled =
      resolveMethodBind('SceneTree', 'set_physics_interpolation_enabled', 2586408642);

  void setPhysicsInterpolationEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_physics_interpolation_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_physics_interpolation_enabled =
      resolveMethodBind('SceneTree', 'is_physics_interpolation_enabled', 36873697);

  bool isPhysicsInterpolationEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_physics_interpolation_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped queue_delete(): an argument type is unsupported.
  static final Pointer<Void> _mb_notify_group_flags =
      resolveMethodBind('SceneTree', 'notify_group_flags', 1245489420);

  void notifyGroupFlags(int callFlags, String group, int notification) {
    final arg0 = malloc<Int64>()..value = callFlags;
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), group);
    final arg2 = malloc<Int64>()..value = notification;
    try {
      ptrcallVoid(_mb_notify_group_flags, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped set_group_flags(): an argument type is unsupported.
  static final Pointer<Void> _mb_notify_group =
      resolveMethodBind('SceneTree', 'notify_group', 2415702435);

  void notifyGroup(String group, int notification) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), group);
    final arg1 = malloc<Int64>()..value = notification;
    try {
      ptrcallVoid(_mb_notify_group, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped set_group(): an argument type is unsupported.
  // Skipped get_nodes_in_group(): unsupported return type "typedarray::Node".
  static final Pointer<Void> _mb_get_first_node_in_group =
      resolveMethodBind('SceneTree', 'get_first_node_in_group', 4071044623);

  Node? getFirstNodeInGroup(String group) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), group);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_first_node_in_group, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_node_count_in_group =
      resolveMethodBind('SceneTree', 'get_node_count_in_group', 2458036349);

  int getNodeCountInGroup(String group) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), group);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_node_count_in_group, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_current_scene =
      resolveMethodBind('SceneTree', 'set_current_scene', 1078189570);

  void setCurrentScene(Node childNode) {
    final arg0 = malloc<Pointer<Void>>()..value = childNode.nativePtr;
    try {
      ptrcallVoid(_mb_set_current_scene, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_scene =
      resolveMethodBind('SceneTree', 'get_current_scene', 3160264692);

  Node? getCurrentScene() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_current_scene, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Node(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_change_scene_to_file =
      resolveMethodBind('SceneTree', 'change_scene_to_file', 166001499);

  int changeSceneToFile(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_change_scene_to_file, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_change_scene_to_packed =
      resolveMethodBind('SceneTree', 'change_scene_to_packed', 107349098);

  int changeSceneToPacked(PackedScene packedScene) {
    final arg0 = malloc<Pointer<Void>>()..value = packedScene.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_change_scene_to_packed, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_change_scene_to_node =
      resolveMethodBind('SceneTree', 'change_scene_to_node', 2584678054);

  int changeSceneToNode(Node node) {
    final arg0 = malloc<Pointer<Void>>()..value = node.nativePtr;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_change_scene_to_node, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_reload_current_scene =
      resolveMethodBind('SceneTree', 'reload_current_scene', 166280745);

  int reloadCurrentScene() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_reload_current_scene, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_unload_current_scene =
      resolveMethodBind('SceneTree', 'unload_current_scene', 3218959716);

  void unloadCurrentScene() {
    try {
      ptrcallVoid(_mb_unload_current_scene, nativePtr, []);
    } finally {
    }
  }

  // Skipped set_multiplayer(): an argument type is unsupported.
  // Skipped get_multiplayer(): an argument type is unsupported.
  static final Pointer<Void> _mb_set_multiplayer_poll_enabled =
      resolveMethodBind('SceneTree', 'set_multiplayer_poll_enabled', 2586408642);

  void setMultiplayerPollEnabled(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_multiplayer_poll_enabled, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_multiplayer_poll_enabled =
      resolveMethodBind('SceneTree', 'is_multiplayer_poll_enabled', 36873697);

  bool isMultiplayerPollEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_multiplayer_poll_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
