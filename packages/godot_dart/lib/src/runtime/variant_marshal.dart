// Variant <-> raw-value marshaling for the call_func (Variant-boxed,
// reflective) dispatch path, and raw ptrcall marshaling for the
// ptrcall_func (fast, statically-typed) path. Every registered method needs
// both: GDScript picks whichever path applies at a given call site.
//
// Variant conversion goes through get_variant_from_type_constructor/
// get_variant_to_type_constructor rather than assuming anything about
// Variant's internal memory layout — those are exactly the sanctioned
// conversion functions the interface exposes for this (the same mechanism
// godot-cpp's generated bindings use).
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'gdextension_types.dart';
import 'proc_table.dart';

/// Size of a Variant in this fork's build (single-precision `real_t`; see
/// core/variant/variant.h: "Variant takes 24 bytes when real_t is float, and
/// 40 bytes if double."). Re-verify against a fresh extension_api.json dump's
/// `header.precision` if this fork ever switches to double precision.
const int variantSize = 24;

abstract final class VariantMarshal {
  static final Map<int, void Function(Pointer<Void>, Pointer<Void>)> _fromType = {};
  static final Map<int, void Function(Pointer<Void>, Pointer<Void>)> _toType = {};

  static void Function(Pointer<Void>, Pointer<Void>) _fromTypeCtor(int variantType) {
    return _fromType.putIfAbsent(
      variantType,
      () => GodotApi.getVariantFromTypeConstructor(variantType)
          .asFunction<void Function(Pointer<Void>, Pointer<Void>)>(),
    );
  }

  static void Function(Pointer<Void>, Pointer<Void>) _toTypeCtor(int variantType) {
    return _toType.putIfAbsent(
      variantType,
      () => GodotApi.getVariantToTypeConstructor(variantType)
          .asFunction<void Function(Pointer<Void>, Pointer<Void>)>(),
    );
  }

  /// Constructs a Variant of [variantType] at [rVariant] (must point at
  /// `variantSize` uninitialized bytes) from the raw value at [rawValue].
  static void constructVariant(int variantType, Pointer<Void> rVariant, Pointer<Void> rawValue) {
    _fromTypeCtor(variantType)(rVariant, rawValue);
  }

  /// Extracts a raw value of [variantType] from [variant] into [rRawValue].
  static void extractFromVariant(int variantType, Pointer<Void> rRawValue, Pointer<Void> variant) {
    _toTypeCtor(variantType)(rRawValue, variant);
  }

  // MARK: - bool

  static bool variantToBool(Pointer<Void> variant) {
    final buf = malloc<Uint8>();
    try {
      extractFromVariant(GDExtensionVariantType.boolType, buf.cast(), variant);
      return buf.value != 0;
    } finally {
      malloc.free(buf);
    }
  }

  static void boolToVariant(Pointer<Void> rVariant, bool value) {
    final buf = malloc<Uint8>()..value = value ? 1 : 0;
    try {
      constructVariant(GDExtensionVariantType.boolType, rVariant, buf.cast());
    } finally {
      malloc.free(buf);
    }
  }

  // MARK: - int

  static int variantToInt(Pointer<Void> variant) {
    final buf = malloc<Int64>();
    try {
      extractFromVariant(GDExtensionVariantType.int_, buf.cast(), variant);
      return buf.value;
    } finally {
      malloc.free(buf);
    }
  }

  static void intToVariant(Pointer<Void> rVariant, int value) {
    final buf = malloc<Int64>()..value = value;
    try {
      constructVariant(GDExtensionVariantType.int_, rVariant, buf.cast());
    } finally {
      malloc.free(buf);
    }
  }

  // MARK: - float (Variant::FLOAT is always double-width, independent of real_t)

  static double variantToDouble(Pointer<Void> variant) {
    final buf = malloc<Double>();
    try {
      extractFromVariant(GDExtensionVariantType.float, buf.cast(), variant);
      return buf.value;
    } finally {
      malloc.free(buf);
    }
  }

  static void doubleToVariant(Pointer<Void> rVariant, double value) {
    final buf = malloc<Double>()..value = value;
    try {
      constructVariant(GDExtensionVariantType.float, rVariant, buf.cast());
    } finally {
      malloc.free(buf);
    }
  }
}
