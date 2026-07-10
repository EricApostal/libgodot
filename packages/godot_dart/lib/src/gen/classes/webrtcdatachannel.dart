// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class WebRTCDataChannel extends PacketPeer {
  WebRTCDataChannel(super.nativePtr);

  static final Pointer<Void> _mb_poll =
      resolveMethodBind('WebRTCDataChannel', 'poll', 166280745);

  int poll() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_poll, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_close =
      resolveMethodBind('WebRTCDataChannel', 'close', 3218959716);

  void close() {
    try {
      ptrcallVoid(_mb_close, nativePtr, []);
    } finally {
    }
  }

  static final Pointer<Void> _mb_was_string_packet =
      resolveMethodBind('WebRTCDataChannel', 'was_string_packet', 36873697);

  bool wasStringPacket() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_was_string_packet, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_write_mode =
      resolveMethodBind('WebRTCDataChannel', 'set_write_mode', 1999768052);

  void setWriteMode(int writeMode) {
    final arg0 = malloc<Int64>()..value = writeMode;
    try {
      ptrcallVoid(_mb_set_write_mode, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_write_mode =
      resolveMethodBind('WebRTCDataChannel', 'get_write_mode', 2848495172);

  int getWriteMode() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_write_mode, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_ready_state =
      resolveMethodBind('WebRTCDataChannel', 'get_ready_state', 3501143017);

  int getReadyState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_ready_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_label =
      resolveMethodBind('WebRTCDataChannel', 'get_label', 201670096);

  String getLabel() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_label, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_ordered =
      resolveMethodBind('WebRTCDataChannel', 'is_ordered', 36873697);

  bool isOrdered() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_ordered, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_id =
      resolveMethodBind('WebRTCDataChannel', 'get_id', 3905245786);

  int getId() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_id, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_max_packet_life_time =
      resolveMethodBind('WebRTCDataChannel', 'get_max_packet_life_time', 3905245786);

  int getMaxPacketLifeTime() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_packet_life_time, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_max_retransmits =
      resolveMethodBind('WebRTCDataChannel', 'get_max_retransmits', 3905245786);

  int getMaxRetransmits() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_retransmits, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_protocol =
      resolveMethodBind('WebRTCDataChannel', 'get_protocol', 201670096);

  String getProtocol() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_protocol, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_negotiated =
      resolveMethodBind('WebRTCDataChannel', 'is_negotiated', 36873697);

  bool isNegotiated() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_negotiated, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_buffered_amount =
      resolveMethodBind('WebRTCDataChannel', 'get_buffered_amount', 3905245786);

  int getBufferedAmount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_buffered_amount, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
