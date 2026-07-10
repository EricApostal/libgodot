// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class CameraServer extends GodotObject {
  CameraServer(super.nativePtr);

  /// Constructs a brand-new engine-owned CameraServer instance
  /// (via classdb_construct_object3), not an existing one.
  factory CameraServer.create() {
    return CameraServer(resolveClassConstructor('CameraServer'));
  }

  static final Pointer<Void> _mb_set_monitoring_feeds =
      resolveMethodBind('CameraServer', 'set_monitoring_feeds', 2586408642);

  void setMonitoringFeeds(bool isMonitoringFeeds) {
    final arg0 = malloc<Uint8>()..value = isMonitoringFeeds ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_monitoring_feeds, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_monitoring_feeds =
      resolveMethodBind('CameraServer', 'is_monitoring_feeds', 36873697);

  bool isMonitoringFeeds() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_monitoring_feeds, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_feed =
      resolveMethodBind('CameraServer', 'get_feed', 361927068);

  CameraFeed? getFeed(int index) {
    final arg0 = malloc<Int64>()..value = index;
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_get_feed, nativePtr, [arg0.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : CameraFeed(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_feed_count =
      resolveMethodBind('CameraServer', 'get_feed_count', 2455072627);

  int getFeedCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_feed_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped feeds(): unsupported return type "typedarray::CameraFeed".
  static final Pointer<Void> _mb_add_feed =
      resolveMethodBind('CameraServer', 'add_feed', 3204782488);

  void addFeed(CameraFeed feed) {
    final arg0 = malloc<Pointer<Void>>()..value = feed.nativePtr;
    try {
      ptrcallVoid(_mb_add_feed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_remove_feed =
      resolveMethodBind('CameraServer', 'remove_feed', 3204782488);

  void removeFeed(CameraFeed feed) {
    final arg0 = malloc<Pointer<Void>>()..value = feed.nativePtr;
    try {
      ptrcallVoid(_mb_remove_feed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

}
