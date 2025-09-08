import 'dart:ffi';
import 'package:libgodot/utils.dart';

import 'gdextension_ffi_bindings.dart';

DartGDExtensionInterfaceObjectMethodBindPtrcallFunction
getObjectMethodBindPtrcall() {
  final lib = DynamicLibrary.process();
  return lib
      .lookup<
        NativeFunction<GDExtensionInterfaceObjectMethodBindPtrcallFunction>
      >('object_method_bind_ptrcall')
      .asFunction<DartGDExtensionInterfaceObjectMethodBindPtrcallFunction>();
}

GDExtensionInterfaceRefGetObjectFunction getRefGetObject() {
  final lib = DynamicLibrary.process();

  return lib
      .lookup<NativeFunction<GDExtensionInterfaceRefGetObjectFunction>>(
        'ref_get_object',
      )
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
