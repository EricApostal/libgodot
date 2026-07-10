// Hand-written FFI struct/typedef bindings for the subset of
// core/extension/gdextension_interface.gen.h this package uses.
//
// Struct fields that are themselves function pointers are declared as plain
// `Pointer<Void>` rather than precisely-typed `Pointer<NativeFunction<T>>`:
// both have identical size/layout (a single machine word), and every such
// field here is either left null or assigned via `.cast()` from a
// `Pointer.fromFunction<T>(...)` at the call site, so nothing is lost by not
// naming every callback's exact type at the struct-field level.
library;

import 'dart:ffi';

typedef GDExtensionBool = Uint8;
typedef GDExtensionInt = Int64;

// Opaque pointer categories (all `void*`/`const void*` in C).
typedef GDExtensionVariantPtr = Pointer<Void>;
typedef GDExtensionStringNamePtr = Pointer<Void>;
typedef GDExtensionStringPtr = Pointer<Void>;
typedef GDExtensionObjectPtr = Pointer<Void>;
typedef GDExtensionTypePtr = Pointer<Void>;
typedef GDExtensionMethodBindPtr = Pointer<Void>;
typedef GDExtensionClassInstancePtr = Pointer<Void>;
typedef GDExtensionClassLibraryPtr = Pointer<Void>;

/// GDExtensionVariantType (core/extension/gdextension_interface.gen.h:46).
abstract final class GDExtensionVariantType {
  static const nil = 0;
  static const boolType = 1;
  static const int_ = 2;
  static const float = 3;
  static const string = 4;
  static const vector2 = 5;
  static const vector2i = 6;
  static const rect2 = 7;
  static const rect2i = 8;
  static const vector3 = 9;
  static const vector3i = 10;
  static const transform2d = 11;
  static const vector4 = 12;
  static const vector4i = 13;
  static const plane = 14;
  static const quaternion = 15;
  static const aabb = 16;
  static const basis = 17;
  static const transform3d = 18;
  static const projection = 19;
  static const color = 20;
  static const stringName = 21;
  static const nodePath = 22;
  static const rid = 23;
  static const object = 24;
  static const callable = 25;
  static const signal = 26;
  static const dictionary = 27;
  static const array = 28;
  static const packedByteArray = 29;
  static const packedInt32Array = 30;
  static const packedInt64Array = 31;
  static const packedFloat32Array = 32;
  static const packedFloat64Array = 33;
  static const packedStringArray = 34;
  static const packedVector2Array = 35;
  static const packedVector3Array = 36;
  static const packedColorArray = 37;
  static const packedVector4Array = 38;
  static const variantMax = 39;
}

/// GDExtensionInitializationLevel (core/extension/gdextension_interface.gen.h:693).
abstract final class GDExtensionInitializationLevel {
  static const core = 0;
  static const servers = 1;
  static const scene = 2;
  static const editor = 3;
  static const max = 4;
}

/// GDExtensionClassMethodFlags (core/extension/gdextension_interface.gen.h:441).
abstract final class GDExtensionClassMethodFlags {
  static const normal = 1;
  static const editor = 2;
  static const const_ = 4;
  static const virtual_ = 8;
  static const vararg = 16;
  static const static_ = 32;
  static const virtualRequired = 128;
  static const defaults = 1;
}

/// GDExtensionClassMethodArgumentMetadata (core/extension/gdextension_interface.gen.h:453).
abstract final class GDExtensionMethodArgumentMetadata {
  static const none = 0;
  static const realIsFloat = 9;
  static const realIsDouble = 10;
}

/// GDExtensionCallErrorType + GDExtensionCallError
/// (core/extension/gdextension_interface.gen.h:158-172).
final class GDExtensionCallError extends Struct {
  @Int32()
  external int error;
  @Int32()
  external int argument;
  @Int32()
  external int expected;
}

/// GDExtensionPropertyInfo (core/extension/gdextension_interface.gen.h:216-223).
final class GDExtensionPropertyInfo extends Struct {
  @Int32()
  external int type;
  external Pointer<Void> name; // GDExtensionStringNamePtr
  external Pointer<Void> className; // GDExtensionStringNamePtr
  @Uint32()
  external int hint;
  external Pointer<Void> hintString; // GDExtensionStringPtr
  @Uint32()
  external int usage;
}

/// GDExtensionInstanceBindingCallbacks (core/extension/gdextension_interface.gen.h:191-195).
final class GDExtensionInstanceBindingCallbacks extends Struct {
  external Pointer<Void> createCallback;
  external Pointer<Void> freeCallback;
  external Pointer<Void> referenceCallback;
}

/// GDExtensionClassMethodInfo (core/extension/gdextension_interface.gen.h:472-497).
final class GDExtensionClassMethodInfo extends Struct {
  external Pointer<Void> name; // GDExtensionStringNamePtr
  external Pointer<Void> methodUserdata;
  external Pointer<Void> callFunc; // GDExtensionClassMethodCall
  external Pointer<Void> ptrcallFunc; // GDExtensionClassMethodPtrCall
  @Uint32()
  external int methodFlags;
  @Uint8()
  external int hasReturnValue; // GDExtensionBool
  external Pointer<GDExtensionPropertyInfo> returnValueInfo;
  @Int32()
  external int returnValueMetadata;
  @Uint32()
  external int argumentCount;
  external Pointer<GDExtensionPropertyInfo> argumentsInfo;
  external Pointer<Int32> argumentsMetadata;
  @Uint32()
  external int defaultArgumentCount;
  external Pointer<Pointer<Void>> defaultArguments;
}

/// GDExtensionClassCreationInfo6 (core/extension/gdextension_interface.gen.h:400-436).
///
/// Every callback field beyond create_instance_func/free_instance_func/
/// get_virtual_func is left null for Dart-authored classes in this package;
/// Godot treats a null optional callback as "not implemented".
final class GDExtensionClassCreationInfo6 extends Struct {
  @Uint8()
  external int isVirtual;
  @Uint8()
  external int isAbstract;
  @Uint8()
  external int isExposed;
  @Uint8()
  external int isRuntime;
  external Pointer<Void> iconPath; // GDExtensionConstStringPtr
  external Pointer<Void> setFunc;
  external Pointer<Void> getFunc;
  external Pointer<Void> getPropertyListFunc;
  external Pointer<Void> freePropertyListFunc;
  external Pointer<Void> propertyCanRevertFunc;
  external Pointer<Void> propertyGetRevertFunc;
  external Pointer<Void> validatePropertyFunc;
  external Pointer<Void> notificationFunc;
  external Pointer<Void> toStringFunc;
  external Pointer<Void> referenceFunc;
  external Pointer<Void> unreferenceFunc;
  external Pointer<Void> createInstanceFunc; // GDExtensionClassCreateInstance3
  external Pointer<Void> freeInstanceFunc; // GDExtensionClassFreeInstance
  external Pointer<Void> recreateInstanceFunc;
  external Pointer<Void> getVirtualFunc; // GDExtensionClassGetVirtual2
  external Pointer<Void> getVirtualCallDataFunc;
  external Pointer<Void> callVirtualWithDataFunc;
  external Pointer<Void> classUserdata;
}

/// GDExtensionInitialization (core/extension/gdextension_interface.gen.h:702-713).
final class GDExtensionInitialization extends Struct {
  @Int32()
  external int minimumInitializationLevel;
  external Pointer<Void> userdata;
  external Pointer<Void> initialize; // GDExtensionInitializeCallback
  external Pointer<Void> deinitialize; // GDExtensionDeinitializeCallback
}

// MARK: - Native function signatures (for Pointer.fromFunction/lookupFunction)

/// `GDExtensionInterfaceFunctionPtr (*GDExtensionInterfaceGetProcAddress)(const char *)`
typedef GDExtensionInterfaceGetProcAddressNative =
    Pointer<NativeFunction<Void Function()>> Function(Pointer<Char>);

/// `GDExtensionBool (*GDExtensionInitializationFunction)(GetProcAddress, ClassLibraryPtr, GDExtensionInitialization*)`
typedef GDExtensionInitializationFunctionNative =
    GDExtensionBool Function(
      Pointer<NativeFunction<GDExtensionInterfaceGetProcAddressNative>>,
      GDExtensionClassLibraryPtr,
      Pointer<GDExtensionInitialization>,
    );

typedef GDExtensionInitializeCallbackNative =
    Void Function(Pointer<Void> userdata, Int32 level);
typedef GDExtensionDeinitializeCallbackNative =
    Void Function(Pointer<Void> userdata, Int32 level);

/// `GDExtensionObjectPtr (*GDExtensionClassCreateInstance3)(void*, GDExtensionBool)`
typedef GDExtensionClassCreateInstance3Native =
    GDExtensionObjectPtr Function(Pointer<Void> classUserdata, GDExtensionBool notifyPostinitialize);

/// `void (*GDExtensionClassFreeInstance)(void*, GDExtensionClassInstancePtr)`
typedef GDExtensionClassFreeInstanceNative =
    Void Function(Pointer<Void> classUserdata, GDExtensionClassInstancePtr instance);

/// `void (*GDExtensionClassCallVirtual)(GDExtensionClassInstancePtr, const GDExtensionConstTypePtr*, GDExtensionTypePtr)`
typedef GDExtensionClassCallVirtualNative =
    Void Function(GDExtensionClassInstancePtr instance, Pointer<Pointer<Void>> args, GDExtensionTypePtr ret);

/// `GDExtensionClassCallVirtual (*GDExtensionClassGetVirtual2)(void*, GDExtensionConstStringNamePtr, uint32_t)`
typedef GDExtensionClassGetVirtual2Native =
    Pointer<NativeFunction<GDExtensionClassCallVirtualNative>> Function(
      Pointer<Void> classUserdata,
      GDExtensionStringNamePtr name,
      Uint32 hash,
    );

/// `void (*GDExtensionClassMethodCall)(void*, GDExtensionClassInstancePtr, const GDExtensionConstVariantPtr*, GDExtensionInt, GDExtensionVariantPtr, GDExtensionCallError*)`
typedef GDExtensionClassMethodCallNative =
    Void Function(
      Pointer<Void> methodUserdata,
      GDExtensionClassInstancePtr instance,
      Pointer<Pointer<Void>> args,
      GDExtensionInt argumentCount,
      GDExtensionVariantPtr rReturn,
      Pointer<GDExtensionCallError> rError,
    );

/// `void (*GDExtensionClassMethodPtrCall)(void*, GDExtensionClassInstancePtr, const GDExtensionConstTypePtr*, GDExtensionTypePtr)`
typedef GDExtensionClassMethodPtrCallNative =
    Void Function(
      Pointer<Void> methodUserdata,
      GDExtensionClassInstancePtr instance,
      Pointer<Pointer<Void>> args,
      GDExtensionTypePtr rRet,
    );

// MARK: - GDExtensionInterface function typedefs (resolved via GetProcAddress)

typedef ClassdbConstructObject3Native =
    GDExtensionObjectPtr Function(GDExtensionStringNamePtr className);
typedef ClassdbConstructObject3Dart =
    GDExtensionObjectPtr Function(GDExtensionStringNamePtr className);

typedef ClassdbGetMethodBindNative =
    GDExtensionMethodBindPtr Function(
      GDExtensionStringNamePtr className,
      GDExtensionStringNamePtr methodName,
      GDExtensionInt hash,
    );
typedef ClassdbGetMethodBindDart =
    GDExtensionMethodBindPtr Function(
      GDExtensionStringNamePtr className,
      GDExtensionStringNamePtr methodName,
      int hash,
    );

typedef ObjectMethodBindPtrcallNative =
    Void Function(
      GDExtensionMethodBindPtr methodBind,
      GDExtensionObjectPtr instance,
      Pointer<Pointer<Void>> args,
      Pointer<Void> rRet,
    );
typedef ObjectMethodBindPtrcallDart =
    void Function(
      GDExtensionMethodBindPtr methodBind,
      GDExtensionObjectPtr instance,
      Pointer<Pointer<Void>> args,
      Pointer<Void> rRet,
    );

typedef ObjectSetInstanceNative =
    Void Function(GDExtensionObjectPtr object, GDExtensionStringNamePtr className, GDExtensionClassInstancePtr instance);
typedef ObjectSetInstanceDart =
    void Function(GDExtensionObjectPtr object, GDExtensionStringNamePtr className, GDExtensionClassInstancePtr instance);

typedef ObjectDestroyNative = Void Function(GDExtensionObjectPtr object);
typedef ObjectDestroyDart = void Function(GDExtensionObjectPtr object);

typedef ClassdbRegisterExtensionClass6Native =
    Void Function(
      GDExtensionClassLibraryPtr library,
      GDExtensionStringNamePtr className,
      GDExtensionStringNamePtr parentClassName,
      Pointer<GDExtensionClassCreationInfo6> info,
    );
typedef ClassdbRegisterExtensionClass6Dart =
    void Function(
      GDExtensionClassLibraryPtr library,
      GDExtensionStringNamePtr className,
      GDExtensionStringNamePtr parentClassName,
      Pointer<GDExtensionClassCreationInfo6> info,
    );

typedef ClassdbRegisterExtensionClassMethodNative =
    Void Function(
      GDExtensionClassLibraryPtr library,
      GDExtensionStringNamePtr className,
      Pointer<GDExtensionClassMethodInfo> methodInfo,
    );
typedef ClassdbRegisterExtensionClassMethodDart =
    void Function(
      GDExtensionClassLibraryPtr library,
      GDExtensionStringNamePtr className,
      Pointer<GDExtensionClassMethodInfo> methodInfo,
    );

typedef ClassdbRegisterExtensionClassPropertyNative =
    Void Function(
      GDExtensionClassLibraryPtr library,
      GDExtensionStringNamePtr className,
      Pointer<GDExtensionPropertyInfo> info,
      GDExtensionStringNamePtr setter,
      GDExtensionStringNamePtr getter,
    );
typedef ClassdbRegisterExtensionClassPropertyDart =
    void Function(
      GDExtensionClassLibraryPtr library,
      GDExtensionStringNamePtr className,
      Pointer<GDExtensionPropertyInfo> info,
      GDExtensionStringNamePtr setter,
      GDExtensionStringNamePtr getter,
    );

typedef StringNameNewWithUtf8CharsNative =
    Void Function(Pointer<Void> rDest, Pointer<Char> contents);
typedef StringNameNewWithUtf8CharsDart =
    void Function(Pointer<Void> rDest, Pointer<Char> contents);

typedef StringNewWithUtf8CharsNative =
    Void Function(Pointer<Void> rDest, Pointer<Char> contents);
typedef StringNewWithUtf8CharsDart =
    void Function(Pointer<Void> rDest, Pointer<Char> contents);

/// `GDExtensionInt (*)(GDExtensionConstStringPtr, char *, GDExtensionInt)`
typedef StringToUtf8CharsNative =
    GDExtensionInt Function(Pointer<Void> self, Pointer<Char> rText, GDExtensionInt maxWriteLength);
typedef StringToUtf8CharsDart =
    int Function(Pointer<Void> self, Pointer<Char> rText, int maxWriteLength);

typedef VariantGetPtrConstructorNative =
    Pointer<NativeFunction<Void Function(Pointer<Void>, Pointer<Pointer<Void>>)>> Function(
      Int32 variantType,
      Int32 constructorIndex,
    );
typedef VariantGetPtrConstructorDart =
    Pointer<NativeFunction<Void Function(Pointer<Void>, Pointer<Pointer<Void>>)>> Function(
      int variantType,
      int constructorIndex,
    );

typedef VariantGetPtrDestructorNative =
    Pointer<NativeFunction<Void Function(Pointer<Void>)>> Function(Int32 variantType);
typedef VariantGetPtrDestructorDart =
    Pointer<NativeFunction<Void Function(Pointer<Void>)>> Function(int variantType);

typedef MemAllocNative = Pointer<Void> Function(IntPtr bytes);
typedef MemAllocDart = Pointer<Void> Function(int bytes);

typedef MemFreeNative = Void Function(Pointer<Void> ptr);
typedef MemFreeDart = void Function(Pointer<Void> ptr);

/// `void (*GDExtensionVariantFromTypeConstructorFunc)(GDExtensionUninitializedVariantPtr, GDExtensionTypePtr)`
typedef VariantFromTypeConstructorFuncNative =
    Void Function(Pointer<Void> rVariant, Pointer<Void> rawValue);

/// `void (*GDExtensionTypeFromVariantConstructorFunc)(GDExtensionUninitializedTypePtr, GDExtensionVariantPtr)`
typedef TypeFromVariantConstructorFuncNative =
    Void Function(Pointer<Void> rRawValue, Pointer<Void> variant);

typedef GetVariantFromTypeConstructorNative =
    Pointer<NativeFunction<VariantFromTypeConstructorFuncNative>> Function(Int32 variantType);
typedef GetVariantFromTypeConstructorDart =
    Pointer<NativeFunction<VariantFromTypeConstructorFuncNative>> Function(int variantType);

typedef GetVariantToTypeConstructorNative =
    Pointer<NativeFunction<TypeFromVariantConstructorFuncNative>> Function(Int32 variantType);
typedef GetVariantToTypeConstructorDart =
    Pointer<NativeFunction<TypeFromVariantConstructorFuncNative>> Function(int variantType);

typedef VariantNewNilNative = Void Function(Pointer<Void> rDest);
typedef VariantNewNilDart = void Function(Pointer<Void> rDest);

typedef VariantDestroyNative = Void Function(Pointer<Void> self);
typedef VariantDestroyDart = void Function(Pointer<Void> self);

typedef VariantGetTypeNative = Int32 Function(Pointer<Void> self);
typedef VariantGetTypeDart = int Function(Pointer<Void> self);

typedef GlobalGetSingletonNative = GDExtensionObjectPtr Function(GDExtensionStringNamePtr pName);
typedef GlobalGetSingletonDart = Pointer<Void> Function(Pointer<Void> pName);

