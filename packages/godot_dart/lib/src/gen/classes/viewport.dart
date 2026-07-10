// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Viewport extends Node {
  Viewport(super.nativePtr);

  static final Pointer<Void> _mb_set_world_2d =
      resolveMethodBind('Viewport', 'set_world_2d', 2736080068);

  void setWorld2d(World2D world2d) {
    final arg0 = malloc<Pointer<Void>>()..value = world2d.nativePtr;
    try {
      ptrcallVoid(_mb_set_world_2d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_world_2d =
      resolveMethodBind('Viewport', 'get_world_2d', 2339128592);

  World2D? getWorld2d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_world_2d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : World2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_world_2d =
      resolveMethodBind('Viewport', 'find_world_2d', 2339128592);

  World2D? findWorld2d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_world_2d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : World2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_canvas_transform =
      resolveMethodBind('Viewport', 'set_canvas_transform', 2761652528);

  void setCanvasTransform(Transform2D xform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    xform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_canvas_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_canvas_transform =
      resolveMethodBind('Viewport', 'get_canvas_transform', 3814499831);

  Transform2D getCanvasTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_canvas_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_global_canvas_transform =
      resolveMethodBind('Viewport', 'set_global_canvas_transform', 2761652528);

  void setGlobalCanvasTransform(Transform2D xform) {
    final arg0 = malloc<Uint8>(Transform2D.nativeSize);
    xform.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_set_global_canvas_transform, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_global_canvas_transform =
      resolveMethodBind('Viewport', 'get_global_canvas_transform', 3814499831);

  Transform2D getGlobalCanvasTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_global_canvas_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_stretch_transform =
      resolveMethodBind('Viewport', 'get_stretch_transform', 3814499831);

  Transform2D getStretchTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_stretch_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_final_transform =
      resolveMethodBind('Viewport', 'get_final_transform', 3814499831);

  Transform2D getFinalTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_final_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_screen_transform =
      resolveMethodBind('Viewport', 'get_screen_transform', 3814499831);

  Transform2D getScreenTransform() {
    try {
      final ret = malloc<Uint8>(Transform2D.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_screen_transform, nativePtr, [], ret.cast());
        return Transform2D.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_visible_rect =
      resolveMethodBind('Viewport', 'get_visible_rect', 1639390495);

  Rect2 getVisibleRect() {
    try {
      final ret = malloc<Uint8>(Rect2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_visible_rect, nativePtr, [], ret.cast());
        return Rect2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_transparent_background =
      resolveMethodBind('Viewport', 'set_transparent_background', 2586408642);

  void setTransparentBackground(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_transparent_background, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_transparent_background =
      resolveMethodBind('Viewport', 'has_transparent_background', 36873697);

  bool hasTransparentBackground() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_transparent_background, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_hdr_2d =
      resolveMethodBind('Viewport', 'set_use_hdr_2d', 2586408642);

  void setUseHdr2d(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_hdr_2d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_hdr_2d =
      resolveMethodBind('Viewport', 'is_using_hdr_2d', 36873697);

  bool isUsingHdr2d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_hdr_2d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_msaa_2d =
      resolveMethodBind('Viewport', 'set_msaa_2d', 3330258708);

  void setMsaa2d(int msaa) {
    final arg0 = malloc<Int64>()..value = msaa;
    try {
      ptrcallVoid(_mb_set_msaa_2d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msaa_2d =
      resolveMethodBind('Viewport', 'get_msaa_2d', 2542055527);

  int getMsaa2d() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_msaa_2d, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_msaa_3d =
      resolveMethodBind('Viewport', 'set_msaa_3d', 3330258708);

  void setMsaa3d(int msaa) {
    final arg0 = malloc<Int64>()..value = msaa;
    try {
      ptrcallVoid(_mb_set_msaa_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_msaa_3d =
      resolveMethodBind('Viewport', 'get_msaa_3d', 2542055527);

  int getMsaa3d() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_msaa_3d, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_screen_space_aa =
      resolveMethodBind('Viewport', 'set_screen_space_aa', 3544169389);

  void setScreenSpaceAa(int screenSpaceAa) {
    final arg0 = malloc<Int64>()..value = screenSpaceAa;
    try {
      ptrcallVoid(_mb_set_screen_space_aa, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_screen_space_aa =
      resolveMethodBind('Viewport', 'get_screen_space_aa', 1390814124);

  int getScreenSpaceAa() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_screen_space_aa, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_taa =
      resolveMethodBind('Viewport', 'set_use_taa', 2586408642);

  void setUseTaa(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_taa, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_taa =
      resolveMethodBind('Viewport', 'is_using_taa', 36873697);

  bool isUsingTaa() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_taa, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_debanding =
      resolveMethodBind('Viewport', 'set_use_debanding', 2586408642);

  void setUseDebanding(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_debanding, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_debanding =
      resolveMethodBind('Viewport', 'is_using_debanding', 36873697);

  bool isUsingDebanding() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_debanding, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_occlusion_culling =
      resolveMethodBind('Viewport', 'set_use_occlusion_culling', 2586408642);

  void setUseOcclusionCulling(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_occlusion_culling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_occlusion_culling =
      resolveMethodBind('Viewport', 'is_using_occlusion_culling', 36873697);

  bool isUsingOcclusionCulling() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_occlusion_culling, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_debug_draw =
      resolveMethodBind('Viewport', 'set_debug_draw', 1970246205);

  void setDebugDraw(int debugDraw) {
    final arg0 = malloc<Int64>()..value = debugDraw;
    try {
      ptrcallVoid(_mb_set_debug_draw, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_debug_draw =
      resolveMethodBind('Viewport', 'get_debug_draw', 579191299);

  int getDebugDraw() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_debug_draw, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_oversampling =
      resolveMethodBind('Viewport', 'set_use_oversampling', 2586408642);

  void setUseOversampling(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_oversampling, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_oversampling =
      resolveMethodBind('Viewport', 'is_using_oversampling', 36873697);

  bool isUsingOversampling() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_oversampling, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_oversampling_override =
      resolveMethodBind('Viewport', 'set_oversampling_override', 373806689);

  void setOversamplingOverride(double oversampling) {
    final arg0 = malloc<Double>()..value = oversampling;
    try {
      ptrcallVoid(_mb_set_oversampling_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_oversampling_override =
      resolveMethodBind('Viewport', 'get_oversampling_override', 1740695150);

  double getOversamplingOverride() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_oversampling_override, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_oversampling =
      resolveMethodBind('Viewport', 'get_oversampling', 1740695150);

  double getOversampling() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_oversampling, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_render_info =
      resolveMethodBind('Viewport', 'get_render_info', 481977019);

  int getRenderInfo(int type, int info) {
    final arg0 = malloc<Int64>()..value = type;
    final arg1 = malloc<Int64>()..value = info;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_render_info, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_texture =
      resolveMethodBind('Viewport', 'get_texture', 1746695840);

  ViewportTexture? getTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : ViewportTexture(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_object_picking =
      resolveMethodBind('Viewport', 'set_physics_object_picking', 2586408642);

  void setPhysicsObjectPicking(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_physics_object_picking, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_object_picking =
      resolveMethodBind('Viewport', 'get_physics_object_picking', 2240911060);

  bool getPhysicsObjectPicking() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_physics_object_picking, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_object_picking_sort =
      resolveMethodBind('Viewport', 'set_physics_object_picking_sort', 2586408642);

  void setPhysicsObjectPickingSort(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_physics_object_picking_sort, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_object_picking_sort =
      resolveMethodBind('Viewport', 'get_physics_object_picking_sort', 2240911060);

  bool getPhysicsObjectPickingSort() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_physics_object_picking_sort, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_physics_object_picking_first_only =
      resolveMethodBind('Viewport', 'set_physics_object_picking_first_only', 2586408642);

  void setPhysicsObjectPickingFirstOnly(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_physics_object_picking_first_only, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_physics_object_picking_first_only =
      resolveMethodBind('Viewport', 'get_physics_object_picking_first_only', 2240911060);

  bool getPhysicsObjectPickingFirstOnly() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_physics_object_picking_first_only, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_viewport_rid(): unsupported return type "RID".
  static final Pointer<Void> _mb_push_text_input =
      resolveMethodBind('Viewport', 'push_text_input', 83702148);

  void pushTextInput(String text) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), text);
    try {
      ptrcallVoid(_mb_push_text_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_push_input =
      resolveMethodBind('Viewport', 'push_input', 3644664830);

  void pushInput(InputEvent event, bool inLocalCoords) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    final arg1 = malloc<Uint8>()..value = inLocalCoords ? 1 : 0;
    try {
      ptrcallVoid(_mb_push_input, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_push_unhandled_input =
      resolveMethodBind('Viewport', 'push_unhandled_input', 3644664830);

  void pushUnhandledInput(InputEvent event, bool inLocalCoords) {
    final arg0 = malloc<Pointer<Void>>()..value = event.nativePtr;
    final arg1 = malloc<Uint8>()..value = inLocalCoords ? 1 : 0;
    try {
      ptrcallVoid(_mb_push_unhandled_input, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_notify_mouse_entered =
      resolveMethodBind('Viewport', 'notify_mouse_entered', 3218959716);

  void notifyMouseEntered() {
    try {
      ptrcallVoid(_mb_notify_mouse_entered, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_notify_mouse_exited =
      resolveMethodBind('Viewport', 'notify_mouse_exited', 3218959716);

  void notifyMouseExited() {
    try {
      ptrcallVoid(_mb_notify_mouse_exited, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_mouse_position =
      resolveMethodBind('Viewport', 'get_mouse_position', 3341600327);

  Vector2 getMousePosition() {
    try {
      final ret = malloc<Uint8>(Vector2.nativeSize);
      try {
        ptrcallWithReturn(_mb_get_mouse_position, nativePtr, [], ret.cast());
        return Vector2.readFrom(ret, 0);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_warp_mouse =
      resolveMethodBind('Viewport', 'warp_mouse', 743155724);

  void warpMouse(Vector2 position) {
    final arg0 = malloc<Uint8>(Vector2.nativeSize);
    position.writeTo(arg0, 0);
    try {
      ptrcallVoid(_mb_warp_mouse, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_update_mouse_cursor_state =
      resolveMethodBind('Viewport', 'update_mouse_cursor_state', 3218959716);

  void updateMouseCursorState() {
    try {
      ptrcallVoid(_mb_update_mouse_cursor_state, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_gui_cancel_drag =
      resolveMethodBind('Viewport', 'gui_cancel_drag', 3218959716);

  void guiCancelDrag() {
    try {
      ptrcallVoid(_mb_gui_cancel_drag, nativePtr, []);
    } finally {
    }
  }

  // Skipped gui_get_drag_data(): unsupported return type "Variant".
  static final Pointer<Void> _mb_gui_get_drag_description =
      resolveMethodBind('Viewport', 'gui_get_drag_description', 201670096);

  String guiGetDragDescription() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_gui_get_drag_description, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_gui_set_drag_description =
      resolveMethodBind('Viewport', 'gui_set_drag_description', 83702148);

  void guiSetDragDescription(String description) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), description);
    try {
      ptrcallVoid(_mb_gui_set_drag_description, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_gui_is_dragging =
      resolveMethodBind('Viewport', 'gui_is_dragging', 36873697);

  bool guiIsDragging() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_gui_is_dragging, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_gui_is_drag_successful =
      resolveMethodBind('Viewport', 'gui_is_drag_successful', 36873697);

  bool guiIsDragSuccessful() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_gui_is_drag_successful, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_gui_release_focus =
      resolveMethodBind('Viewport', 'gui_release_focus', 3218959716);

  void guiReleaseFocus() {
    try {
      ptrcallVoid(_mb_gui_release_focus, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_gui_get_focus_owner =
      resolveMethodBind('Viewport', 'gui_get_focus_owner', 2783021301);

  Control? guiGetFocusOwner() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_gui_get_focus_owner, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_gui_get_hovered_control =
      resolveMethodBind('Viewport', 'gui_get_hovered_control', 2783021301);

  Control? guiGetHoveredControl() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_gui_get_hovered_control, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Control(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disable_input =
      resolveMethodBind('Viewport', 'set_disable_input', 2586408642);

  void setDisableInput(bool disable) {
    final arg0 = malloc<Uint8>()..value = disable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_input, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_input_disabled =
      resolveMethodBind('Viewport', 'is_input_disabled', 36873697);

  bool isInputDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_input_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_positional_shadow_atlas_size =
      resolveMethodBind('Viewport', 'set_positional_shadow_atlas_size', 1286410249);

  void setPositionalShadowAtlasSize(int size) {
    final arg0 = malloc<Int64>()..value = size;
    try {
      ptrcallVoid(_mb_set_positional_shadow_atlas_size, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_positional_shadow_atlas_size =
      resolveMethodBind('Viewport', 'get_positional_shadow_atlas_size', 3905245786);

  int getPositionalShadowAtlasSize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_positional_shadow_atlas_size, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_positional_shadow_atlas_16_bits =
      resolveMethodBind('Viewport', 'set_positional_shadow_atlas_16_bits', 2586408642);

  void setPositionalShadowAtlas16Bits(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_positional_shadow_atlas_16_bits, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_positional_shadow_atlas_16_bits =
      resolveMethodBind('Viewport', 'get_positional_shadow_atlas_16_bits', 36873697);

  bool getPositionalShadowAtlas16Bits() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_positional_shadow_atlas_16_bits, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_snap_controls_to_pixels =
      resolveMethodBind('Viewport', 'set_snap_controls_to_pixels', 2586408642);

  void setSnapControlsToPixels(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_snap_controls_to_pixels, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_snap_controls_to_pixels_enabled =
      resolveMethodBind('Viewport', 'is_snap_controls_to_pixels_enabled', 36873697);

  bool isSnapControlsToPixelsEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_snap_controls_to_pixels_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_snap_2d_transforms_to_pixel =
      resolveMethodBind('Viewport', 'set_snap_2d_transforms_to_pixel', 2586408642);

  void setSnap2dTransformsToPixel(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_snap_2d_transforms_to_pixel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_snap_2d_transforms_to_pixel_enabled =
      resolveMethodBind('Viewport', 'is_snap_2d_transforms_to_pixel_enabled', 36873697);

  bool isSnap2dTransformsToPixelEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_snap_2d_transforms_to_pixel_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_snap_2d_vertices_to_pixel =
      resolveMethodBind('Viewport', 'set_snap_2d_vertices_to_pixel', 2586408642);

  void setSnap2dVerticesToPixel(bool enabled) {
    final arg0 = malloc<Uint8>()..value = enabled ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_snap_2d_vertices_to_pixel, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_snap_2d_vertices_to_pixel_enabled =
      resolveMethodBind('Viewport', 'is_snap_2d_vertices_to_pixel_enabled', 36873697);

  bool isSnap2dVerticesToPixelEnabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_snap_2d_vertices_to_pixel_enabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_positional_shadow_atlas_quadrant_subdiv =
      resolveMethodBind('Viewport', 'set_positional_shadow_atlas_quadrant_subdiv', 2596956071);

  void setPositionalShadowAtlasQuadrantSubdiv(int quadrant, int subdiv) {
    final arg0 = malloc<Int64>()..value = quadrant;
    final arg1 = malloc<Int64>()..value = subdiv;
    try {
      ptrcallVoid(_mb_set_positional_shadow_atlas_quadrant_subdiv, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_positional_shadow_atlas_quadrant_subdiv =
      resolveMethodBind('Viewport', 'get_positional_shadow_atlas_quadrant_subdiv', 2676778355);

  int getPositionalShadowAtlasQuadrantSubdiv(int quadrant) {
    final arg0 = malloc<Int64>()..value = quadrant;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_positional_shadow_atlas_quadrant_subdiv, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_input_as_handled =
      resolveMethodBind('Viewport', 'set_input_as_handled', 3218959716);

  void setInputAsHandled() {
    try {
      ptrcallVoid(_mb_set_input_as_handled, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_input_handled =
      resolveMethodBind('Viewport', 'is_input_handled', 36873697);

  bool isInputHandled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_input_handled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_handle_input_locally =
      resolveMethodBind('Viewport', 'set_handle_input_locally', 2586408642);

  void setHandleInputLocally(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_handle_input_locally, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_handling_input_locally =
      resolveMethodBind('Viewport', 'is_handling_input_locally', 36873697);

  bool isHandlingInputLocally() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_handling_input_locally, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_default_canvas_item_texture_filter =
      resolveMethodBind('Viewport', 'set_default_canvas_item_texture_filter', 2815160100);

  void setDefaultCanvasItemTextureFilter(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_default_canvas_item_texture_filter, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_canvas_item_texture_filter =
      resolveMethodBind('Viewport', 'get_default_canvas_item_texture_filter', 896601198);

  int getDefaultCanvasItemTextureFilter() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_canvas_item_texture_filter, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_embedding_subwindows =
      resolveMethodBind('Viewport', 'set_embedding_subwindows', 2586408642);

  void setEmbeddingSubwindows(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_embedding_subwindows, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_embedding_subwindows =
      resolveMethodBind('Viewport', 'is_embedding_subwindows', 36873697);

  bool isEmbeddingSubwindows() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_embedding_subwindows, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped get_embedded_subwindows(): unsupported return type "typedarray::Window".
  static final Pointer<Void> _mb_set_drag_threshold =
      resolveMethodBind('Viewport', 'set_drag_threshold', 1286410249);

  void setDragThreshold(int threshold) {
    final arg0 = malloc<Int64>()..value = threshold;
    try {
      ptrcallVoid(_mb_set_drag_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_drag_threshold =
      resolveMethodBind('Viewport', 'get_drag_threshold', 3905245786);

  int getDragThreshold() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_drag_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_canvas_cull_mask =
      resolveMethodBind('Viewport', 'set_canvas_cull_mask', 1286410249);

  void setCanvasCullMask(int mask) {
    final arg0 = malloc<Int64>()..value = mask;
    try {
      ptrcallVoid(_mb_set_canvas_cull_mask, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_canvas_cull_mask =
      resolveMethodBind('Viewport', 'get_canvas_cull_mask', 3905245786);

  int getCanvasCullMask() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_canvas_cull_mask, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_canvas_cull_mask_bit =
      resolveMethodBind('Viewport', 'set_canvas_cull_mask_bit', 300928843);

  void setCanvasCullMaskBit(int layer, bool enable) {
    final arg0 = malloc<Int64>()..value = layer;
    final arg1 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_canvas_cull_mask_bit, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_canvas_cull_mask_bit =
      resolveMethodBind('Viewport', 'get_canvas_cull_mask_bit', 1116898809);

  bool getCanvasCullMaskBit(int layer) {
    final arg0 = malloc<Int64>()..value = layer;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_canvas_cull_mask_bit, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_default_canvas_item_texture_repeat =
      resolveMethodBind('Viewport', 'set_default_canvas_item_texture_repeat', 1658513413);

  void setDefaultCanvasItemTextureRepeat(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_default_canvas_item_texture_repeat, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_default_canvas_item_texture_repeat =
      resolveMethodBind('Viewport', 'get_default_canvas_item_texture_repeat', 4049774160);

  int getDefaultCanvasItemTextureRepeat() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_default_canvas_item_texture_repeat, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdf_oversize =
      resolveMethodBind('Viewport', 'set_sdf_oversize', 2574159017);

  void setSdfOversize(int oversize) {
    final arg0 = malloc<Int64>()..value = oversize;
    try {
      ptrcallVoid(_mb_set_sdf_oversize, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdf_oversize =
      resolveMethodBind('Viewport', 'get_sdf_oversize', 2631427510);

  int getSdfOversize() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sdf_oversize, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_sdf_scale =
      resolveMethodBind('Viewport', 'set_sdf_scale', 1402773951);

  void setSdfScale(int scale) {
    final arg0 = malloc<Int64>()..value = scale;
    try {
      ptrcallVoid(_mb_set_sdf_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_sdf_scale =
      resolveMethodBind('Viewport', 'get_sdf_scale', 3162688184);

  int getSdfScale() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_sdf_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_mesh_lod_threshold =
      resolveMethodBind('Viewport', 'set_mesh_lod_threshold', 373806689);

  void setMeshLodThreshold(double pixels) {
    final arg0 = malloc<Double>()..value = pixels;
    try {
      ptrcallVoid(_mb_set_mesh_lod_threshold, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_mesh_lod_threshold =
      resolveMethodBind('Viewport', 'get_mesh_lod_threshold', 1740695150);

  double getMeshLodThreshold() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_mesh_lod_threshold, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_as_audio_listener_2d =
      resolveMethodBind('Viewport', 'set_as_audio_listener_2d', 2586408642);

  void setAsAudioListener2d(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_audio_listener_2d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_audio_listener_2d =
      resolveMethodBind('Viewport', 'is_audio_listener_2d', 36873697);

  bool isAudioListener2d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_audio_listener_2d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_audio_listener_2d =
      resolveMethodBind('Viewport', 'get_audio_listener_2d', 1840977180);

  AudioListener2D? getAudioListener2d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_audio_listener_2d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioListener2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_camera_2d =
      resolveMethodBind('Viewport', 'get_camera_2d', 3551466917);

  Camera2D? getCamera2d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_camera_2d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Camera2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_world_3d =
      resolveMethodBind('Viewport', 'set_world_3d', 1400875337);

  void setWorld3d(World3D world3d) {
    final arg0 = malloc<Pointer<Void>>()..value = world3d.nativePtr;
    try {
      ptrcallVoid(_mb_set_world_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_world_3d =
      resolveMethodBind('Viewport', 'get_world_3d', 317588385);

  World3D? getWorld3d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_world_3d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : World3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_find_world_3d =
      resolveMethodBind('Viewport', 'find_world_3d', 317588385);

  World3D? findWorld3d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_find_world_3d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : World3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_own_world_3d =
      resolveMethodBind('Viewport', 'set_use_own_world_3d', 2586408642);

  void setUseOwnWorld3d(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_own_world_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_own_world_3d =
      resolveMethodBind('Viewport', 'is_using_own_world_3d', 36873697);

  bool isUsingOwnWorld3d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_own_world_3d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_audio_listener_3d =
      resolveMethodBind('Viewport', 'get_audio_listener_3d', 3472246991);

  AudioListener3D? getAudioListener3d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_audio_listener_3d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : AudioListener3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_camera_3d =
      resolveMethodBind('Viewport', 'get_camera_3d', 2285090890);

  Camera3D? getCamera3d() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_camera_3d, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Camera3D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_as_audio_listener_3d =
      resolveMethodBind('Viewport', 'set_as_audio_listener_3d', 2586408642);

  void setAsAudioListener3d(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_as_audio_listener_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_audio_listener_3d =
      resolveMethodBind('Viewport', 'is_audio_listener_3d', 36873697);

  bool isAudioListener3d() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_audio_listener_3d, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_disable_3d =
      resolveMethodBind('Viewport', 'set_disable_3d', 2586408642);

  void setDisable3d(bool disable) {
    final arg0 = malloc<Uint8>()..value = disable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_disable_3d, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_3d_disabled =
      resolveMethodBind('Viewport', 'is_3d_disabled', 36873697);

  bool is3dDisabled() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_3d_disabled, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_xr =
      resolveMethodBind('Viewport', 'set_use_xr', 2586408642);

  void setUseXr(bool use) {
    final arg0 = malloc<Uint8>()..value = use ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_xr, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_using_xr =
      resolveMethodBind('Viewport', 'is_using_xr', 36873697);

  bool isUsingXr() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_using_xr, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scaling_3d_mode =
      resolveMethodBind('Viewport', 'set_scaling_3d_mode', 1531597597);

  void setScaling3dMode(int scaling3dMode) {
    final arg0 = malloc<Int64>()..value = scaling3dMode;
    try {
      ptrcallVoid(_mb_set_scaling_3d_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scaling_3d_mode =
      resolveMethodBind('Viewport', 'get_scaling_3d_mode', 2597660574);

  int getScaling3dMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_scaling_3d_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_scaling_3d_scale =
      resolveMethodBind('Viewport', 'set_scaling_3d_scale', 373806689);

  void setScaling3dScale(double scale) {
    final arg0 = malloc<Double>()..value = scale;
    try {
      ptrcallVoid(_mb_set_scaling_3d_scale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_scaling_3d_scale =
      resolveMethodBind('Viewport', 'get_scaling_3d_scale', 1740695150);

  double getScaling3dScale() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_scaling_3d_scale, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_fsr_sharpness =
      resolveMethodBind('Viewport', 'set_fsr_sharpness', 373806689);

  void setFsrSharpness(double fsrSharpness) {
    final arg0 = malloc<Double>()..value = fsrSharpness;
    try {
      ptrcallVoid(_mb_set_fsr_sharpness, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_fsr_sharpness =
      resolveMethodBind('Viewport', 'get_fsr_sharpness', 1740695150);

  double getFsrSharpness() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_fsr_sharpness, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_texture_mipmap_bias =
      resolveMethodBind('Viewport', 'set_texture_mipmap_bias', 373806689);

  void setTextureMipmapBias(double textureMipmapBias) {
    final arg0 = malloc<Double>()..value = textureMipmapBias;
    try {
      ptrcallVoid(_mb_set_texture_mipmap_bias, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_texture_mipmap_bias =
      resolveMethodBind('Viewport', 'get_texture_mipmap_bias', 1740695150);

  double getTextureMipmapBias() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_texture_mipmap_bias, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_anisotropic_filtering_level =
      resolveMethodBind('Viewport', 'set_anisotropic_filtering_level', 3445583046);

  void setAnisotropicFilteringLevel(int anisotropicFilteringLevel) {
    final arg0 = malloc<Int64>()..value = anisotropicFilteringLevel;
    try {
      ptrcallVoid(_mb_set_anisotropic_filtering_level, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_anisotropic_filtering_level =
      resolveMethodBind('Viewport', 'get_anisotropic_filtering_level', 3991528932);

  int getAnisotropicFilteringLevel() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_anisotropic_filtering_level, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_mode =
      resolveMethodBind('Viewport', 'set_vrs_mode', 2749867817);

  void setVrsMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_vrs_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vrs_mode =
      resolveMethodBind('Viewport', 'get_vrs_mode', 349660525);

  int getVrsMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vrs_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_update_mode =
      resolveMethodBind('Viewport', 'set_vrs_update_mode', 3182412319);

  void setVrsUpdateMode(int mode) {
    final arg0 = malloc<Int64>()..value = mode;
    try {
      ptrcallVoid(_mb_set_vrs_update_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vrs_update_mode =
      resolveMethodBind('Viewport', 'get_vrs_update_mode', 2255951583);

  int getVrsUpdateMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_vrs_update_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_vrs_texture =
      resolveMethodBind('Viewport', 'set_vrs_texture', 4051416890);

  void setVrsTexture(Texture2D texture) {
    final arg0 = malloc<Pointer<Void>>()..value = texture.nativePtr;
    try {
      ptrcallVoid(_mb_set_vrs_texture, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_vrs_texture =
      resolveMethodBind('Viewport', 'get_vrs_texture', 3635182373);

  Texture2D? getVrsTexture() {
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_vrs_texture, nativePtr, [], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : Texture2D(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
