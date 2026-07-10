// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class ClassDB extends GodotObject {
  ClassDB(super.nativePtr);

  static ClassDB? _singleton;
  static ClassDB get singleton {
    return _singleton ??= ClassDB(resolveSingleton('ClassDB'));
  }

  /// Constructs a brand-new engine-owned ClassDB instance
  /// (via classdb_construct_object3), not an existing one.
  factory ClassDB.create() {
    return ClassDB(resolveClassConstructor('ClassDB'));
  }

  // Skipped get_class_list(): unsupported return type "PackedStringArray".
  // Skipped get_inheriters_from_class(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_get_parent_class =
      resolveMethodBind('ClassDB', 'get_parent_class', 1965194235);

  String getParentClass(String class_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_get_parent_class, nativePtr, [arg0.cast<Void>()], ret.cast());
        final result = BuiltinMarshal.readStringName(ret.cast());
        BuiltinMarshal.destroyStringName(ret.cast());
        return result;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_class_exists =
      resolveMethodBind('ClassDB', 'class_exists', 2619796661);

  bool classExists(String class_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_class_exists, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_is_parent_class =
      resolveMethodBind('ClassDB', 'is_parent_class', 471820014);

  bool isParentClass(String class_, String inherits) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), inherits);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_parent_class, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
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

  static final Pointer<Void> _mb_can_instantiate =
      resolveMethodBind('ClassDB', 'can_instantiate', 2619796661);

  bool canInstantiate(String class_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_can_instantiate, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  // Skipped instantiate(): unsupported return type "Variant".
  static final Pointer<Void> _mb_class_get_api_type =
      resolveMethodBind('ClassDB', 'class_get_api_type', 2475317043);

  int classGetApiType(String class_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_class_get_api_type, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_class_has_signal =
      resolveMethodBind('ClassDB', 'class_has_signal', 471820014);

  bool classHasSignal(String class_, String signal) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), signal);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_class_has_signal, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
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

  // Skipped class_get_signal(): unsupported return type "Dictionary".
  // Skipped class_get_signal_list(): unsupported return type "typedarray::Dictionary".
  // Skipped class_get_property_list(): unsupported return type "typedarray::Dictionary".
  static final Pointer<Void> _mb_class_get_property_getter =
      resolveMethodBind('ClassDB', 'class_get_property_getter', 3770832642);

  String classGetPropertyGetter(String class_, String property) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), property);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_class_get_property_getter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  static final Pointer<Void> _mb_class_get_property_setter =
      resolveMethodBind('ClassDB', 'class_get_property_setter', 3770832642);

  String classGetPropertySetter(String class_, String property) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), property);
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_class_get_property_setter, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
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

  // Skipped class_get_property(): unsupported return type "Variant".
  // Skipped class_set_property(): an argument type is unsupported.
  // Skipped class_get_property_default_value(): unsupported return type "Variant".
  static final Pointer<Void> _mb_class_has_method =
      resolveMethodBind('ClassDB', 'class_has_method', 3860701026);

  bool classHasMethod(String class_, String method, bool noInheritance) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), method);
    final arg2 = malloc<Uint8>()..value = noInheritance ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_class_has_method, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_class_get_method_argument_count =
      resolveMethodBind('ClassDB', 'class_get_method_argument_count', 3885694822);

  int classGetMethodArgumentCount(String class_, String method, bool noInheritance) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), method);
    final arg2 = malloc<Uint8>()..value = noInheritance ? 1 : 0;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_class_get_method_argument_count, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped class_get_method_list(): unsupported return type "typedarray::Dictionary".
  // Skipped class_get_integer_constant_list(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_class_has_integer_constant =
      resolveMethodBind('ClassDB', 'class_has_integer_constant', 471820014);

  bool classHasIntegerConstant(String class_, String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_class_has_integer_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value != 0;
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

  static final Pointer<Void> _mb_class_get_integer_constant =
      resolveMethodBind('ClassDB', 'class_get_integer_constant', 2419549490);

  int classGetIntegerConstant(String class_, String name) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_class_get_integer_constant, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
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

  static final Pointer<Void> _mb_class_has_enum =
      resolveMethodBind('ClassDB', 'class_has_enum', 3860701026);

  bool classHasEnum(String class_, String name, bool noInheritance) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>()..value = noInheritance ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_class_has_enum, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  // Skipped class_get_enum_list(): unsupported return type "PackedStringArray".
  // Skipped class_get_enum_constants(): unsupported return type "PackedStringArray".
  static final Pointer<Void> _mb_class_get_integer_constant_enum =
      resolveMethodBind('ClassDB', 'class_get_integer_constant_enum', 2457504236);

  String classGetIntegerConstantEnum(String class_, String name, bool noInheritance) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), name);
    final arg2 = malloc<Uint8>()..value = noInheritance ? 1 : 0;
    try {
      final ret = malloc<Uint8>(managedHandleSize);
      try {
        ptrcallWithReturn(_mb_class_get_integer_constant_enum, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
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
    }
  }

  static final Pointer<Void> _mb_is_class_enum_bitfield =
      resolveMethodBind('ClassDB', 'is_class_enum_bitfield', 3860701026);

  bool isClassEnumBitfield(String class_, String enum_, bool noInheritance) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg1.cast(), enum_);
    final arg2 = malloc<Uint8>()..value = noInheritance ? 1 : 0;
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_class_enum_bitfield, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>(), arg2.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyStringName(arg1.cast());
      malloc.free(arg1);
      malloc.free(arg2);
    }
  }

  static final Pointer<Void> _mb_is_class_enabled =
      resolveMethodBind('ClassDB', 'is_class_enabled', 2619796661);

  bool isClassEnabled(String class_) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeStringName(arg0.cast(), class_);
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_is_class_enabled, nativePtr, [arg0.cast<Void>()], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyStringName(arg0.cast());
      malloc.free(arg0);
    }
  }

}
