// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class DirAccess extends RefCounted {
  DirAccess(super.nativePtr);

  static final Pointer<Void> _mb_list_dir_begin =
      resolveMethodBind('DirAccess', 'list_dir_begin', 166280745);

  int listDirBegin() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_list_dir_begin, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_next =
      resolveMethodBind('DirAccess', 'get_next', 2841200299);

  String getNext() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_next, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_current_is_dir =
      resolveMethodBind('DirAccess', 'current_is_dir', 36873697);

  bool currentIsDir() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_current_is_dir, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_list_dir_end =
      resolveMethodBind('DirAccess', 'list_dir_end', 3218959716);

  void listDirEnd() {
    try {
      ptrcallVoid(_mb_list_dir_end, nativePtr, []);
    } finally {
    }
  }

  // Skipped get_files(): unsupported return type "PackedStringArray".
  // Skipped get_directories(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_current_drive =
      resolveMethodBind('DirAccess', 'get_current_drive', 2455072627);

  int getCurrentDrive() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_current_drive, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_change_dir =
      resolveMethodBind('DirAccess', 'change_dir', 166001499);

  int changeDir(String toDir) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), toDir);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_change_dir, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_current_dir =
      resolveMethodBind('DirAccess', 'get_current_dir', 1287308131);

  String getCurrentDir(bool includeDrive) {
    final arg0 = malloc<Uint8>()..value = includeDrive ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_current_dir, nativePtr, [arg0.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_make_dir =
      resolveMethodBind('DirAccess', 'make_dir', 166001499);

  int makeDir(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_make_dir, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_make_dir_recursive =
      resolveMethodBind('DirAccess', 'make_dir_recursive', 166001499);

  int makeDirRecursive(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_make_dir_recursive, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_file_exists =
      resolveMethodBind('DirAccess', 'file_exists', 2323990056);

  bool fileExists(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_file_exists, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_dir_exists =
      resolveMethodBind('DirAccess', 'dir_exists', 2323990056);

  bool dirExists(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_dir_exists, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_space_left =
      resolveMethodBind('DirAccess', 'get_space_left', 2455072627);

  int getSpaceLeft() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_space_left, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_copy =
      resolveMethodBind('DirAccess', 'copy', 1063198817);

  int copy(String from, String to, int chmodFlags) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), from);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), to);
    final arg2 = malloc<Int64>()..value = chmodFlags;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_copy, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_rename =
      resolveMethodBind('DirAccess', 'rename', 852856452);

  int rename(String from, String to) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), from);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), to);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_rename, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_remove =
      resolveMethodBind('DirAccess', 'remove', 166001499);

  int remove(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_remove, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_link =
      resolveMethodBind('DirAccess', 'is_link', 2323990056);

  bool isLink(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_link, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_read_link =
      resolveMethodBind('DirAccess', 'read_link', 1703090593);

  String readLink(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_read_link, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_create_link =
      resolveMethodBind('DirAccess', 'create_link', 852856452);

  int createLink(String source, String target) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), source);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), target);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_create_link, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_is_bundle =
      resolveMethodBind('DirAccess', 'is_bundle', 3927539163);

  bool isBundle(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_bundle, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_set_include_navigational =
      resolveMethodBind('DirAccess', 'set_include_navigational', 2586408642);

  void setIncludeNavigational(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_include_navigational, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_include_navigational =
      resolveMethodBind('DirAccess', 'get_include_navigational', 36873697);

  bool getIncludeNavigational() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_include_navigational, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_include_hidden =
      resolveMethodBind('DirAccess', 'set_include_hidden', 2586408642);

  void setIncludeHidden(bool enable) {
    final arg0 = malloc<Uint8>()..value = enable ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_include_hidden, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_include_hidden =
      resolveMethodBind('DirAccess', 'get_include_hidden', 36873697);

  bool getIncludeHidden() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_include_hidden, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_get_filesystem_type =
      resolveMethodBind('DirAccess', 'get_filesystem_type', 201670096);

  String getFilesystemType() {
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_filesystem_type, nativePtr, [], ret.cast());
        final result = BuiltinMarshal.readGDString(ret.cast());
        BuiltinMarshal.destroyGDString(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_is_case_sensitive =
      resolveMethodBind('DirAccess', 'is_case_sensitive', 3927539163);

  bool isCaseSensitive(String path) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), path);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_case_sensitive, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_equivalent =
      resolveMethodBind('DirAccess', 'is_equivalent', 820780508);

  bool isEquivalent(String pathA, String pathB) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), pathA);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), pathB);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_equivalent, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

}
