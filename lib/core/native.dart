import 'dart:ffi';
import 'dart:ffi' as ffi;

import 'package:flutter/services.dart';
import 'package:godot_dart/godot_dart.dart';

// FFI type definitions for embedded initialization
typedef GodotDartEmbeddedInitNative =
    ffi.Bool Function(
      GDExtensionInterfaceGetProcAddress,
      GDExtensionClassLibraryPtr,
    );
typedef GodotDartEmbeddedInitDart =
    bool Function(
      GDExtensionInterfaceGetProcAddress,
      GDExtensionClassLibraryPtr,
    );

typedef GodotDartEmbeddedShutdownNative = ffi.Void Function();
typedef GodotDartEmbeddedShutdownDart = void Function();

typedef GodotDartInitializeRuntimeNative = ffi.Bool Function();
typedef GodotDartInitializeRuntimeDart = bool Function();

typedef GodotDartShutdownRuntimeNative = ffi.Void Function();
typedef GodotDartShutdownRuntimeDart = void Function();

typedef InitDartApiDlNative = IntPtr Function(Pointer<Void>);
typedef InitDartApiDl = int Function(Pointer<Void>);

class NativeBridge {
  static final methodChannel = MethodChannel("libgodot-native-bridge");

  static late DynamicLibrary _godotDartLib;
  static late GodotDartEmbeddedInitDart _embeddedInit;
  static late GodotDartEmbeddedShutdownDart _embeddedShutdown;
  static late GodotDartInitializeRuntimeDart _initializeRuntime;
  static late GodotDartShutdownRuntimeDart _shutdownRuntime;

  static GDExtensionFFI loadLibGodot() {
    _godotDartLib = DynamicLibrary.open("libgodot_dart.dylib");
    final dylib = DynamicLibrary.open("libgodot.dylib");
    final init = _godotDartLib
        .lookup<ffi.NativeFunction<ffi.IntPtr Function(ffi.Pointer<ffi.Void>)>>(
          'init_dart_api_dl',
        );
    final initFunc = init.asFunction<int Function(ffi.Pointer<ffi.Void>)>();

    final success = initFunc(ffi.NativeApi.initializeApiDLData);
    print("got val = $success");

    // Load the embedded initialization functions
    _embeddedInit = _godotDartLib
        .lookup<ffi.NativeFunction<GodotDartEmbeddedInitNative>>(
          'godot_dart_embedded_init',
        )
        .asFunction<GodotDartEmbeddedInitDart>();

    _embeddedShutdown = _godotDartLib
        .lookup<ffi.NativeFunction<GodotDartEmbeddedShutdownNative>>(
          'godot_dart_embedded_shutdown',
        )
        .asFunction<GodotDartEmbeddedShutdownDart>();

    _initializeRuntime = _godotDartLib
        .lookup<ffi.NativeFunction<GodotDartInitializeRuntimeNative>>(
          'godot_dart_initialize_runtime',
        )
        .asFunction<GodotDartInitializeRuntimeDart>();

    _shutdownRuntime = _godotDartLib
        .lookup<ffi.NativeFunction<GodotDartShutdownRuntimeNative>>(
          'godot_dart_shutdown_runtime',
        )
        .asFunction<GodotDartShutdownRuntimeDart>();

    return GDExtensionFFI(dylib);
  }

  /// Initialize the Godot Dart extension in embedded mode
  static bool initializeEmbedded(
    GDExtensionInterfaceGetProcAddress getProcAddress,
    GDExtensionClassLibraryPtr library,
  ) {
    return _embeddedInit(getProcAddress, library);
  }

  /// Shutdown the Godot Dart extension
  static void shutdownEmbedded() {
    _embeddedShutdown();
  }

  /// Initialize the Dart runtime bindings
  static bool initializeRuntime() {
    return _initializeRuntime();
  }

  /// Shutdown the Dart runtime bindings
  static void shutdownRuntime() {
    _shutdownRuntime();
  }
}
