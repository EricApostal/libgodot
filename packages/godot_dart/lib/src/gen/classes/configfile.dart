// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ConfigFile extends RefCounted {
  ConfigFile(super.nativePtr);

  // Skipped set_value(): an argument type is unsupported.
  // Skipped get_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_has_section =
      resolveMethodBind('ConfigFile', 'has_section', 3927539163);

  bool hasSection(String section) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), section);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_section, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_has_section_key =
      resolveMethodBind('ConfigFile', 'has_section_key', 820780508);

  bool hasSectionKey(String section, String key) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), section);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), key);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_has_section_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped get_sections(): unsupported return type "PackedStringArray".
  // Skipped get_section_keys(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_erase_section =
      resolveMethodBind('ConfigFile', 'erase_section', 83702148);

  void eraseSection(String section) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), section);
    try {
      ptrcallVoid(_mb_erase_section, nativePtr, [arg0.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_erase_section_key =
      resolveMethodBind('ConfigFile', 'erase_section_key', 3186203200);

  void eraseSectionKey(String section, String key) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), section);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), key);
    try {
      ptrcallVoid(_mb_erase_section_key, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()]);
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_load =
      resolveMethodBind('ConfigFile', 'load', 166001499);

  int load(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_parse =
      resolveMethodBind('ConfigFile', 'parse', 166001499);

  int parse(String data) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), data);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_parse, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_save =
      resolveMethodBind('ConfigFile', 'save', 166001499);

  int save(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_encode_to_text =
      resolveMethodBind('ConfigFile', 'encode_to_text', 201670096);

  String encodeToText() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_encode_to_text, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  // Skipped load_encrypted(): an argument type is unsupported.
  static final Pointer<Void> _mb_load_encrypted_pass =
      resolveMethodBind('ConfigFile', 'load_encrypted_pass', 852856452);

  int loadEncryptedPass(String path, String password) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), password);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_load_encrypted_pass, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped save_encrypted(): an argument type is unsupported.
  static final Pointer<Void> _mb_save_encrypted_pass =
      resolveMethodBind('ConfigFile', 'save_encrypted_pass', 852856452);

  int saveEncryptedPass(String path, String password) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), password);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_save_encrypted_pass, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_clear =
      resolveMethodBind('ConfigFile', 'clear', 3218959716);

  void clear() {
    try {
      ptrcallVoid(_mb_clear, nativePtr, []);
    } finally {
    }
  }

}
