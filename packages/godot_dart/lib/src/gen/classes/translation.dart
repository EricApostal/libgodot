// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class Translation extends Resource {
  Translation(super.nativePtr);

  /// Constructs a brand-new engine-owned Translation instance
  /// (via classdb_construct_object3), not an existing one.
  factory Translation.create() {
    return Translation(resolveClassConstructor('Translation'));
  }

  // Skipped virtual _get_plural_message(): dart name "getPluralMessage" collides with an existing member.
  // Skipped virtual _get_message(): dart name "getMessage" collides with an existing member.
  static final Pointer<Void> _mb_set_locale =
      resolveMethodBind('Translation', 'set_locale', 83702148);

  void setLocale(String locale) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), locale);
    try {
      ptrcallVoid(_mb_set_locale, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_locale =
      resolveMethodBind('Translation', 'get_locale', 201670096);

  String getLocale() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_locale, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_add_message =
      resolveMethodBind('Translation', 'add_message', 3898530326);

  void addMessage(String srcMessage, String xlatedMessage, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), srcMessage);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), xlatedMessage);
    final arg2 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg2.cast(), context);
    try {
      ptrcallVoid(_mb_add_message, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      BuiltinMarshal.destroyStringName(arg2.cast());
      malloc.free(arg2);
    }
  }

  // Skipped add_plural_message(): an argument type is unsupported.
  static final Pointer<Void> _mb_get_message =
      resolveMethodBind('Translation', 'get_message', 1829228469);

  String getMessage(String srcMessage, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), srcMessage);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), context);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_message, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_get_plural_message =
      resolveMethodBind('Translation', 'get_plural_message', 229954002);

  String getPluralMessage(String srcMessage, String srcPluralMessage, int n, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), srcMessage);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), srcPluralMessage);
    final arg2 = malloc<Int64>()..value = n;
    final arg3 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg3.cast(), context);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_plural_message, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>(), arg3.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
      BuiltinMarshal.destroyStringName(arg3.cast());
      malloc.free(arg3);
    }
  }

  static final Pointer<Void> _mb_erase_message =
      resolveMethodBind('Translation', 'erase_message', 3959009644);

  void eraseMessage(String srcMessage, String context) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), srcMessage);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), context);
    try {
      ptrcallVoid(_mb_erase_message, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_message_list(): unsupported return type "PackedStringArray".
  // Skipped get_translated_message_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_message_count =
      resolveMethodBind('Translation', 'get_message_count', 3905245786);

  int getMessageCount() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_message_count, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_plural_rules_override =
      resolveMethodBind('Translation', 'set_plural_rules_override', 83702148);

  void setPluralRulesOverride(String rules) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), rules);
    try {
      ptrcallVoid(_mb_set_plural_rules_override, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_plural_rules_override =
      resolveMethodBind('Translation', 'get_plural_rules_override', 201670096);

  String getPluralRulesOverride() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_plural_rules_override, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

}
