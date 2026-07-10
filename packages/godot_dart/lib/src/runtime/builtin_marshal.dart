// String/StringName ptrcall marshaling. Both are managed (COW-refcounted)
// builtins, not POD, so unlike Vector2/Color/etc. they need proper
// construct/destroy calls rather than a raw memcpy.
//
// ptrcall convention (matching godot-cpp's PtrToArg<String>): the argument
// or return slot IS the value's own in-place storage (an 8-byte handle for
// both String and StringName here), constructed/destroyed via the standard
// variant_get_ptr_constructor/destructor machinery — not a pointer-to-pointer
// the way Object references are (see resolveMethodBind's ptrcall helpers).
library;

import 'dart:convert';
import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'gdextension_types.dart';
import 'proc_table.dart';

/// Byte size of the String/StringName/NodePath/Array/Dictionary/RID handle
/// in this build (a single COW-data pointer). See extension_api.json's
/// `builtin_class_sizes` (float_64 config) — all of these are 8 bytes.
const int managedHandleSize = 8;

abstract final class BuiltinMarshal {
  /// Constructs a GDString in [buf] (>= managedHandleSize bytes,
  /// uninitialized) from [value].
  static void writeGDString(Pointer<Void> buf, String value) {
    final utf8Ptr = value.toNativeUtf8();
    try {
      GodotApi.stringNewWithUtf8Chars(buf, utf8Ptr.cast());
    } finally {
      malloc.free(utf8Ptr);
    }
  }

  /// Reads a constructed GDString at [ptr] into a Dart String. Does not free
  /// or destroy [ptr] — the caller owns its lifecycle.
  static String readGDString(Pointer<Void> ptr) {
    final needed = GodotApi.stringToUtf8Chars(ptr, nullptr, 0);
    if (needed <= 0) return '';
    final buf = malloc<Uint8>(needed);
    try {
      GodotApi.stringToUtf8Chars(ptr, buf.cast(), needed);
      return utf8.decode(buf.asTypedList(needed));
    } finally {
      malloc.free(buf);
    }
  }

  /// Destroys a GDString previously constructed at [ptr] (does not free the
  /// backing memory itself).
  static void destroyGDString(Pointer<Void> ptr) {
    GodotApi.variantGetPtrDestructor(GDExtensionVariantType.string).asFunction<void Function(Pointer<Void>)>()(ptr);
  }

  /// Constructs a StringName in [buf] (>= managedHandleSize bytes,
  /// uninitialized) from [value].
  static void writeStringName(Pointer<Void> buf, String value) {
    final utf8Ptr = value.toNativeUtf8();
    try {
      GodotApi.stringNameNewWithUtf8Chars(buf, utf8Ptr.cast());
    } finally {
      malloc.free(utf8Ptr);
    }
  }

  /// Reads a constructed StringName at [ptr] into a Dart String. There's no
  /// direct StringName-to-chars interface function, so this round-trips
  /// through a temporary Variant/String using the general
  /// get_variant_from_type_constructor/get_variant_to_type_constructor
  /// conversion machinery (the same mechanism variant_marshal.dart uses for
  /// primitives).
  static String readStringName(Pointer<Void> ptr) {
    final variantBuf = malloc<Uint8>(24); // variantSize, see variant_marshal.dart
    final stringBuf = malloc<Uint8>(managedHandleSize);
    try {
      GodotApi.getVariantFromTypeConstructor(GDExtensionVariantType.stringName)
          .asFunction<void Function(Pointer<Void>, Pointer<Void>)>()(variantBuf.cast(), ptr);
      GodotApi.getVariantToTypeConstructor(GDExtensionVariantType.string)
          .asFunction<void Function(Pointer<Void>, Pointer<Void>)>()(stringBuf.cast(), variantBuf.cast());
      final result = readGDString(stringBuf.cast());
      destroyGDString(stringBuf.cast());
      return result;
    } finally {
      GodotApi.variantDestroy(variantBuf.cast());
      malloc.free(variantBuf);
      malloc.free(stringBuf);
    }
  }

  /// Destroys a StringName previously constructed at [ptr].
  static void destroyStringName(Pointer<Void> ptr) {
    GodotApi.variantGetPtrDestructor(GDExtensionVariantType.stringName).asFunction<void Function(Pointer<Void>)>()(ptr);
  }
}
