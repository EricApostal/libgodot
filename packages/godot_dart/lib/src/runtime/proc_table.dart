// Resolves and caches the subset of the GDExtensionInterface this package
// needs, via the GDExtensionInterfaceGetProcAddress function handed to the
// GDExtensionInitializationFunction at engine startup.
//
// GodotApi.initialize() must be called synchronously, inline, from inside
// the generated GDExtensionInitializationFunction before it returns — see
// package doc on threading discipline in godot_instance.dart. There is no
// async/deferred setup here on purpose.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'gdextension_types.dart';

/// Cached, ready-to-call subset of the engine's GDExtensionInterface.
///
/// Populated once by [GodotApi.initialize]; every generated/hand-written
/// class in this package calls through these function pointers rather than
/// re-resolving GetProcAddress on every call.
abstract final class GodotApi {
  static bool _initialized = false;

  static late final ClassdbConstructObject3Dart classdbConstructObject3;
  static late final ClassdbGetMethodBindDart classdbGetMethodBind;
  static late final ObjectMethodBindPtrcallDart objectMethodBindPtrcall;
  static late final ObjectSetInstanceDart objectSetInstance;
  static late final ObjectDestroyDart objectDestroy;
  static late final ClassdbRegisterExtensionClass6Dart classdbRegisterExtensionClass6;
  static late final ClassdbRegisterExtensionClassMethodDart classdbRegisterExtensionClassMethod;
  static late final ClassdbRegisterExtensionClassPropertyDart classdbRegisterExtensionClassProperty;
  static late final StringNameNewWithUtf8CharsDart stringNameNewWithUtf8Chars;
  static late final StringNewWithUtf8CharsDart stringNewWithUtf8Chars;
  static late final StringToUtf8CharsDart stringToUtf8Chars;
  static late final VariantGetPtrConstructorDart variantGetPtrConstructor;
  static late final VariantGetPtrDestructorDart variantGetPtrDestructor;
  static late final MemAllocDart memAlloc;
  static late final MemFreeDart memFree;
  static late final GetVariantFromTypeConstructorDart getVariantFromTypeConstructor;
  static late final GetVariantToTypeConstructorDart getVariantToTypeConstructor;
  static late final VariantNewNilDart variantNewNil;
  static late final VariantDestroyDart variantDestroy;
  static late final VariantGetTypeDart variantGetType;

  /// The GDExtensionClassLibraryPtr this Dart extension was registered
  /// under; required by every classdb_register_extension_class* call.
  static late final GDExtensionClassLibraryPtr library;

  static bool get isInitialized => _initialized;

  static void initialize(
    Pointer<NativeFunction<GDExtensionInterfaceGetProcAddressNative>> getProcAddressPtr,
    GDExtensionClassLibraryPtr libraryPtr,
  ) {
    if (_initialized) return;

    final getProcAddress = getProcAddressPtr
        .asFunction<Pointer<NativeFunction<Void Function()>> Function(Pointer<Char>)>();

    Pointer<NativeFunction<T>> proc<T extends Function>(String name) {
      final namePtr = name.toNativeUtf8();
      try {
        final result = getProcAddress(namePtr.cast());
        if (result.address == 0) {
          throw StateError('libgodot/godot_dart: GDExtensionInterface function "$name" not found (engine ABI mismatch?).');
        }
        return result.cast<NativeFunction<T>>();
      } finally {
        malloc.free(namePtr);
      }
    }

    classdbConstructObject3 =
        proc<ClassdbConstructObject3Native>('classdb_construct_object3').asFunction();
    classdbGetMethodBind =
        proc<ClassdbGetMethodBindNative>('classdb_get_method_bind').asFunction();
    objectMethodBindPtrcall =
        proc<ObjectMethodBindPtrcallNative>('object_method_bind_ptrcall').asFunction();
    objectSetInstance =
        proc<ObjectSetInstanceNative>('object_set_instance').asFunction();
    objectDestroy = proc<ObjectDestroyNative>('object_destroy').asFunction();
    classdbRegisterExtensionClass6 =
        proc<ClassdbRegisterExtensionClass6Native>('classdb_register_extension_class6').asFunction();
    classdbRegisterExtensionClassMethod =
        proc<ClassdbRegisterExtensionClassMethodNative>('classdb_register_extension_class_method').asFunction();
    classdbRegisterExtensionClassProperty =
        proc<ClassdbRegisterExtensionClassPropertyNative>('classdb_register_extension_class_property').asFunction();
    stringNameNewWithUtf8Chars =
        proc<StringNameNewWithUtf8CharsNative>('string_name_new_with_utf8_chars').asFunction();
    stringNewWithUtf8Chars =
        proc<StringNewWithUtf8CharsNative>('string_new_with_utf8_chars').asFunction();
    stringToUtf8Chars =
        proc<StringToUtf8CharsNative>('string_to_utf8_chars').asFunction();
    variantGetPtrConstructor =
        proc<VariantGetPtrConstructorNative>('variant_get_ptr_constructor').asFunction();
    variantGetPtrDestructor =
        proc<VariantGetPtrDestructorNative>('variant_get_ptr_destructor').asFunction();
    memAlloc = proc<MemAllocNative>('mem_alloc').asFunction();
    memFree = proc<MemFreeNative>('mem_free').asFunction();
    getVariantFromTypeConstructor =
        proc<GetVariantFromTypeConstructorNative>('get_variant_from_type_constructor').asFunction();
    getVariantToTypeConstructor =
        proc<GetVariantToTypeConstructorNative>('get_variant_to_type_constructor').asFunction();
    variantNewNil = proc<VariantNewNilNative>('variant_new_nil').asFunction();
    variantDestroy = proc<VariantDestroyNative>('variant_destroy').asFunction();
    variantGetType = proc<VariantGetTypeNative>('variant_get_type').asFunction();

    library = libraryPtr;
    _initialized = true;
  }
}
