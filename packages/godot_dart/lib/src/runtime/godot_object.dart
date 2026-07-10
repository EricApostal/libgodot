// Base wrapper for any GDExtensionObjectPtr, engine-owned or Dart-authored.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'proc_table.dart';
import 'string_name_cache.dart';

/// Wraps a native `GDExtensionObjectPtr`. Generated engine-class wrappers
/// (Node, Node2D, ...) and Dart-authored custom classes both build on this.
class GodotObject {
  GodotObject(this.nativePtr);

  final Pointer<Void> nativePtr;
}

/// Resolves a method bind once and caches it (mirrors the pattern generated
/// engine-class wrappers use: a `static final` per method, initialized
/// lazily on first access rather than eagerly for the whole class table).
Pointer<Void> resolveMethodBind(String className, String methodName, int hash) {
  return GodotApi.classdbGetMethodBind(
    StringNameCache.intern(className),
    StringNameCache.intern(methodName),
    hash,
  );
}

/// Constructs a brand-new instance of a stock (non-Dart-authored) engine
/// class by name, e.g. `resolveClassConstructor('BoxMesh')` — used by each
/// generated class's `.create()` factory for classes flagged
/// `is_instantiable` in extension_api.json.
Pointer<Void> resolveClassConstructor(String className) {
  return GodotApi.classdbConstructObject3(StringNameCache.intern(className));
}

/// Resolves a global engine singleton object pointer by class name (e.g.
/// `'Input'`, `'Engine'`). Used by generated singleton `.singleton` accessors.
Pointer<Void> resolveSingleton(String name) {
  return GodotApi.globalGetSingleton(StringNameCache.intern(name));
}


/// Calls a resolved method bind via ptrcall with up to a handful of
/// pre-marshaled raw argument pointers, ignoring any return value.
void ptrcallVoid(Pointer<Void> methodBind, Pointer<Void> instance, List<Pointer<Void>> args) {
  final argv = malloc<Pointer<Void>>(args.length == 0 ? 1 : args.length);
  try {
    for (var i = 0; i < args.length; i++) {
      argv[i] = args[i];
    }
    GodotApi.objectMethodBindPtrcall(methodBind, instance, argv.cast(), nullptr);
  } finally {
    malloc.free(argv);
  }
}

/// Calls a resolved method bind via ptrcall, writing the raw return value
/// into [rRet].
void ptrcallWithReturn(
  Pointer<Void> methodBind,
  Pointer<Void> instance,
  List<Pointer<Void>> args,
  Pointer<Void> rRet,
) {
  final argv = malloc<Pointer<Void>>(args.length == 0 ? 1 : args.length);
  try {
    for (var i = 0; i < args.length; i++) {
      argv[i] = args[i];
    }
    GodotApi.objectMethodBindPtrcall(methodBind, instance, argv.cast(), rRet);
  } finally {
    malloc.free(argv);
  }
}
