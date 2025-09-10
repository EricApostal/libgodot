import 'dart:async';
import 'dart:ffi';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../core/core_types.dart';
import '../core/gdextension.dart';
import '../core/gdextension_ffi_bindings.dart';
import '../core/type_info.dart';
import '../generated/builtins.dart';

import '../generated/global_constants.dart';
import 'vector2.dart';
import 'vector3.dart';

export 'vector2.dart';
export 'vector3.dart';

// Correct signatures: first param becomes an "uninitialized" destination pointer.
typedef GDExtensionVariantFromType =
    void Function(GDExtensionUninitializedVariantPtr, GDExtensionTypePtr);
typedef GDExtensionTypeFromVariant =
    void Function(GDExtensionUninitializedTypePtr, GDExtensionVariantPtr);
typedef VariantConstructor =
    void Function(GDExtensionUninitializedVariantPtr, GDExtensionTypePtr);

late List<GDExtensionVariantFromType?> _fromTypeConstructor;
late List<GDExtensionTypeFromVariant?> _toTypeConstructor;

typedef BuiltinConstructor = BuiltinType Function(GDExtensionVariantPtr);
Map<int, BuiltinConstructor> _dartBuiltinConstructors = {};

void initVariantBindings(GDExtensionFFI ffIinterface) {
  // Resolve interface functions through cached get_proc_address instead of relying on
  // them being exported as global symbols from the dynamic library.
  final rawFromTypeGetter = godotResolve('get_variant_from_type_constructor');
  if (rawFromTypeGetter == nullptr) {
    throw StateError('Failed to resolve get_variant_from_type_constructor');
  }
  final variantFromTypeCtorGetterPtr = rawFromTypeGetter
      .cast<
        NativeFunction<
          GDExtensionVariantFromTypeConstructorFunc Function(UnsignedInt)
        >
      >();

  // final getVariantFromTypeCtorGetter = gde.callNativeMethodBind(self, methodName, args)

  final variantFromTypeCtorGetter = variantFromTypeCtorGetterPtr
      .asFunction<GDExtensionVariantFromTypeConstructorFunc Function(int)>();

  _fromTypeConstructor = List<GDExtensionVariantFromType?>.generate(
    GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VARIANT_MAX.value,
    (variantType) {
      if (variantType == 0) return null;
      final fnPtr = variantFromTypeCtorGetter(variantType);
      if (fnPtr == nullptr) return null;
      final GDExtensionVariantFromType dartFn = fnPtr
          .asFunction<DartGDExtensionVariantFromTypeConstructorFuncFunction>();
      return dartFn;
    },
  );

  final rawToTypeGetter = godotResolve('get_variant_to_type_constructor');

  final variantToTypeCtorGetterPtr = rawToTypeGetter
      .cast<
        NativeFunction<
          GDExtensionTypeFromVariantConstructorFunc Function(UnsignedInt)
        >
      >();
  final variantToTypeCtorGetter = variantToTypeCtorGetterPtr
      .asFunction<GDExtensionTypeFromVariantConstructorFunc Function(int)>();

  _toTypeConstructor = List<GDExtensionTypeFromVariant?>.generate(
    GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VARIANT_MAX.value,
    (variantType) {
      if (variantType == 0) return null;
      final fnPtr = variantToTypeCtorGetter(variantType);
      if (fnPtr == nullptr) return null;
      final GDExtensionTypeFromVariant dartFn = fnPtr
          .asFunction<DartGDExtensionTypeFromVariantConstructorFuncFunction>();
      return dartFn;
    },
  );

  print('construct start');
  // String and String name need their constructors bound before anything else
  // because everything else relies on them being done.
  GDString.initBindingsConstructorDestructor();
  StringName.initBindingsConstructorDestructor();

  GDString.initBindings();

  print('construct end');

  StringName.initBindings();
  print('did init string bindings');
  _dartBuiltinConstructors[StringName.sTypeInfo.variantType.value] =
      StringName.fromVariantPtr;

  print('generating le vector bindings');
  // Generate this?
  Vector2.initBindings();
  _dartBuiltinConstructors[Vector2.sTypeInfo.variantType.value] =
      Vector2.fromVariantPtr;
  Vector2i.initBindings();
  _dartBuiltinConstructors[Vector2i.sTypeInfo.variantType.value] =
      Vector2i.fromVariantPtr;
  Vector3.initBindings();
  Vector3i.initBindings();
  _dartBuiltinConstructors[Vector3i.sTypeInfo.variantType.value] =
      Vector3i.fromVariantPtr;
  Vector4.initBindings();
  _dartBuiltinConstructors[Vector4.sTypeInfo.variantType.value] =
      Vector4.fromVariantPtr;
  print('some genned');
  Vector4i.initBindings();
  _dartBuiltinConstructors[Vector4i.sTypeInfo.variantType.value] =
      Vector4i.fromVariantPtr;
  Quaternion.initBindings();
  _dartBuiltinConstructors[Quaternion.sTypeInfo.variantType.value] =
      Quaternion.fromVariantPtr;
  Rect2.initBindings();
  _dartBuiltinConstructors[Rect2.sTypeInfo.variantType.value] =
      Rect2.fromVariantPtr;
  Rect2i.initBindings();
  _dartBuiltinConstructors[Rect2i.sTypeInfo.variantType.value] =
      Rect2i.fromVariantPtr;
  Transform2D.initBindings();
  _dartBuiltinConstructors[Transform2D.sTypeInfo.variantType.value] =
      Transform2D.fromVariantPtr;
  Plane.initBindings();
  _dartBuiltinConstructors[Plane.sTypeInfo.variantType.value] =
      Plane.fromVariantPtr;
  AABB.initBindings();
  _dartBuiltinConstructors[AABB.sTypeInfo.variantType.value] =
      AABB.fromVariantPtr;
  Basis.initBindings();
  _dartBuiltinConstructors[Basis.sTypeInfo.variantType.value] =
      Basis.fromVariantPtr;
  Transform3D.initBindings();
  _dartBuiltinConstructors[Transform3D.sTypeInfo.variantType.value] =
      Transform3D.fromVariantPtr;
  Projection.initBindings();
  _dartBuiltinConstructors[Projection.sTypeInfo.variantType.value] =
      Projection.fromVariantPtr;
  Color.initBindings();
  _dartBuiltinConstructors[Color.sTypeInfo.variantType.value] =
      Color.fromVariantPtr;
  NodePath.initBindings();
  _dartBuiltinConstructors[NodePath.sTypeInfo.variantType.value] =
      NodePath.fromVariantPtr;
  RID.initBindings();
  print('1');
  _dartBuiltinConstructors[RID.sTypeInfo.variantType.value] =
      RID.fromVariantPtr;
  Callable.initBindings();
  _dartBuiltinConstructors[Callable.sTypeInfo.variantType.value] =
      Callable.fromVariantPtr;
  Signal.initBindings();
  _dartBuiltinConstructors[Signal.sTypeInfo.variantType.value] =
      Signal.fromVariantPtr;
  Dictionary.initBindings();
  _dartBuiltinConstructors[Dictionary.sTypeInfo.variantType.value] =
      Dictionary.fromVariantPtr;
  Array.initBindings();
  _dartBuiltinConstructors[Array.sTypeInfo.variantType.value] =
      Array.fromVariantPtr;
  PackedByteArray.initBindings();
  _dartBuiltinConstructors[PackedByteArray.sTypeInfo.variantType.value] =
      PackedByteArray.fromVariantPtr;
  PackedInt32Array.initBindings();
  _dartBuiltinConstructors[PackedInt32Array.sTypeInfo.variantType.value] =
      PackedInt32Array.fromVariantPtr;
  PackedInt64Array.initBindings();
  _dartBuiltinConstructors[PackedInt64Array.sTypeInfo.variantType.value] =
      PackedInt64Array.fromVariantPtr;
  PackedFloat32Array.initBindings();
  _dartBuiltinConstructors[PackedFloat32Array.sTypeInfo.variantType.value] =
      PackedFloat32Array.fromVariantPtr;
  PackedFloat64Array.initBindings();
  _dartBuiltinConstructors[PackedFloat64Array.sTypeInfo.variantType.value] =
      PackedFloat64Array.fromVariantPtr;
  PackedStringArray.initBindings();
  _dartBuiltinConstructors[PackedStringArray.sTypeInfo.variantType.value] =
      PackedStringArray.fromVariantPtr;
  PackedVector2Array.initBindings();
  _dartBuiltinConstructors[PackedVector2Array.sTypeInfo.variantType.value] =
      PackedVector2Array.fromVariantPtr;
  PackedVector3Array.initBindings();
  _dartBuiltinConstructors[PackedVector3Array.sTypeInfo.variantType.value] =
      PackedVector3Array.fromVariantPtr;
  PackedColorArray.initBindings();
  _dartBuiltinConstructors[PackedColorArray.sTypeInfo.variantType.value] =
      PackedColorArray.fromVariantPtr;

  print('all genned');
}

@internal
GDExtensionTypeFromVariant? getToTypeConstructor(int type) {
  return _toTypeConstructor[type];
}

class Variant implements Finalizable {
  // static final finalizer = NativeFinalizer(gde.dartBindings.finalizeVariant);

  // TODO: This is supposed to come from the generator, but we
  // may just need to take the max size
  static const int _size = 24;
  static final TypeInfo sTypeInfo = TypeInfo(
    Variant,
    StringName.fromString('Variant'),
    StringName.fromString('Variant'),
    variantType: GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VARIANT_MAX,
    size: _size,
  );

  TypeInfo get typeInfo => sTypeInfo;

  static DartGDExtensionInterfaceMemAllocFunction? _memAllocFn;
  static DartGDExtensionInterfaceVariantNewNilFunction? _variantNewNilFn;
  static DartGDExtensionInterfaceVariantNewCopyFunction? _variantNewCopyFn;
  // Native returns UnsignedInt; we'll convert to enum manually.
  // Stores raw uint32 -> int
  static int Function(GDExtensionConstVariantPtr)? _variantGetTypeFn;

  static void _ensureCoreFns() {
    if (_memAllocFn != null) return;
    final lib = DynamicLibrary.process();
    _memAllocFn = lib
        .lookup<NativeFunction<GDExtensionInterfaceMemAllocFunction>>(
          'mem_alloc',
        )
        .asFunction<DartGDExtensionInterfaceMemAllocFunction>();
    _variantNewNilFn = lib
        .lookup<NativeFunction<GDExtensionInterfaceVariantNewNilFunction>>(
          'variant_new_nil',
        )
        .asFunction<DartGDExtensionInterfaceVariantNewNilFunction>();
    _variantNewCopyFn = lib
        .lookup<NativeFunction<GDExtensionInterfaceVariantNewCopyFunction>>(
          'variant_new_copy',
        )
        .asFunction<DartGDExtensionInterfaceVariantNewCopyFunction>();
    _variantGetTypeFn = lib
        .lookup<NativeFunction<Uint32 Function(GDExtensionConstVariantPtr)>>(
          'variant_get_type',
        )
        .asFunction<int Function(GDExtensionConstVariantPtr)>();
  }

  final Pointer<Uint8> _opaque = (() {
    _ensureCoreFns();
    return _memAllocFn!(_size).cast<Uint8>();
  })();

  Pointer<Uint8> get nativePtr => _opaque;

  Variant([Object? obj]) {
    if (obj == null) {
      _ensureCoreFns();
      _variantNewNilFn!(nativePtr.cast());
    } else if (obj is Variant) {
      throw ArgumentError.value(
        obj,
        'obj',
        'Do not construct Variants with Variants.',
      );
    } else {
      _initFromObject(obj);
    }
    _attachFinalizer();
  }

  Variant.fromVariantPtr(Pointer<void> ptr) {
    _ensureCoreFns();
    _variantNewCopyFn!(nativePtr.cast(), ptr.cast());
    _attachFinalizer();
  }

  VariantType getType() {
    _ensureCoreFns();
    final raw = _variantGetTypeFn!(_opaque.cast());
    return VariantType.fromValue(raw);
  }

  void constructCopy(GDExtensionTypePtr ptr) {
    _ensureCoreFns();
    _variantNewCopyFn!(ptr, nativePtr.cast());
  }

  T? cast<T>() {
    final value = convertFromVariant(this);
    if (value is T) {
      return value;
    }
    // Allow weak conversion from StringName / GDString to Dart Strings
    if (T == String) {
      if (value is StringName) return value.toDartString() as T;
      if (value is GDString) return value.toDartString() as T;
    }
    return null;
  }

  void _attachFinalizer() {
    // finalizer.attach(this, _opaque.cast());
  }

  void _initFromObject(Object? obj) {
    if (obj == null) {
      _ensureCoreFns();
      _variantNewNilFn!(nativePtr.cast());
    } else if (obj is ExtensionType) {
      // Already an Object, but constructor expects a pointer to the object
      Pointer<GDExtensionVariantPtr> ptrToObj = malloc<GDExtensionVariantPtr>();
      ptrToObj.value = obj.nativePtr;
      final c =
          _fromTypeConstructor[GDExtensionVariantType
              .GDEXTENSION_VARIANT_TYPE_OBJECT
              .value];
      c!.call(nativePtr.cast(), ptrToObj.cast());
      malloc.free(ptrToObj);
    } else if (obj is Variant) {
      _ensureCoreFns();
      _variantNewCopyFn!(nativePtr.cast(), obj.nativePtr.cast());
    } else if (obj is Pointer) {
      // Passed in a pointer, assume we know what we're doing and this is actually a
      // pointer to a Godot object.
      // TODO: Try to find a way to remove this to prevent abuse.
      final c =
          _fromTypeConstructor[GDExtensionVariantType
              .GDEXTENSION_VARIANT_TYPE_OBJECT
              .value];
      c!.call(nativePtr.cast(), obj.cast());
    } else if (obj is BuiltinType) {
      // Builtin type
      final typeInfo = obj.typeInfo;
      final c = _fromTypeConstructor[typeInfo.variantType.value];
      c!.call(nativePtr.cast(), obj.nativePtr.cast());
    } else {
      // Convert built in types
      using((arena) {
        switch (obj) {
          case final bool obj:
            final b = arena.allocate<GDExtensionBool>(
              sizeOf<GDExtensionBool>(),
            );
            b.value = obj ? 1 : 0;
            final c =
                _fromTypeConstructor[GDExtensionVariantType
                    .GDEXTENSION_VARIANT_TYPE_BOOL
                    .value];
            c!(nativePtr.cast(), b.cast());
            break;
          case final Enum obj:
            final i = arena.allocate<GDExtensionInt>(sizeOf<GDExtensionInt>());
            i.value = obj.index;
            final c =
                _fromTypeConstructor[GDExtensionVariantType
                    .GDEXTENSION_VARIANT_TYPE_INT
                    .value];
            c!(nativePtr.cast(), i.cast());
            break;
          case final int obj:
            final i = arena.allocate<GDExtensionInt>(sizeOf<GDExtensionInt>());
            i.value = obj;
            final c =
                _fromTypeConstructor[GDExtensionVariantType
                    .GDEXTENSION_VARIANT_TYPE_INT
                    .value];
            c!(nativePtr.cast(), i.cast());
            break;
          case final double obj:
            final d = arena.allocate<Double>(sizeOf<Double>());
            d.value = obj;
            final c =
                _fromTypeConstructor[GDExtensionVariantType
                    .GDEXTENSION_VARIANT_TYPE_FLOAT
                    .value];
            c!(nativePtr.cast(), d.cast());
            break;
          case final String obj:
            final gdString = GDString.fromString(obj);
            final c =
                _fromTypeConstructor[GDExtensionVariantType
                    .GDEXTENSION_VARIANT_TYPE_STRING
                    .value];
            c!(nativePtr.cast(), gdString.nativePtr.cast());
            break;
          case final Future<void> _:
            // Allow FutureOr<void> and Future<void> to be return types, but not
            // others. This simply returns the variant 'nil'. This is
            // specifically for async signal recievers, which return
            // FutureOr<void>
            _ensureCoreFns();
            _variantNewNilFn!(nativePtr.cast());
            break;
          // TODO: All the other variant types (dictionary? List?)
          default:
            throw ArgumentError(
              'Trying to create Variant with unsupported object type ${obj.runtimeType}',
              'obj',
            );
        }
      });
    }
  }
}

// Mostly use from C where we don't need to hold a copy of the Variant and
// can copy it directly from its pointer. Prevents an extra constructor / destructor
// call.
@pragma('vm:entry-point')
Object? convertFromVariantPtr(GDExtensionVariantPtr variantPtr) {
  Object? ret;

  Variant._ensureCoreFns();
  final variantTypeIndex = Variant._variantGetTypeFn!(variantPtr.cast());
  GDExtensionTypeFromVariant? c;
  if (variantTypeIndex > 0 && variantTypeIndex < _toTypeConstructor.length) {
    c = _toTypeConstructor[variantTypeIndex];
  }

  final variantType = GDExtensionVariantType.fromValue(variantTypeIndex);

  if (c == null) {
    // TODO: Output an error message
    return null;
  }

  // Do we have a CoreType that we can use to match?
  final builtinConstructor = _dartBuiltinConstructors[variantTypeIndex];
  if (builtinConstructor != null) {
    var builtin = builtinConstructor(variantPtr);
    return builtin;
  }

  // Else, it's probably a dart native type
  ret = using((arena) {
    switch (variantType) {
      // Built-in types
      case GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_BOOL:
        Pointer<GDExtensionBool> ptr = arena.allocate(
          sizeOf<GDExtensionBool>(),
        );
        c!(ptr.cast(), variantPtr);
        return ptr.value != 0;
      case GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_INT:
        Pointer<GDExtensionInt> ptr = arena.allocate(sizeOf<GDExtensionInt>());
        c!(ptr.cast(), variantPtr);
        return ptr.value;
      case GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_FLOAT:
        Pointer<Double> ptr = arena.allocate(sizeOf<Double>());
        c!(ptr.cast(), variantPtr);
        return ptr.value;
      case GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING_NAME:
        var gdStringName = StringName();
        c!(gdStringName.nativePtr.cast(), variantPtr);
        return gdStringName.toDartString();
      case GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_STRING:
        var gdString = GDString();
        c!(gdString.nativePtr.cast(), variantPtr);
        return gdString.toDartString();

      // Or a hand-implemented object
      case GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_VECTOR3:
        return Vector3.fromVariantPtr(variantPtr);

      // Or a wrapped object
      case GDExtensionVariantType.GDEXTENSION_VARIANT_TYPE_OBJECT:
        Pointer<GDExtensionObjectPtr> ptr = arena.allocate(
          sizeOf<GDExtensionObjectPtr>(),
        );
        c!(ptr.cast(), variantPtr);
        final scriptInstance = gde.dartBindings.getScriptInstance(ptr.value);
        if (scriptInstance != nullptr) {
          return gde.dartBindings.objectFromScriptInstance(scriptInstance);
        }

        //Should not need the binding token anymore
        return gde.dartBindings.gdObjectToDartObject(ptr.value);

      // TODO: all the other variant types
      default:
    }
    return null;
  });

  return ret;
}

// Use in all cases where you already have a Dart Variant.
Object? convertFromVariant(Variant variant) {
  return convertFromVariantPtr(variant.nativePtr.cast());
}
