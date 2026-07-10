// StringName interning cache. Godot's own StringName implementation already
// dedupes by content (two StringNames built from the same text share the
// same internal `_Data*`), so this cache exists purely to avoid
// reconstructing/destructing the 8-byte handle on every lookup for names
// used repeatedly (class names, method names, virtual names).
//
// Cached handles are intentionally never destroyed — they live for the
// process lifetime, same tradeoff engine-side StringName interning already
// makes for static names.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import 'proc_table.dart';

abstract final class StringNameCache {
  static final Map<String, Pointer<Uint8>> _cache = {};

  /// Returns a cached GDExtensionStringNamePtr for [value], constructing and
  /// interning one on first use.
  static Pointer<Void> intern(String value) {
    final cached = _cache[value];
    if (cached != null) return cached.cast();

    final buf = malloc<Uint8>(8);
    final utf8Ptr = value.toNativeUtf8();
    try {
      GodotApi.stringNameNewWithUtf8Chars(buf.cast(), utf8Ptr.cast());
    } finally {
      malloc.free(utf8Ptr);
    }
    _cache[value] = buf;
    return buf.cast();
  }

  /// True if [a] and [b] are StringNames referring to the same interned
  /// string (compares the underlying shared `_Data*`, not string content —
  /// valid specifically because Godot interns StringName storage).
  static bool identical(Pointer<Void> a, Pointer<Void> b) {
    return a.cast<Pointer<Void>>().value.address ==
        b.cast<Pointer<Void>>().value.address;
  }
}
