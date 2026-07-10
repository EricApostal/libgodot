// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Time extends GodotObject {
  Time(super.nativePtr);

  static Time? _singleton;
  static Time get singleton {
    return _singleton ??= Time(resolveSingleton('Time'));
  }

  /// Constructs a brand-new engine-owned Time instance
  /// (via classdb_construct_object3), not an existing one.
  factory Time.create() {
    return Time(resolveClassConstructor('Time'));
  }

  // Skipped get_datetime_dict_from_unix_time(): unsupported return type "Dictionary".
  // Skipped get_date_dict_from_unix_time(): unsupported return type "Dictionary".
  // Skipped get_time_dict_from_unix_time(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_datetime_string_from_unix_time =
      resolveMethodBind('Time', 'get_datetime_string_from_unix_time', 2311239925);

  String getDatetimeStringFromUnixTime(int unixTimeVal, bool useSpace) {
    final arg0 = malloc<Int64>()..value = unixTimeVal;
    final arg1 = malloc<Uint8>()..value = useSpace ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_datetime_string_from_unix_time, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_date_string_from_unix_time =
      resolveMethodBind('Time', 'get_date_string_from_unix_time', 844755477);

  String getDateStringFromUnixTime(int unixTimeVal) {
    final arg0 = malloc<Int64>()..value = unixTimeVal;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_date_string_from_unix_time, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_string_from_unix_time =
      resolveMethodBind('Time', 'get_time_string_from_unix_time', 844755477);

  String getTimeStringFromUnixTime(int unixTimeVal) {
    final arg0 = malloc<Int64>()..value = unixTimeVal;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_time_string_from_unix_time, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_datetime_dict_from_datetime_string(): unsupported return type "Dictionary".
  // Skipped get_datetime_string_from_datetime_dict(): an argument type is unsupported.
  // Skipped get_unix_time_from_datetime_dict(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_unix_time_from_datetime_string =
      resolveMethodBind('Time', 'get_unix_time_from_datetime_string', 1321353865);

  int getUnixTimeFromDatetimeString(String datetime) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), datetime);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_unix_time_from_datetime_string, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_offset_string_from_offset_minutes =
      resolveMethodBind('Time', 'get_offset_string_from_offset_minutes', 844755477);

  String getOffsetStringFromOffsetMinutes(int offsetMinutes) {
    final arg0 = malloc<Int64>()..value = offsetMinutes;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_offset_string_from_offset_minutes, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_datetime_dict_from_system(): unsupported return type "Dictionary".
  // Skipped get_date_dict_from_system(): unsupported return type "Dictionary".
  // Skipped get_time_dict_from_system(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_datetime_string_from_system =
      resolveMethodBind('Time', 'get_datetime_string_from_system', 1136425492);

  String getDatetimeStringFromSystem(bool utc, bool useSpace) {
    final arg0 = malloc<Uint8>()..value = utc ? 1 : 0;
    final arg1 = malloc<Uint8>()..value = useSpace ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_datetime_string_from_system, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_date_string_from_system =
      resolveMethodBind('Time', 'get_date_string_from_system', 1162154673);

  String getDateStringFromSystem(bool utc) {
    final arg0 = malloc<Uint8>()..value = utc ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_date_string_from_system, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_time_string_from_system =
      resolveMethodBind('Time', 'get_time_string_from_system', 1162154673);

  String getTimeStringFromSystem(bool utc) {
    final arg0 = malloc<Uint8>()..value = utc ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_time_string_from_system, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  // Skipped get_time_zone_from_system(): unsupported return type "Dictionary".
  static final Pointer<Void> _mb_get_unix_time_from_system =
      resolveMethodBind('Time', 'get_unix_time_from_system', 1740695150);

  double getUnixTimeFromSystem() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_unix_time_from_system, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_ticks_msec =
      resolveMethodBind('Time', 'get_ticks_msec', 3905245786);

  int getTicksMsec() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ticks_msec, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_ticks_usec =
      resolveMethodBind('Time', 'get_ticks_usec', 3905245786);

  int getTicksUsec() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ticks_usec, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
