import 'dart:ffi' as ffi;
import 'package:ffi/ffi.dart' as pkg_ffi;

import 'generated_bindings.dart';
import 'utils.dart';

/// Lightweight wrapper to call a few DisplayServerEmbedded methods via GDExtension.
/// Not a full binding; expands as needed.
class DisplayServerEmbeddedFFI {
  DisplayServerEmbeddedFFI._(this._instance);
  final GDExtensionObjectPtr _instance;

  static DisplayServerEmbeddedFFI? get() {
  final inst = _fetchSingletonViaStatic();
  if (inst == ffi.nullptr) return null;
  return DisplayServerEmbeddedFFI._(inst);
  }

  bool setContentScale(double scale) {
    final mbind = _getMethodBind('DisplayServerEmbedded', 'set_content_scale');
    if (mbind == ffi.nullptr) return false;
    final objMethodPtr =
        resolveInterfaceFunction<
          GDExtensionInterfaceObjectMethodBindPtrcallFunction
        >('object_method_bind_ptrcall');
    if (objMethodPtr == null) return false;
    final call = objMethodPtr
        .asFunction<DartGDExtensionInterfaceObjectMethodBindPtrcallFunction>();

    // Prepare argument array (one double argument). real_t is double in 64-bit builds.
    final argValue = pkg_ffi.calloc<ffi.Double>();
    argValue.value = scale;
    final args = pkg_ffi.calloc<ffi.Pointer<ffi.Void>>(1);
    args[0] = argValue.cast();
    try {
      call(mbind, _instance, args.cast(), ffi.nullptr);
      return true;
    } finally {
      pkg_ffi.calloc.free(args);
      pkg_ffi.calloc.free(argValue);
    }
  }
}

// Internal helpers ----------------------------------------------------------

ffi.Pointer<ffi.Void> _makeStringName(String value) {
  final newStrFnPtr =
      resolveInterfaceFunction<
        GDExtensionInterfaceStringNameNewWithUtf8CharsFunction
      >('string_name_new_with_utf8_chars');
  if (newStrFnPtr == null) return ffi.nullptr;
  final newStrFn = newStrFnPtr
      .asFunction<DartGDExtensionInterfaceStringNameNewWithUtf8CharsFunction>();
  final storage = pkg_ffi.calloc<ffi.Uint8>(32).cast<ffi.Void>();
  final cstr = value.toNativeUtf8();
  newStrFn(storage, cstr.cast());
  pkg_ffi.malloc.free(cstr);
  return storage;
}

GDExtensionMethodBindPtr _getMethodBind(String className, String methodName) {
  // Simple in-memory cache so the engine only logs potential hash mismatch once.
  _methodBindCache ??= <String, GDExtensionMethodBindPtr>{};
  final key = '$className::$methodName';
  final cached = _methodBindCache![key];
  if (cached != null) return cached;

  final getMPtr = resolveInterfaceFunction<
      GDExtensionInterfaceClassdbGetMethodBindFunction>(
    'classdb_get_method_bind',
  );
  if (getMPtr == null) return ffi.nullptr;
  final getM = getMPtr
      .asFunction<DartGDExtensionInterfaceClassdbGetMethodBindFunction>();
  final cls = _makeStringName(className);
  final method = _makeStringName(methodName);
  // If we know the expected signature hash (from extension_api.json) use it; otherwise 0.
  final knownHash = _methodSignatureHashes[key] ?? 0;
  final mb = getM(cls.cast(), method.cast(), knownHash);
  _methodBindCache![key] = mb;
  return mb;
}

/// Calls the static DisplayServerEmbedded.get_singleton() method via method bind
/// and returns the underlying instance pointer (or nullptr on failure).
GDExtensionObjectPtr _fetchSingletonViaStatic() {
  final mbind = _getMethodBind('DisplayServerEmbedded', 'get_singleton');
  if (mbind == ffi.nullptr) return ffi.nullptr;
  final objMethodPtr = resolveInterfaceFunction<
      GDExtensionInterfaceObjectMethodBindPtrcallFunction>(
    'object_method_bind_ptrcall',
  );
  if (objMethodPtr == null) return ffi.nullptr;
  final call = objMethodPtr
      .asFunction<DartGDExtensionInterfaceObjectMethodBindPtrcallFunction>();
  // Allocate return storage (void*).
  final retStorage = pkg_ffi.calloc<ffi.Pointer<ffi.Void>>();
  try {
    // Static method: instance pointer is nullptr, zero args => pass nullptr args.
    call(mbind, ffi.nullptr, ffi.nullptr, retStorage.cast());
    return retStorage.value.cast();
  } finally {
    pkg_ffi.calloc.free(retStorage);
  }
}

Map<String, GDExtensionMethodBindPtr>? _methodBindCache;

// Fill in concrete hashes from your libgodot build's extension_api.json to avoid
// engine errors about changed methods. Example path: bin/extension_api.json
// Search for class: "DisplayServerEmbedded", method: "get_singleton" and copy its "hash".
// NOTE: Placeholder value 0 keeps fallback behavior (may log an error each run).
const Map<String, int> _methodSignatureHashes = {
  // 'DisplayServerEmbedded::get_singleton': 1234567890, // TODO: replace with real hash
  // 'DisplayServerEmbedded::set_content_scale': <hash>,
};
