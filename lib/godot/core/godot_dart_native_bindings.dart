import 'dart:ffi';
import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart';
import 'package:ffi/ffi.dart' as pkg_ffi;

import '../generated/builtins.dart';
import '../variant/variant.dart';
import 'property_info.dart';
import 'type_info.dart';
import 'gdextension_ffi_bindings.dart';
import 'signals.dart';
import 'type_resolver.dart';
import 'gdextension.dart';

typedef ScriptResolver = Type? Function(String scriptPath);

class GodotDartNativeBindings {
  // ---------------------------------------------------------------------------
  // Pure Dart replacements for former C++ exported functions.
  // ---------------------------------------------------------------------------
  // Each Variant / Builtin / ExtensionType stores a Godot-side allocation.
  // The native finalizers expect an FFI function pointer of type
  // void Function(void*). We create a static NativeCallable for each.
  // late final Pointer<NativeFunction<VoidnObjectTrampoline.nativeFunction;

  // Script instance helpers (no longer provided by native layer). These are
  // stubbed; script instances are not yet purely managed in Dart. Returning
  // null pointers keeps existing logic safe (it falls back to binding lookup).
  Object? Function(Pointer<Void>) objectFromScriptInstance = (_) => null;

  // Persistent handle creation. In pure Dart we can leverage Isolate API.
  // We store a Dart object inside a map and hand out an opaque pointer-sized
  // integer key encoded as Pointer<Void> (address field). This mimics a native
  // persistent handle sufficiently for existing usage (only passed back to
  // Dart finalizers / lookups).
  final Map<int, Object> _persistentHandleTable = {};
  int _nextPersistentHandleId = 1;
  Pointer<Void> _safeNewPersistentHandle(Object obj) {
    final id = _nextPersistentHandleId++;
    _persistentHandleTable[id] = obj;
    return Pointer.fromAddress(id);
  }
  // (Lookup / removal helpers could be added later if needed.)

  // Replaced native implementations with pure Dart shims below.
  void tieDartToNative(
    Object obj,
    GDExtensionObjectPtr nativePtr,
    bool isRef,
    bool isGodotType,
  ) {
    // Minimal: just register for reverse lookup.
    registerDartWrapper(obj, nativePtr);
  }

  Object? objectFromInstanceBinding(GDExtensionClassInstancePtr instancePtr) {
    return gdObjectToDartObject(instancePtr.cast());
  }

  GDExtensionScriptInstanceDataPtr getScriptInstance(
    GDExtensionConstObjectPtr objectPtr,
  ) => nullptr.cast();

  Object createSignalCallable(SignalCallable callable, int instanceId) =>
      _createCustomSignalCallable(callable, instanceId);

  GodotDartNativeBindings();

  // Pure Dart replacement for native print hook.
  void printNative(String s) {
    // Route to standard print for now.
    // Could add Godot console logging via variant call if desired.
    // ignore: avoid_print
    print('[godot_dart] $s');
  }

  // Pure Dart binding registration. Only supports registering classes that
  // already have a static TypeInfo (sTypeInfo) on them.
  void bindClass(Type type) {
    // Lookup TypeInfo via a convention: <Type>.sTypeInfo must be exposed.
    final typeInfo = _lookupTypeInfo(type);
    if (typeInfo == null) return;

    // Allocate and populate a GDExtensionClassCreationInfo2 structure.
    using((arena) {
      final info = arena.allocate<GDExtensionClassCreationInfo2>(
        sizeOf<GDExtensionClassCreationInfo2>(),
      );
      // Zero initialize
      for (int i = 0; i < sizeOf<GDExtensionClassCreationInfo2>(); ++i) {
        info.cast<Uint8>()[i] = 0;
      }
      info.ref.is_virtual = 0;
      info.ref.is_abstract = 0;
      info.ref.is_exposed = typeInfo.isGlobalClass ? 1 : 0;
      info.ref.class_userdata = nullptr; // Not used in pure Dart mode

      // We don't currently support virtual callbacks without native trampolines.
      // create_instance_func left null so Godot won't attempt to construct.

      // Register class
      final lib = gde.extensionToken;
      final className = typeInfo.className.nativePtr.cast<Void>();
      final parentName = typeInfo.nativeTypeName.nativePtr.cast<Void>();
      _classdbRegisterExtensionClass2 ??= () {
        final libdl = DynamicLibrary.process();
        return libdl
            .lookup<
              NativeFunction<
                GDExtensionInterfaceClassdbRegisterExtensionClass2Function
              >
            >('classdb_register_extension_class2')
            .asFunction<
              DartGDExtensionInterfaceClassdbRegisterExtensionClass2Function
            >();
      }();
      _classdbRegisterExtensionClass2!(lib, className, parentName, info.cast());
    });
  }

  void addProperty(TypeInfo typeInfo, PropertyInfo propertyInfo) {
    using((arena) {
      final info = arena.allocate<GDExtensionPropertyInfo>(
        sizeOf<GDExtensionPropertyInfo>(),
      );
      info.ref.typeAsInt = propertyInfo.typeInfo.variantType.value;
      info.ref.name = StringName.fromString(
        propertyInfo.name,
      ).nativePtr.cast<Void>();
      info.ref.class_name = propertyInfo.typeInfo.nativeTypeName.nativePtr
          .cast<Void>();
      info.ref.hint = propertyInfo.hint.index;
      info.ref.hint_string = propertyInfo.hintString.isEmpty
          ? StringName.fromString('').nativePtr.cast<Void>()
          : StringName.fromString(
              propertyInfo.hintString,
            ).nativePtr.cast<Void>();
      info.ref.usage = propertyInfo.flags;

      // For now we don't expose custom getter/setter, leave null will default to script
      _classdbRegisterExtensionClassProperty ??= () {
        final libdl = DynamicLibrary.process();
        return libdl
            .lookup<
              NativeFunction<
                GDExtensionInterfaceClassdbRegisterExtensionClassPropertyFunction
              >
            >('classdb_register_extension_class_property')
            .asFunction<
              DartGDExtensionInterfaceClassdbRegisterExtensionClassPropertyFunction
            >();
      }();
      _classdbRegisterExtensionClassProperty!(
        gde.extensionToken,
        typeInfo.className.nativePtr.cast<Void>(),
        info,
        nullptr.cast(),
        nullptr.cast(),
      );
    });
  }

  void bindMethod(
    TypeInfo typeInfo,
    String methodName,
    TypeInfo returnType,
    List<TypeInfo> argTypes,
  ) {
    using((arena) {
      final methodInfo = arena.allocate<GDExtensionClassMethodInfo>(
        sizeOf<GDExtensionClassMethodInfo>(),
      );
      // Zero init
      for (int i = 0; i < sizeOf<GDExtensionClassMethodInfo>(); ++i) {
        methodInfo.cast<Uint8>()[i] = 0;
      }

      methodInfo.ref.name = StringName.fromString(
        methodName,
      ).nativePtr.cast<Void>();
      // Store key for lookup in method_userdata (we just store a pointer-sized integer index)
      final key = _registerMethod(typeInfo, methodName, returnType, argTypes);
      methodInfo.ref.method_userdata = Pointer.fromAddress(key);
      methodInfo.ref.call_func = _methodCallTrampoline.nativeFunction.cast();
      methodInfo.ref.ptrcall_func = nullptr; // ptrcall not implemented yet
      methodInfo.ref.method_flags =
          GDExtensionClassMethodFlags.GDEXTENSION_METHOD_FLAG_NORMAL.value;
      methodInfo.ref.has_return_value =
          returnType.variantType !=
              GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL
          ? 1
          : 0;

      if (methodInfo.ref.has_return_value != 0) {
        final retInfo = arena.allocate<GDExtensionPropertyInfo>(
          sizeOf<GDExtensionPropertyInfo>(),
        );
        retInfo.ref.typeAsInt = returnType.variantType.value;
        retInfo.ref.name = returnType.className.nativePtr.cast<Void>();
        retInfo.ref.class_name = returnType.nativeTypeName.nativePtr
            .cast<Void>();
        retInfo.ref.hint = 0;
        retInfo.ref.hint_string = StringName.fromString(
          '',
        ).nativePtr.cast<Void>();
        retInfo.ref.usage = 6; // PROPERTY_USAGE_DEFAULT
        methodInfo.ref.return_value_info = retInfo;
      }

      final argc = argTypes.length;
      methodInfo.ref.argument_count = argc;
      if (argc > 0) {
        final argsArray = arena.allocate<GDExtensionPropertyInfo>(
          sizeOf<GDExtensionPropertyInfo>() * argc,
        );
        for (int i = 0; i < argc; ++i) {
          final a = (argsArray + i);
          a.ref.typeAsInt = argTypes[i].variantType.value;
          a.ref.name = argTypes[i].className.nativePtr.cast<Void>();
          a.ref.class_name = argTypes[i].nativeTypeName.nativePtr.cast<Void>();
          a.ref.hint = 0;
          a.ref.hint_string = StringName.fromString('').nativePtr.cast<Void>();
          a.ref.usage = 6;
        }
        methodInfo.ref.arguments_info = argsArray;
      }

      _classdbRegisterExtensionClassMethod ??= () {
        final fetched = godotResolve('classdb_register_extension_class_method');
        return fetched
            .cast<
              NativeFunction<
                GDExtensionInterfaceClassdbRegisterExtensionClassMethodFunction
              >
            >()
            .asFunction<
              DartGDExtensionInterfaceClassdbRegisterExtensionClassMethodFunction
            >();
      }();
      _classdbRegisterExtensionClassMethod!(
        gde.extensionToken,
        typeInfo.className.nativePtr.cast<Void>(),
        methodInfo,
      );
    });
  }

  String gdStringToString(GDString string) {
    // Convert a Godot String (String) to Dart String via two-pass UTF8.
    // First call to get length? The API needs a buffer; choose a reasonable max.
    const int bufSize = 1024; // TODO: grow if needed.
    final buffer = calloc<Char>(bufSize);
    try {
      _stringToUtf8Chars ??= () {
        try {
          return godotResolve('string_to_utf8_chars').cast<NativeFunction<GDExtensionInterfaceStringToUtf8CharsFunction>>()
            .asFunction<DartGDExtensionInterfaceStringToUtf8CharsFunction>();
        } catch (_) {
          return godotResolve('gdextension_interface_string_to_utf8_chars').cast<NativeFunction<GDExtensionInterfaceStringToUtf8CharsFunction>>()
            .asFunction<DartGDExtensionInterfaceStringToUtf8CharsFunction>();
        }
      }();
      final written = _stringToUtf8Chars!(
        string.nativePtr.cast<Void>(),
        buffer,
        bufSize,
      );
      return buffer.cast<Utf8>().toDartString(length: written);
    } finally {
      calloc.free(buffer);
    }
  }

  // Returns the previously registered Dart wrapper for a Godot object pointer, or null if unknown.
  Object? gdObjectToDartObject(GDExtensionObjectPtr object) {
    final addr = object.address;
    if (addr == 0) return null;
    return _objectCache[addr];
  }

  // Look up the TypeInfo for a Dart Type, returning a nullable value.
  TypeInfo? getGodotTypeInfo(Type type) => _lookupTypeInfo(type);

  void attachTypeResolver(TypeResolver resolver) {
    _typeResolver = resolver;
  }

  Pointer<Void> toPersistentHandle(Object instance) =>
      _safeNewPersistentHandle(instance);

  // ---------------------------------------------------------------------------
  // Object registration (replacement for former native instance binding lookup)
  // ---------------------------------------------------------------------------
  static final Map<int, Object> _objectCache = <int, Object>{};
  // Method registry: maps integer key -> dispatcher info
  static int _nextMethodKey = 1;
  static final Map<int, _RegisteredMethod> _registeredMethods = {};
  // Signal callable registry
  static int _nextSignalKey = 1;
  static final Map<int, SignalCallable> _signalCallables = {};
  static final NativeCallable<GDExtensionCallableCustomCallFunction>
  _signalCallTrampoline =
      NativeCallable<GDExtensionCallableCustomCallFunction>.listener(
        _SignalCallableCallNative,
      );
  static final NativeCallable<GDExtensionCallableCustomIsValidFunction>
  _signalValidTrampoline =
      NativeCallable<GDExtensionCallableCustomIsValidFunction>.isolateLocal(
        _SignalCallableIsValidNative,
        exceptionalReturn: 0,
      );
  static final NativeCallable<GDExtensionCallableCustomFreeFunction>
  _signalFreeTrampoline =
      NativeCallable<GDExtensionCallableCustomFreeFunction>.listener(
        _SignalCallableFreeNative,
      );
  // Native trampoline pointer (Dart -> native) using NativeCallable.
  static final NativeCallable<GDExtensionClassMethodCallNative>
  _methodCallTrampoline =
      NativeCallable<GDExtensionClassMethodCallNative>.listener(
        _MethodCallNative,
      );
  // ignore: unused_field
  static TypeResolver? _typeResolver;

  TypeInfo? _lookupTypeInfo(Type type) {
    // Attempt to find static sTypeInfo via mirrors not available in Flutter,
    // so rely on a registry map we populate externally or via TypeInfo.forType.
    return TypeInfo.forType(type);
  }

  /// Register a Dart wrapper for a native Godot object pointer. Called when a
  /// Dart-side wrapper is created (either because Dart constructed the object
  /// or lazily when an object pointer is first seen coming from Godot).
  void registerDartWrapper(Object wrapper, GDExtensionObjectPtr nativePtr) {
    final addr = nativePtr.address;
    if (addr == 0) return;
    _objectCache.putIfAbsent(addr, () => wrapper);
  }

  /// Unregister a Dart wrapper (e.g. on finalization / explicit free).
  void unregisterDartWrapper(GDExtensionObjectPtr nativePtr) {
    final addr = nativePtr.address;
    if (addr == 0) return;
    _objectCache.remove(addr);
  }

  // ---------------------------------------------------------------------------
  // Method dispatch support
  // ---------------------------------------------------------------------------
  int _registerMethod(
    TypeInfo typeInfo,
    String name,
    TypeInfo returnType,
    List<TypeInfo> argTypes,
  ) {
    final key = _nextMethodKey++;
    _registeredMethods[key] = _RegisteredMethod(
      typeInfo: typeInfo,
      name: name,
      returnType: returnType,
      argTypes: argTypes,
    );
    return key;
  }

  // Public API to attach actual Dart implementation after registration
  static void setMethodImplementation(
    TypeInfo typeInfo,
    String name,
    Function impl,
  ) {
    for (final entry in _registeredMethods.entries) {
      final rm = entry.value;
      if (rm.typeInfo == typeInfo && rm.name == name) {
        rm.impl = impl;
        return;
      }
    }
  }

  Callable _createCustomSignalCallable(
    SignalCallable callable,
    int instanceId,
  ) {
    final key = _nextSignalKey++;
    _signalCallables[key] = callable;
    // Build custom info struct in native memory.
    final info = calloc<GDExtensionCallableCustomInfo>();
    info.ref.callable_userdata = Pointer.fromAddress(key);
    info.ref.token = nullptr;
    info.ref.object_id = instanceId;
    info.ref.call_func = _signalCallTrampoline.nativeFunction.cast();
    info.ref.is_valid_func = _signalValidTrampoline.nativeFunction.cast();
    info.ref.free_func = _signalFreeTrampoline.nativeFunction.cast();
    info.ref.hash_func = nullptr;
    info.ref.equal_func = nullptr;
    info.ref.less_than_func = nullptr;
    info.ref.to_string_func = nullptr;

    // Create a Variant Callable from object + method name to reuse mechanism.
    // We fake by constructing an empty Callable then patching memory with custom info.
    final callableVariant = Callable();
    // Overwrite underlying callable memory with custom info pointer layout if needed.
    // NOTE: This is highly implementation-specific & may not match Godot internals;
    // placeholder minimal approach: return plain Dart wrapper; invocation routed manually.
    return callableVariant;
  }
}

class _RegisteredMethod {
  final TypeInfo typeInfo;
  final String name;
  final TypeInfo returnType;
  final List<TypeInfo> argTypes;
  Function? impl; // (ExtensionType instance, List<dynamic> args) -> dynamic
  _RegisteredMethod({
    required this.typeInfo,
    required this.name,
    required this.returnType,
    required this.argTypes,
  });
}

// Native trampoline invoked by Godot when a registered method is called.
void _MethodCallNative(
  Pointer<Void> methodUserdata,
  GDExtensionClassInstancePtr instancePtr,
  Pointer<GDExtensionConstVariantPtr> args,
  int argCount,
  GDExtensionVariantPtr retVariantPtr,
  Pointer<GDExtensionCallError> errorPtr,
) {
  // Default: assume OK
  errorPtr.ref.errorAsInt = GDExtensionCallErrorType.GDEXTENSION_CALL_OK.value;
  final key = methodUserdata.address;
  final reg = GodotDartNativeBindings._registeredMethods[key];
  if (reg == null) {
    errorPtr.ref.errorAsInt =
        GDExtensionCallErrorType.GDEXTENSION_CALL_ERROR_INVALID_METHOD.value;
    return;
  }
  try {
    // Retrieve Dart object for instance
    final obj = GodotDart.instance!.dartBindings.gdObjectToDartObject(
      instancePtr.cast(),
    );
    if (obj == null) {
      errorPtr.ref.errorAsInt = GDExtensionCallErrorType
          .GDEXTENSION_CALL_ERROR_INSTANCE_IS_NULL
          .value;
      return;
    }
    // Convert arguments
    final converted = <dynamic>[];
    for (int i = 0; i < argCount; ++i) {
      final variantPtr = (args + i).value;
      // Convert using Variant wrapper
      converted.add(convertFromVariantPtr(variantPtr));
    }
    final impl = reg.impl;
    dynamic result;
    if (impl != null) {
      result = Function.apply(impl, [obj, ...converted]);
    }
    // Write return value if expected
    if (reg.returnType.variantType !=
        GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_NIL) {
      if (result != null) {
        Variant v = result is Variant ? result : Variant(result);
        final copyCtor = getToTypeConstructor(v.typeInfo.variantType.value);
        copyCtor?.call(retVariantPtr.cast(), v.nativePtr.cast());
      }
    }
  } catch (_) {
    errorPtr.ref.errorAsInt =
        GDExtensionCallErrorType.GDEXTENSION_CALL_ERROR_INVALID_METHOD.value;
  }
}

// ---------------------------------------------------------------------------
// Finalizer trampolines (Variant / Builtin / Extension object cleanup)
// ---------------------------------------------------------------------------
typedef _VoidPtrFnNative = Void Function(Pointer<Void>);

// // Variant finalizer: expects pointer to variant memory previously allocated
// // via gde_mem_alloc and constructed. We call destroy then free.
// void _finalizeVariant(Pointer<Void> variantPtr) {
//   if (variantPtr == nullptr) return;
//   try {
//     _variantDestroy ??= () {
//       final libdl = DynamicLibrary.process();

//       return libdl
//           .lookup<NativeFunction<GDExtensionInterfaceVariantDestroyFunction>>(
//             'variant_destroy',
//           )
//           .asFunction<DartGDExtensionInterfaceVariantDestroyFunction>();
//     }();
//     _memFree ??= () {
//       final libdl = DynamicLibrary.process();

//       return libdl
//           .lookup<NativeFunction<GDExtensionInterfaceMemFreeFunction>>(
//             'mem_free',
//           )
//           .asFunction<DartGDExtensionInterfaceMemFreeFunction>();
//     }();
//     _variantDestroy!(variantPtr.cast());
//     _memFree!(variantPtr);
//   } catch (_) {
//     // Swallow; finalizers must not throw.
//   }
// }

// void _finalizeBuiltinObject(Pointer<Void> builtinOpaquePtr) {
//   print("FINALIZE BUILTIN");
//   if (builtinOpaquePtr == nullptr) return;
//   try {
//     // Layout: [GDExtensionPtrDestructor][object bytes...]
//     final destructorPtr = builtinOpaquePtr.cast<GDExtensionPtrDestructor>();
//     final destructor = destructorPtr.value;
//     if (destructor != nullptr) {
//       // Compute region after function pointer.
//       final objectRegion = builtinOpaquePtr.cast<Uint8>().elementAt(
//         sizeOf<GDExtensionPtrDestructor>(),
//       );
//       // Call user provided destructor on the trailing bytes.
//       try {
//         final destructorFn = destructor
//             .asFunction<void Function(Pointer<Void>)>();
//         destructorFn(objectRegion.cast());
//       } catch (_) {
//         // Ignore errors during user destructor call.
//       }
//     }
//     _memFree ??= () {
//       final libdl = DynamicLibrary.process();

//       return libdl
//           .lookup<NativeFunction<GDExtensionInterfaceMemFreeFunction>>(
//             'mem_free',
//           )
//           .asFunction<DartGDExtensionInterfaceMemFreeFunction>();
//     }();
//     _memFree!(builtinOpaquePtr);
//   } catch (_) {}
// }

// void _finalizeExtensionObject(Pointer<Void> extensionObjectPtr) {
//   if (extensionObjectPtr == nullptr) return;
//   try {
//     _objectDestroy ??= () {
//       final libdl = DynamicLibrary.process();
//       try {
//         return libdl
//             .lookup<NativeFunction<GDExtensionInterfaceObjectDestroyFunction>>(
//               'object_destroy',
//             )
//             .asFunction<DartGDExtensionInterfaceObjectDestroyFunction>();
//       } catch (_) {
//         final ptrVar = libdl
//             .lookup<
//               Pointer<NativeFunction<GDExtensionInterfaceObjectDestroyFunction>>
//             >('gdextension_interface_object_destroy');
//         return ptrVar.value
//             .asFunction<DartGDExtensionInterfaceObjectDestroyFunction>();
//       }
//     }();
//     _objectDestroy!(extensionObjectPtr.cast());
//   } catch (_) {}
// }

DartGDExtensionInterfaceVariantDestroyFunction? _variantDestroy;
DartGDExtensionInterfaceMemFreeFunction? _memFree;
DartGDExtensionInterfaceObjectDestroyFunction? _objectDestroy;

// Call this with the getProcAddress function from the init callback
void initializeFinalizerFunctions(GDExtensionInterfaceGetProcAddress getProcAddress) {
  final getProcAddressFn = getProcAddress
      .asFunction<GDExtensionInterfaceGetProcAddressFunction>();
  
  // Get variant_destroy function
  final variantDestroyName = 'variant_destroy'.toNativeUtf8();
  final variantDestroyPtr = getProcAddressFn(variantDestroyName.cast<ffi.Char>());
  pkg_ffi.malloc.free(variantDestroyName);
  
  if (variantDestroyPtr != ffi.nullptr) {
    _variantDestroy = variantDestroyPtr
        .cast<ffi.NativeFunction<GDExtensionInterfaceVariantDestroyFunction>>()
        .asFunction<DartGDExtensionInterfaceVariantDestroyFunction>();
  }
  
  // Get mem_free function
  final memFreeName = 'mem_free'.toNativeUtf8();
  final memFreePtr = getProcAddressFn(memFreeName.cast<ffi.Char>());
  pkg_ffi.malloc.free(memFreeName);
  
  if (memFreePtr != ffi.nullptr) {
    _memFree = memFreePtr
        .cast<ffi.NativeFunction<GDExtensionInterfaceMemFreeFunction>>()
        .asFunction<DartGDExtensionInterfaceMemFreeFunction>();
  }
  
  // Get object_destroy function
  final objectDestroyName = 'object_destroy'.toNativeUtf8();
  final objectDestroyPtr = getProcAddressFn(objectDestroyName.cast<ffi.Char>());
  pkg_ffi.malloc.free(objectDestroyName);
  
  if (objectDestroyPtr != ffi.nullptr) {
    _objectDestroy = objectDestroyPtr
        .cast<ffi.NativeFunction<GDExtensionInterfaceObjectDestroyFunction>>()
        .asFunction<DartGDExtensionInterfaceObjectDestroyFunction>();
  }
}

// Simplified finalizer functions - these should be VERY simple
void _finalizeVariant(Pointer<Void> variantPtr) {
  if (variantPtr == nullptr || _variantDestroy == null || _memFree == null) {
    return;
  }
  
  // No try-catch, no complex operations, no lazy initialization
  _variantDestroy!(variantPtr.cast());
  _memFree!(variantPtr);
}

void _finalizeBuiltinObject(Pointer<Void> builtinOpaquePtr) {
  // Remove the print statement - no I/O in finalizers
  if (builtinOpaquePtr == nullptr || _memFree == null) {
    return;
  }
  
  // Layout: [GDExtensionPtrDestructor][object bytes...]
  final destructorPtr = builtinOpaquePtr.cast<GDExtensionPtrDestructor>();
  final destructor = destructorPtr.value;
  
  if (destructor != nullptr) {
    // Compute region after function pointer.
    final objectRegion = builtinOpaquePtr.cast<Uint8>().elementAt(
      sizeOf<GDExtensionPtrDestructor>(),
    );
    
    // Call user provided destructor - minimal error handling
    final destructorFn = destructor.asFunction<void Function(Pointer<Void>)>();
    destructorFn(objectRegion.cast());
  }
  
  _memFree!(builtinOpaquePtr);
}

void _finalizeExtensionObject(Pointer<Void> extensionObjectPtr) {
  if (extensionObjectPtr == nullptr || _objectDestroy == null) {
    return;
  }
  
  // No complex initialization, no try-catch
  _objectDestroy!(extensionObjectPtr.cast());
}

// final _finalizeVariantTrampoline =
//     NativeCallable<_VoidPtrFnNative>.isolateLocal(_finalizeVariant);
// final _finalizeBuiltinObjectTrampoline =
//     NativeCallable<_VoidPtrFnNative>.isolateLocal(_finalizeBuiltinObject);
// final _finalizeExtensionObjectTrampoline =
//     NativeCallable<_VoidPtrFnNative>.isolateLocal(_finalizeExtensionObject);

// FFI typedefs for method call trampoline
typedef GDExtensionClassMethodCallNative =
    Void Function(
      Pointer<Void>,
      GDExtensionClassInstancePtr,
      Pointer<GDExtensionConstVariantPtr>,
      Int32,
      GDExtensionVariantPtr,
      Pointer<GDExtensionCallError>,
    );
typedef DartGDExtensionClassMethodCallFunction =
    void Function(
      Pointer<Void>,
      GDExtensionClassInstancePtr,
      Pointer<GDExtensionConstVariantPtr>,
      int,
      GDExtensionVariantPtr,
      Pointer<GDExtensionCallError>,
    );

// Signal callable native functions typedefs
typedef GDExtensionCallableCustomCallFunction =
    Void Function(
      Pointer<Void>,
      Pointer<GDExtensionConstVariantPtr>,
      Int32,
      GDExtensionVariantPtr,
      Pointer<GDExtensionCallError>,
    );
typedef GDExtensionCallableCustomIsValidFunction =
    Uint8 Function(Pointer<Void>);
typedef GDExtensionCallableCustomFreeFunction = Void Function(Pointer<Void>);

// Cached function pointers resolved lazily (dual-path symbol -> interface pointer variable)
// ClassDB registration
DartGDExtensionInterfaceClassdbRegisterExtensionClass2Function?
_classdbRegisterExtensionClass2; // ignore: type_annotate_public_apis
DartGDExtensionInterfaceClassdbRegisterExtensionClassPropertyFunction?
_classdbRegisterExtensionClassProperty; // ignore: type_annotate_public_apis
DartGDExtensionInterfaceClassdbRegisterExtensionClassMethodFunction?
_classdbRegisterExtensionClassMethod; // ignore: type_annotate_public_apis
// String / memory / object
DartGDExtensionInterfaceStringToUtf8CharsFunction? _stringToUtf8Chars;
// DartGDExtensionInterfaceVariantDestroyFunction? _variantDestroy;
// DartGDExtensionInterfaceMemFreeFunction? _memFree;
// DartGDExtensionInterfaceObjectDestroyFunction? _objectDestroy;

void _SignalCallableCallNative(
  Pointer<Void> userdata,
  Pointer<GDExtensionConstVariantPtr> args,
  int argCount,
  GDExtensionVariantPtr rRet,
  Pointer<GDExtensionCallError> err,
) {
  err.ref.errorAsInt = GDExtensionCallErrorType.GDEXTENSION_CALL_OK.value;
  final key = userdata.address;
  final sc = GodotDartNativeBindings._signalCallables[key];
  if (sc == null) {
    err.ref.errorAsInt =
        GDExtensionCallErrorType.GDEXTENSION_CALL_ERROR_INVALID_METHOD.value;
    return;
  }
  final variants = <Variant>[];
  for (int i = 0; i < argCount; ++i) {
    variants.add(Variant.fromVariantPtr((args + i).value));
  }
  try {
    // Invoke SignalCallable.call(List<Variant>)
    // ignore: invalid_use_of_internal_member
    // Use dynamic to call annotated entry point.
    // The different subclasses implement call.
    // ignore: unnecessary_cast
    (sc as dynamic).call(variants);
  } catch (_) {
    err.ref.errorAsInt =
        GDExtensionCallErrorType.GDEXTENSION_CALL_ERROR_INVALID_METHOD.value;
  }
}

int _SignalCallableIsValidNative(Pointer<Void> userdata) {
  final key = userdata.address;
  return GodotDartNativeBindings._signalCallables.containsKey(key) ? 1 : 0;
}

void _SignalCallableFreeNative(Pointer<Void> userdata) {
  final key = userdata.address;
  GodotDartNativeBindings._signalCallables.remove(key);
}

@pragma('vm:entry-point')
List<Object?> _variantsToDart(
  Pointer<Pointer<Void>> variants,
  int count,
  List<dynamic> typeInfoList,
) {
  var result = <Object?>[];
  for (int i = 0; i < count; ++i) {
    var variantPtr = (variants + i).value;
    dynamic info = typeInfoList[i];
    // TODO: Fix me - called from both GodotDartBindings::bind_call which uses
    // TypeInfo, and DartScriptInstance::call which uses PropertyInfo. See if
    // We can't combine into one type.
    if (info is PropertyInfo) {
      result.add(_variantPtrToDart(variantPtr, info.typeInfo));
    } else {
      result.add(_variantPtrToDart(variantPtr, info as TypeInfo));
    }
  }

  return result;
}

@pragma('vm:entry-point')
// TODO: The only thing we actually need to know here is if we want to
// keep the type as a Variant, as that's the only special case.
Object? _variantPtrToDart(Pointer<Void> variantPtr, TypeInfo typeInfo) {
  // What to do here? This was essentially a "cast" replacement which is why it
  // had a special case checking if it was casting to "Variant."
  if (typeInfo.variantType ==
      GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VARIANT_MAX) {
    // Keep as variant
    return Variant.fromVariantPtr(variantPtr);
  } else {
    return convertFromVariantPtr(variantPtr);
  }
}
