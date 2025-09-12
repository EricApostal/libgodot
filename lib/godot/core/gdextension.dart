import 'dart:ffi';
import 'dart:ffi' as ffi;

import 'package:ffi/ffi.dart';

import '../generated/builtins.dart';
import '../generated/engine_classes.dart';
import '../variant/variant.dart';
import 'core_types.dart';
import 'gdextension_ffi_bindings.dart';
import 'godot_dart_native_bindings.dart';
import 'package:ffi/ffi.dart' as pkg_ffi;

GodotDart get gde => GodotDart.instance!;

typedef GodotVirtualFunction =
    NativeFunction<
      Void Function(
        GDExtensionClassInstancePtr,
        Pointer<GDExtensionConstTypePtr>,
        GDExtensionTypePtr,
      )
    >;

/// Wrapper around the GDExtension interface for easier Dart calls.
class GodotDart {
  static final int destructorSize = sizeOf<GDExtensionPtrDestructor>();

  static GodotDart? instance;

  final GDExtensionFFI ffiBindings;
  final GDExtensionClassLibraryPtr extensionToken;
  final Pointer<GDExtensionInstanceBindingCallbacks> engineBindingCallbacks;

  late GodotDartNativeBindings dartBindings;

  GodotDart(
    this.ffiBindings,
    this.extensionToken,
    this.engineBindingCallbacks,
  ) {
    instance = this;
    dartBindings = GodotDartNativeBindings();
  }

  // ---------- Builtin value helpers ----------
  void callBuiltinConstructor(
    GDExtensionPtrConstructor constructor,
    GDExtensionTypePtr base,
    List<GDExtensionConstTypePtr> args,
  ) {
    final array = malloc<GDExtensionConstTypePtr>(args.length);
    for (int i = 0; i < args.length; ++i) {
      array[i] = args[i];
    }
    final fn = constructor
        .asFunction<
          void Function(GDExtensionTypePtr, Pointer<GDExtensionConstTypePtr>)
        >();
    fn(base, array);
    malloc.free(array);
  }

  void callBuiltinDestructor(
    GDExtensionPtrDestructor destructor,
    GDExtensionTypePtr base,
  ) {
    destructor.asFunction<void Function(GDExtensionTypePtr)>()(base);
  }

  void callBuiltinMethodPtr(
    GDExtensionPtrBuiltInMethod? method,
    GDExtensionTypePtr base,
    GDExtensionTypePtr ret,
    List<GDExtensionConstTypePtr> args,
  ) {
    if (method == null) return;
    final array = malloc<GDExtensionConstTypePtr>(args.length);
    for (int i = 0; i < args.length; ++i) {
      array[i] = args[i];
    }
    final m = method
        .asFunction<
          void Function(
            GDExtensionTypePtr,
            Pointer<GDExtensionConstTypePtr>,
            GDExtensionTypePtr,
            int,
          )
        >();
    m(base, array, ret, args.length);
    malloc.free(array);
  }

  // ---------- Object / Variant dynamic calls ----------
  Variant callNativeMethodBind(
    GDExtensionMethodBindPtr function,
    ExtensionType? instance,
    List<Variant> args,
  ) {
    Variant ret = Variant();
    _objectMethodBindCall ??= () {
      final fetched = godotResolve('object_method_bind_call');
      return fetched
          .cast<
            NativeFunction<GDExtensionInterfaceObjectMethodBindCallFunction>
          >()
          .asFunction<DartGDExtensionInterfaceObjectMethodBindCallFunction>();
    }();

    using((arena) {
      final errorPtr = arena.allocate<GDExtensionCallError>(
        sizeOf<GDExtensionCallError>(),
      );
      final argArray = arena.allocate<GDExtensionConstVariantPtr>(args.length);
      for (int i = 0; i < args.length; ++i) {
        (argArray + i).value = args[i].nativePtr.cast();
      }
      _objectMethodBindCall!(
        function,
        instance?.nativePtr.cast() ?? nullptr.cast(),
        argArray.cast(),
        args.length,
        ret.nativePtr.cast(),
        errorPtr.cast(),
      );
      if (errorPtr.ref.error != GDExtensionCallErrorType.GDEXTENSION_CALL_OK) {
        throw Exception(
          'Error calling function in Godot: Error ${errorPtr.ref.error}, Argument ${errorPtr.ref.argument}, Expected ${errorPtr.ref.expected}',
        );
      }
    });

    return ret;
  }

  Variant variantCall(Variant self, String methodName, List<Variant> args) {
    Variant ret = Variant();
    final gdMethodName = StringName.fromString(methodName);
    using((arena) {
      final errorPtr = arena.allocate<GDExtensionCallError>(
        sizeOf<GDExtensionCallError>(),
      );
      final argArray = arena.allocate<GDExtensionConstVariantPtr>(args.length);
      for (int i = 0; i < args.length; ++i) {
        (argArray + i).value = args[i].nativePtr.cast();
      }
      _variantCall ??= () {
        final lib = DynamicLibrary.process();
        return lib
            .lookup<NativeFunction<GDExtensionInterfaceVariantCallFunction>>(
              'variant_call',
            )
            .asFunction<DartGDExtensionInterfaceVariantCallFunction>();
      }();
      _variantCall!(
        self.nativePtr.cast(),
        gdMethodName.nativePtr.cast(),
        argArray,
        args.length,
        ret.nativePtr.cast(),
        errorPtr.cast(),
      );
      if (errorPtr.ref.error != GDExtensionCallErrorType.GDEXTENSION_CALL_OK) {
        throw Exception(
          'Error calling function in Godot: Error ${errorPtr.ref.error}, Argument ${errorPtr.ref.argument}, Expected ${errorPtr.ref.expected}',
        );
      }
    });
    return ret;
  }

  Variant variantGetIndexed(Variant self, int index) {
    Variant ret = Variant();
    using((arena) {
      final valid = arena.allocate<Uint8>(sizeOf<Uint8>());
      final oob = arena.allocate<Uint8>(sizeOf<Uint8>());
      _variantGetIndexed ??= () {
        final lib = DynamicLibrary.process();
        return lib
            .lookup<
              NativeFunction<GDExtensionInterfaceVariantGetIndexedFunction>
            >('variant_get_indexed')
            .asFunction<DartGDExtensionInterfaceVariantGetIndexedFunction>();
      }();
      _variantGetIndexed!(
        self.nativePtr.cast(),
        index,
        ret.nativePtr.cast(),
        valid.cast(),
        oob.cast(),
      );
      if (oob.value != 0) {
        throw RangeError.index(index, self);
      }
    });
    return ret;
  }

  void variantSetIndexed(Variant self, int index, Variant value) {
    using((arena) {
      final valid = arena.allocate<Uint8>(sizeOf<Uint8>());
      final oob = arena.allocate<Uint8>(sizeOf<Uint8>());
      _variantSetIndexed ??= () {
        final lib = DynamicLibrary.process();
        return lib
            .lookup<
              NativeFunction<GDExtensionInterfaceVariantSetIndexedFunction>
            >('variant_set_indexed')
            .asFunction<DartGDExtensionInterfaceVariantSetIndexedFunction>();
      }();
      _variantSetIndexed!(
        self.nativePtr.cast(),
        index,
        value.nativePtr.cast(),
        valid.cast(),
        oob.cast(),
      );
      if (oob.value != 0) {
        throw RangeError.index(index, self);
      }
    });
  }

  // ---------- Variant pointer accessors (cached) ----------
  GDExtensionPtrBuiltInMethod variantGetBuiltinMethod(
    int variantType,
    StringName name,
    int hash,
  ) {
    final fetched = godotResolve('variant_get_ptr_builtin_method');

    final fn = fetched
        .cast<
          NativeFunction<
            GDExtensionPtrBuiltInMethod Function(
              UnsignedInt,
              GDExtensionConstStringNamePtr,
              Int64,
            )
          >
        >()
        .asFunction<
          GDExtensionPtrBuiltInMethod Function(
            int,
            GDExtensionConstStringNamePtr,
            int,
          )
        >();
    return fn(variantType, name.nativePtr.cast(), hash);
  }

  GDExtensionPtrConstructor variantGetConstructor(
    GDExtensionVariantType variantType,
    int index,
  ) {
    final fetched = godotResolve('variant_get_ptr_constructor');

    final fn = fetched
        .cast<
          NativeFunction<GDExtensionPtrConstructor Function(UnsignedInt, Int32)>
        >()
        .asFunction<GDExtensionPtrConstructor Function(int, int)>();
    return fn(variantType.value, index);
  }

  GDExtensionPtrDestructor variantGetDestructor(
    GDExtensionVariantType variantType,
  ) {
    final fetched = godotResolve('variant_get_ptr_destructor');

    final fn = fetched
        .cast<NativeFunction<GDExtensionPtrDestructor Function(UnsignedInt)>>()
        .asFunction<GDExtensionPtrDestructor Function(int)>();
    return fn(variantType.value);
  }

  GDExtensionPtrGetter variantGetPtrGetter(int variantType, StringName name) {
    final fetched = godotResolve('variant_get_ptr_getter');
    final fn = fetched
        .cast<
          NativeFunction<
            GDExtensionPtrGetter Function(
              UnsignedInt,
              GDExtensionConstStringNamePtr,
            )
          >
        >()
        .asFunction<
          GDExtensionPtrGetter Function(int, GDExtensionConstStringNamePtr)
        >();
    return fn(variantType, name.nativePtr.cast());
  }

  GDExtensionPtrSetter variantGetPtrSetter(int variantType, StringName name) {
    final fetched = godotResolve('variant_get_ptr_setter');
    final fn = fetched
        .cast<
          NativeFunction<
            GDExtensionPtrSetter Function(
              UnsignedInt,
              GDExtensionConstStringNamePtr,
            )
          >
        >()
        .asFunction<
          GDExtensionPtrSetter Function(int, GDExtensionConstStringNamePtr)
        >();
    return fn(variantType, name.nativePtr.cast());
  }

  GDExtensionPtrIndexedSetter variantGetIndexedSetter(int variantType) {
    final fetched = godotResolve('variant_get_ptr_indexed_setter');
    final fn = fetched
        .cast<
          NativeFunction<GDExtensionPtrIndexedSetter Function(UnsignedInt)>
        >()
        .asFunction<GDExtensionPtrIndexedSetter Function(int)>();
    return fn(variantType);
  }

  GDExtensionPtrIndexedGetter variantGetIndexedGetter(int variantType) {
    final fetched = godotResolve('variant_get_ptr_indexed_getter');
    final fn = fetched
        .cast<
          NativeFunction<GDExtensionPtrIndexedGetter Function(UnsignedInt)>
        >()
        .asFunction<GDExtensionPtrIndexedGetter Function(int)>();
    return fn(variantType);
  }

  GDExtensionPtrKeyedSetter variantGetKeyedSetter(int variantType) {
    final fetched = godotResolve('variant_get_ptr_indexed_setter');
    final fn = fetched
        .cast<NativeFunction<GDExtensionPtrKeyedSetter Function(UnsignedInt)>>()
        .asFunction<GDExtensionPtrKeyedSetter Function(int)>();
    return fn(variantType);
  }

  GDExtensionPtrKeyedGetter variantGetKeyedGetter(int variantType) {
    final fetched = godotResolve('variant_get_ptr_keyed_getter');
    final fn = fetched
        .cast<NativeFunction<GDExtensionPtrKeyedGetter Function(UnsignedInt)>>()
        .asFunction<GDExtensionPtrKeyedGetter Function(int)>();
    return fn(variantType);
  }

  GDExtensionPtrKeyedChecker variantGetKeyedChecker(int variantType) {
    final fetched = godotResolve('variant_get_ptr_keyed_checker');
    final fn = fetched
        .cast<
          NativeFunction<GDExtensionPtrKeyedChecker Function(UnsignedInt)>
        >()
        .asFunction<GDExtensionPtrKeyedChecker Function(int)>();
    return fn(variantType);
  }

  // ---------- ClassDB / global ----------
  GDExtensionObjectPtr globalGetSingleton(StringName name) {
    _globalGetSingleton ??= () {
      final fetched = godotResolve('global_get_singleton');
      return fetched
          .cast<
            NativeFunction<GDExtensionInterfaceGlobalGetSingletonFunction>
          >()
          .asFunction<GDExtensionInterfaceGlobalGetSingletonFunction>();
    }();
    return _globalGetSingleton!(name.nativePtr.cast());
  }

  GDExtensionMethodBindPtr classDbGetMethodBind(
    StringName className,
    StringName methodName,
    int hash,
  ) {
    _classdbGetMethodBind ??= () {
      return godotResolve('classdb_get_method_bind')
          .cast<
            NativeFunction<GDExtensionInterfaceClassdbGetMethodBindFunction>
          >()
          .asFunction<DartGDExtensionInterfaceClassdbGetMethodBindFunction>();
    }();
    return _classdbGetMethodBind!(
      className.nativePtr.cast(),
      methodName.nativePtr.cast(),
      hash,
    );
  }

  GDExtensionObjectPtr constructObject(StringName className) {
    _classdbConstructObject2 ??= () {
      final lib = DynamicLibrary.process();
      return lib
          .lookup<
            NativeFunction<GDExtensionInterfaceClassdbConstructObject2Function>
          >('classdb_construct_object2')
          .asFunction<GDExtensionInterfaceClassdbConstructObject2Function>();
    }();
    return _classdbConstructObject2!(className.nativePtr.cast());
  }

  Pointer<Void> getClassTag(StringName className) {
    _classdbGetClassTag ??= () {
      final lib = DynamicLibrary.process();
      return lib
          .lookup<
            NativeFunction<GDExtensionInterfaceClassdbGetClassTagFunction>
          >('classdb_get_class_tag')
          .asFunction<GDExtensionInterfaceClassdbGetClassTagFunction>();
    }();
    return _classdbGetClassTag!(className.nativePtr.cast());
  }
}

// Cached global function pointers (resolved lazily) ---------------------------------
DartGDExtensionInterfaceObjectMethodBindCallFunction? _objectMethodBindCall;
DartGDExtensionInterfaceVariantCallFunction? _variantCall;
DartGDExtensionInterfaceVariantGetIndexedFunction? _variantGetIndexed;
DartGDExtensionInterfaceVariantSetIndexedFunction? _variantSetIndexed;
GDExtensionInterfaceGlobalGetSingletonFunction? _globalGetSingleton;
DartGDExtensionInterfaceClassdbGetMethodBindFunction? _classdbGetMethodBind;
GDExtensionInterfaceClassdbConstructObject2Function? _classdbConstructObject2;
GDExtensionInterfaceClassdbGetClassTagFunction? _classdbGetClassTag;

extension GodotObjectCast on GodotObject {
  T? as<T>() => this is T ? this as T : null;
}

// ---------------- get_proc_address support ----------------
// Stored resolved proc address callback supplied by the engine during extension init.
GDExtensionInterfaceGetProcAddressFunction? _getProcAddressFn;

/// Called from the embedding layer (plugin) once during `_gdExtensionInit`.
void storeGetProcAddress(GDExtensionInterfaceGetProcAddress ptr) {
  // Convert the raw function pointer into a Dart callable and cache.
  _getProcAddressFn = ptr
      .asFunction<GDExtensionInterfaceGetProcAddressFunction>();
}

/// Resolve a raw function address from the Godot GDExtension interface.
Pointer<ffi.Void> godotResolve(String name) {
  final getter = _getProcAddressFn;
  if (getter == null) {
    throw Exception(
      'get process address function getter has not been assigned.',
    );
  }

  final cstr = name.toNativeUtf8();
  try {
    final raw = getter(cstr.cast());
    // The generated binding typedef for interface function pointers may be a
    // separate typedef (e.g. GDExtensionInterfaceFunctionPtr). Cast to void*.
    return raw.cast<ffi.Void>();
  } finally {
    pkg_ffi.malloc.free(cstr);
  }
}

/// Resolve a typed native function pointer exported by the core interface.
Pointer<NativeFunction<T>>? resolveInterfaceFunction<T extends Function>(
  String name,
) {
  final raw = godotResolve(name);
  if (raw == nullptr) return null;
  return raw.cast<NativeFunction<T>>();
}
