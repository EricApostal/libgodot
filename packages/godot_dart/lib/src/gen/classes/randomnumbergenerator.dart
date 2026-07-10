// GENERATED CODE - do not edit by hand.
// Produced by tool/godot_api_gen/bin/generate.dart from extension_api.json.
library;

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../runtime/builtin_marshal.dart';
import '../../runtime/godot_object.dart';
import '../builtins.g.dart';
import '../classes.g.dart';

class RandomNumberGenerator extends RefCounted {
  RandomNumberGenerator(super.nativePtr);

  static final Pointer<Void> _mb_set_seed =
      resolveMethodBind('RandomNumberGenerator', 'set_seed', 1286410249);

  void setSeed(int seed) {
    final arg0 = malloc<Int64>()..value = seed;
    try {
      ptrcallVoid(_mb_set_seed, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_seed =
      resolveMethodBind('RandomNumberGenerator', 'get_seed', 2455072627);

  int getSeed() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_seed, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_set_state =
      resolveMethodBind('RandomNumberGenerator', 'set_state', 1286410249);

  void setState(int state) {
    final arg0 = malloc<Int64>()..value = state;
    try {
      ptrcallVoid(_mb_set_state, nativePtr, [arg0.cast<Void>()]);
    } finally {
      malloc.free(arg0);
    }
  }

  static final Pointer<Void> _mb_get_state =
      resolveMethodBind('RandomNumberGenerator', 'get_state', 3905245786);

  int getState() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_get_state, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_randi =
      resolveMethodBind('RandomNumberGenerator', 'randi', 2455072627);

  int randi() {
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_randi, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_randf =
      resolveMethodBind('RandomNumberGenerator', 'randf', 191475506);

  double randf() {
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_randf, nativePtr, [], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
    }
  }

  static final Pointer<Void> _mb_randfn =
      resolveMethodBind('RandomNumberGenerator', 'randfn', 837325100);

  double randfn(double mean, double deviation) {
    final arg0 = malloc<Double>()..value = mean;
    final arg1 = malloc<Double>()..value = deviation;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_randfn, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_randf_range =
      resolveMethodBind('RandomNumberGenerator', 'randf_range', 4269894367);

  double randfRange(double from, double to) {
    final arg0 = malloc<Double>()..value = from;
    final arg1 = malloc<Double>()..value = to;
    try {
      final ret = malloc<Double>();
      try {
        ptrcallWithReturn(_mb_randf_range, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  static final Pointer<Void> _mb_randi_range =
      resolveMethodBind('RandomNumberGenerator', 'randi_range', 50157827);

  int randiRange(int from, int to) {
    final arg0 = malloc<Int64>()..value = from;
    final arg1 = malloc<Int64>()..value = to;
    try {
      final ret = malloc<Int64>();
      try {
        ptrcallWithReturn(_mb_randi_range, nativePtr, [arg0.cast<Void>(), arg1.cast<Void>()], ret.cast());
        return ret.value;
      } finally {
        malloc.free(ret);
      }
    } finally {
      malloc.free(arg0);
      malloc.free(arg1);
    }
  }

  // Skipped rand_weighted(): an argument type is unsupported.
  static final Pointer<Void> _mb_randomize =
      resolveMethodBind('RandomNumberGenerator', 'randomize', 3218959716);

  void randomize() {
    try {
      ptrcallVoid(_mb_randomize, nativePtr, []);
    } finally {
    }
  }

}
