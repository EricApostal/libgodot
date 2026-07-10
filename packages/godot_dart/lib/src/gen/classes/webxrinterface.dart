// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebXRInterface extends XRInterface {
  WebXRInterface(super.nativePtr);

  static final Pointer<Void> _mb_is_session_supported =
      resolveMethodBind('WebXRInterface', 'is_session_supported', 83702148);

  void isSessionSupported(String sessionMode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), sessionMode);
    try {
      ptrcallVoid(_mb_is_session_supported, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_session_mode =
      resolveMethodBind('WebXRInterface', 'set_session_mode', 83702148);

  void setSessionMode(String sessionMode) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), sessionMode);
    try {
      ptrcallVoid(_mb_set_session_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_session_mode =
      resolveMethodBind('WebXRInterface', 'get_session_mode', 201670096);

  String getSessionMode() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_session_mode, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_required_features =
      resolveMethodBind('WebXRInterface', 'set_required_features', 83702148);

  void setRequiredFeatures(String requiredFeatures) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), requiredFeatures);
    try {
      ptrcallVoid(_mb_set_required_features, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_required_features =
      resolveMethodBind('WebXRInterface', 'get_required_features', 201670096);

  String getRequiredFeatures() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_required_features, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_optional_features =
      resolveMethodBind('WebXRInterface', 'set_optional_features', 83702148);

  void setOptionalFeatures(String optionalFeatures) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), optionalFeatures);
    try {
      ptrcallVoid(_mb_set_optional_features, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_optional_features =
      resolveMethodBind('WebXRInterface', 'get_optional_features', 201670096);

  String getOptionalFeatures() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_optional_features, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_reference_space_type =
      resolveMethodBind('WebXRInterface', 'get_reference_space_type', 201670096);

  String getReferenceSpaceType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_reference_space_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_enabled_features =
      resolveMethodBind('WebXRInterface', 'get_enabled_features', 201670096);

  String getEnabledFeatures() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_enabled_features, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_requested_reference_space_types =
      resolveMethodBind('WebXRInterface', 'set_requested_reference_space_types', 83702148);

  void setRequestedReferenceSpaceTypes(String requestedReferenceSpaceTypes) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), requestedReferenceSpaceTypes);
    try {
      ptrcallVoid(_mb_set_requested_reference_space_types, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_requested_reference_space_types =
      resolveMethodBind('WebXRInterface', 'get_requested_reference_space_types', 201670096);

  String getRequestedReferenceSpaceTypes() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_requested_reference_space_types, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_input_source_active =
      resolveMethodBind('WebXRInterface', 'is_input_source_active', 1116898809);

  bool isInputSourceActive(int inputSourceId) {
    final arg0 = malloc<Int64>()..value = inputSourceId;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_input_source_active, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_source_tracker =
      resolveMethodBind('WebXRInterface', 'get_input_source_tracker', 399776966);

  XRControllerTracker? getInputSourceTracker(int inputSourceId) {
    final arg0 = malloc<Int64>()..value = inputSourceId;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_input_source_tracker, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : XRControllerTracker(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_input_source_target_ray_mode =
      resolveMethodBind('WebXRInterface', 'get_input_source_target_ray_mode', 2852387453);

  int getInputSourceTargetRayMode(int inputSourceId) {
    final arg0 = malloc<Int64>()..value = inputSourceId;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_input_source_target_ray_mode, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_visibility_state =
      resolveMethodBind('WebXRInterface', 'get_visibility_state', 201670096);

  String getVisibilityState() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_visibility_state, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_display_refresh_rate =
      resolveMethodBind('WebXRInterface', 'get_display_refresh_rate', 1740695150);

  double getDisplayRefreshRate() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_display_refresh_rate, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_display_refresh_rate =
      resolveMethodBind('WebXRInterface', 'set_display_refresh_rate', 373806689);

  void setDisplayRefreshRate(double refreshRate) {
    final arg0 = malloc<Double>()..value = refreshRate;
    try {
      ptrcallVoid(_mb_set_display_refresh_rate, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_available_display_refresh_rates(): unsupported return type "Array".
}
