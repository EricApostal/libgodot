import 'dart:ffi';
import 'package:libgodot/godot/core/gdextension.dart';

import 'gdextension_ffi_bindings.dart';

DartGDExtensionInterfaceObjectMethodBindPtrcallFunction
getObjectMethodBindPtrcall() {
  return godotResolve('object_method_bind_ptrcall')
      .cast<
        NativeFunction<GDExtensionInterfaceObjectMethodBindPtrcallFunction>
      >()
      .asFunction<DartGDExtensionInterfaceObjectMethodBindPtrcallFunction>();
}

GDExtensionInterfaceRefGetObjectFunction getRefGetObject() {
  return godotResolve('ref_get_object')
      .cast<NativeFunction<GDExtensionInterfaceRefGetObjectFunction>>()
      .asFunction<GDExtensionInterfaceRefGetObjectFunction>();
}

DartGDExtensionInterfaceStringNewWithUtf8CharsFunction
getStringWithNewUtf8Chars() {
  final fetched = godotResolve('string_new_with_utf8_chars');

  return fetched
      .cast<
        NativeFunction<GDExtensionInterfaceStringNewWithUtf8CharsFunction>
      >()
      .asFunction<DartGDExtensionInterfaceStringNewWithUtf8CharsFunction>();
}

// variant_get_ptr_utility_function
DartGDExtensionInterfaceVariantGetPtrUtilityFunctionFunction
variantGetPtrUtilityFunction() {
  final fetched = godotResolve('variant_get_ptr_utility_function');

  return fetched
      .cast<
        NativeFunction<GDExtensionInterfaceVariantGetPtrUtilityFunctionFunction>
      >()
      .asFunction<
        DartGDExtensionInterfaceVariantGetPtrUtilityFunctionFunction
      >();
}
