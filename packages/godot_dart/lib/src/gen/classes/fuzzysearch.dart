// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class FuzzySearch extends RefCounted {
  FuzzySearch(super.nativePtr);

  /// Constructs a brand-new engine-owned FuzzySearch instance
  /// (via classdb_construct_object3), not an existing one.
  factory FuzzySearch.create() {
    return FuzzySearch(resolveClassConstructor('FuzzySearch'));
  }

  static final Pointer<Void> _mb_set_start_offset =
      resolveMethodBind('FuzzySearch', 'set_start_offset', 1286410249);

  void setStartOffset(int startOffset) {
    final arg0 = malloc<Int64>()..value = startOffset;
    try {
      ptrcallVoid(_mb_set_start_offset, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_start_offset =
      resolveMethodBind('FuzzySearch', 'get_start_offset', 3905245786);

  int getStartOffset() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_start_offset, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_results =
      resolveMethodBind('FuzzySearch', 'set_max_results', 1286410249);

  void setMaxResults(int maxResults) {
    final arg0 = malloc<Int64>()..value = maxResults;
    try {
      ptrcallVoid(_mb_set_max_results, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_results =
      resolveMethodBind('FuzzySearch', 'get_max_results', 3905245786);

  int getMaxResults() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_results, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_max_misses =
      resolveMethodBind('FuzzySearch', 'set_max_misses', 1286410249);

  void setMaxMisses(int maxMisses) {
    final arg0 = malloc<Int64>()..value = maxMisses;
    try {
      ptrcallVoid(_mb_set_max_misses, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_max_misses =
      resolveMethodBind('FuzzySearch', 'get_max_misses', 3905245786);

  int getMaxMisses() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_max_misses, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_use_exact_tokens =
      resolveMethodBind('FuzzySearch', 'set_use_exact_tokens', 2586408642);

  void setUseExactTokens(bool useExactTokens) {
    final arg0 = malloc<Uint8>()..value = useExactTokens ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_use_exact_tokens, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_use_exact_tokens =
      resolveMethodBind('FuzzySearch', 'get_use_exact_tokens', 36873697);

  bool getUseExactTokens() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_use_exact_tokens, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_case_sensitive =
      resolveMethodBind('FuzzySearch', 'set_case_sensitive', 2586408642);

  void setCaseSensitive(bool caseSensitive) {
    final arg0 = malloc<Uint8>()..value = caseSensitive ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_case_sensitive, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_case_sensitive =
      resolveMethodBind('FuzzySearch', 'get_case_sensitive', 36873697);

  bool getCaseSensitive() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_case_sensitive, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_low_scores =
      resolveMethodBind('FuzzySearch', 'set_filter_low_scores', 2586408642);

  void setFilterLowScores(bool filterLowScores) {
    final arg0 = malloc<Uint8>()..value = filterLowScores ? 1 : 0;
    try {
      ptrcallVoid(_mb_set_filter_low_scores, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_low_scores =
      resolveMethodBind('FuzzySearch', 'get_filter_low_scores', 36873697);

  bool getFilterLowScores() {
    try {
      final ret = malloc<Uint8>();
      try {
        ptrcallWithReturn(_mb_get_filter_low_scores, nativePtr, [], ret.cast());
        return ret.value != 0;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_factor =
      resolveMethodBind('FuzzySearch', 'set_filter_factor', 373806689);

  void setFilterFactor(double filterFactor) {
    final arg0 = malloc<Double>()..value = filterFactor;
    try {
      ptrcallVoid(_mb_set_filter_factor, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_factor =
      resolveMethodBind('FuzzySearch', 'get_filter_factor', 1740695150);

  double getFilterFactor() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_filter_factor, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_filter_cutoff =
      resolveMethodBind('FuzzySearch', 'set_filter_cutoff', 373806689);

  void setFilterCutoff(double filterCutoff) {
    final arg0 = malloc<Double>()..value = filterCutoff;
    try {
      ptrcallVoid(_mb_set_filter_cutoff, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_filter_cutoff =
      resolveMethodBind('FuzzySearch', 'get_filter_cutoff', 1740695150);

  double getFilterCutoff() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_get_filter_cutoff, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_search =
      resolveMethodBind('FuzzySearch', 'search', 1830672150);

  FuzzySearchMatch? search(String query, String target) {
    final arg0 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg0.cast(), query);
    final arg1 = malloc<Uint8>(managedHandleSize);
    BuiltinMarshal.writeGDString(arg1.cast(), target);
    try {
      final ret = malloc<Pointer<Void>>();
      try {
        ptrcallWithReturn(_mb_search, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        final resultPtr = ret.value;
        return resultPtr.address == 0 ? null : FuzzySearchMatch(resultPtr);
      } finally {
        malloc.free(ret);
      }
    } finally {
      BuiltinMarshal.destroyGDString(arg0.cast());
      malloc.free(arg0);
      BuiltinMarshal.destroyGDString(arg1.cast());
      malloc.free(arg1);
    }
  }

  // Skipped search_all(): unsupported return type "typedarray::FuzzySearchMatch".
}
