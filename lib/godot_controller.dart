import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart' as pkg_ffi;
import 'package:flutter/widgets.dart';
import 'package:godot_dart/godot_dart.dart';

import 'libgodot_platform_interface.dart';
import 'src/godot_core_bindings.g.dart';

ffi.DynamicLibrary _openGodotCoreLibrary() {
  if (Platform.isMacOS || Platform.isIOS) {
    for (final name in [
      'libgodot_core.dylib',
      'libgodot.framework/libgodot_core.dylib',
      'libgodot.framework/libgodot',
    ]) {
      try {
        return ffi.DynamicLibrary.open(name);
      } catch (_) {}
    }
    return ffi.DynamicLibrary.open('libgodot_core.dylib');
  }
  if (Platform.isLinux) {
    return ffi.DynamicLibrary.open('liblibgodot_plugin.so');
  }
  throw UnsupportedError(
    'GodotController does not support ${Platform.operatingSystem} yet -- '
    'only macos/ and linux/ currently compile native/godot_core into their plugin build.',
  );
}

final GodotCoreBindings _bindings = GodotCoreBindings(_openGodotCoreLibrary());

class GodotController extends ChangeNotifier {
  GodotController({
    this.projectPath,
    this.initFunctionAddress,
    this.onReady,
    int initialWidth = 480,
    int initialHeight = 270,
  }) : _renderWidth = _alignTo4(initialWidth),
       _renderHeight = _alignTo4(initialHeight);

  final String? projectPath;

  /// Optional callback invoked when the Godot instance starts and registers its texture.
  final void Function(GodotController controller)? onReady;

  /// Native address of a `GDExtensionInitializationFunction` (e.g. a Dart-supplied
  /// `GodotDartEntryPoint.nativeFunctionPointer.address` from `package:godot_dart`), used in
  /// place of the built-in no-op init function so Dart-authored GDExtension classes get
  /// registered with this instance.
  final int? initFunctionAddress;

  ffi.Pointer<ffi.Void> _handle = ffi.nullptr;
  int? _textureId;
  Object? _error;
  bool _attached = false;

  int _renderWidth;
  int _renderHeight;
  int? _pendingWidth;
  int? _pendingHeight;

  /// The Flutter texture id to render, once available.
  int? get textureId => _textureId;

  /// Current render resolution; matches the last size [reportConstraints] settled on.
  int get renderWidth => _renderWidth;
  int get renderHeight => _renderHeight;

  /// Set if starting the instance failed.
  Object? get error => _error;

  /// Boots the Godot instance and registers its texture. Called by [GodotView]; safe to call
  /// more than once (a no-op after the first).
  Future<void> attach() async {
    if (_attached) return;
    _attached = true;

    String effectivePath = projectPath ?? '';
    if (effectivePath.isEmpty ||
        !File('$effectivePath/project.godot').existsSync()) {
      final tempDir = Directory.systemTemp.createTempSync('libgodot_scratch_');
      File('${tempDir.path}/empty.tscn').writeAsStringSync(
        '[gd_scene format=3]\n\n[node name="Root" type="Node3D"]\n',
      );

      File('${tempDir.path}/project.godot').writeAsStringSync(
        'config_version=5\n\n'
        '[application]\n'
        'config/name="libgodot_scratch"\n'
        'run/main_scene="res://empty.tscn"\n',
      );
      effectivePath = tempDir.path;
    }


    if (Platform.isAndroid) {
      // Android has no godot_core_create()/_start() equivalent -- its bootstrap goes through
      // Kotlin's Godot/GodotLib JNI layer instead (see LibgodotPlugin.kt's class doc), so the
      // whole boot sequence happens natively in one channel call rather than via FFI. Resize
      // afterward still goes through FFI (see _requestResize), same as every other platform.
      try {
        final (:textureId, :handleAddress) = await LibgodotPlatform.instance
            .createAndroidInstance(
              projectPath: effectivePath,
              width: _renderWidth,
              height: _renderHeight,
              initFunctionAddress: initFunctionAddress,
            );
        if (!_attached) {
          // detach() ran while this was in flight; tear down what was just created.
          await LibgodotPlatform.instance.destroyAndroidInstance(textureId);
          return;
        }
        _handle = ffi.Pointer.fromAddress(handleAddress);
        _textureId = textureId;
        notifyListeners();
      } catch (e) {
        _error = e;
        notifyListeners();
      }
      return;
    }

    final args = <String>[
      'libgodot_example',
      '--path',
      effectivePath,
      '--offscreen',
      '--resolution',
      '${_renderWidth}x$_renderHeight',
      if (Platform.isLinux) ...['--rendering-driver', 'vulkan'],
    ];


    final GDExtensionInitializationFunction initFunc =
        initFunctionAddress != null
        ? ffi.Pointer.fromAddress(initFunctionAddress!)
        : ffi.nullptr;

    final argv = pkg_ffi.calloc<ffi.Pointer<ffi.Char>>(args.length);
    for (var i = 0; i < args.length; i++) {
      argv[i] = args[i].toNativeUtf8().cast<ffi.Char>();
    }
    final ffi.Pointer<ffi.Void> handle;
    try {
      handle = _bindings.godot_core_create(args.length, argv, initFunc);
    } finally {
      for (var i = 0; i < args.length; i++) {
        pkg_ffi.calloc.free(argv[i]);
      }
      pkg_ffi.calloc.free(argv);
    }

    if (handle == ffi.nullptr) {
      _error = StateError(
        'godot_core_create() failed; see stderr for engine log.',
      );
      notifyListeners();
      return;
    }

    if (!_bindings.godot_core_start(handle)) {
      _bindings.godot_core_destroy(handle);
      _error = StateError(
        'Godot instance failed to start; see stderr for engine log.',
      );
      notifyListeners();
      return;
    }

    _handle = handle;
    try {
      final textureId = await LibgodotPlatform.instance.registerTexture(
        handle.address,
      );
      if (!_attached) {
        // detach() ran while this was in flight; tear down what was just registered.
        await LibgodotPlatform.instance.unregisterTexture(textureId);
        return;
      }
      _textureId = textureId;
      notifyListeners();
      onReady?.call(this);
    } catch (e) {
      _bindings.godot_core_destroy(handle);
      _handle = ffi.nullptr;
      _error = e;
      notifyListeners();
    }
  }

  /// Feeds a Godot [InputEvent] directly to the running engine instance via [Input.parseInputEvent].
  void sendInput(InputEvent event) {
    if (!_attached || (_handle == ffi.nullptr && !Platform.isAndroid)) return;
    try {
      Input.singleton.parseInputEvent(event);
    } catch (_) {}
  }

  /// Reports the space a [GodotView] has available, computing the actual physical resolution,
  /// debouncing, and requesting the engine re-render at the new size.
  void reportSize(Size size, double density) {
    if (_textureId == null) return;
    if (size.width <= 0 ||
        size.height <= 0 ||
        !size.width.isFinite ||
        !size.height.isFinite) {
      return;
    }

    // Convert logical Flutter size into physical pixels needed by the engine
    final physicalWidth = size.width * density;
    final physicalHeight = size.height * density;

    // Metal requires an IOSurface's bytes-per-row (width * 4 for RGBA8) to be 16-byte aligned,
    // i.e. width must be a multiple of 4 - an arbitrary layout-derived width crashes with a
    // Metal validation assertion otherwise. Round both dimensions up to a multiple of 4 for
    // safety and to keep width/height alignment consistent across platforms.
    final targetWidth = _alignTo4(physicalWidth.round());
    final targetHeight = _alignTo4(physicalHeight.round());

    if (targetWidth <= 0 || targetHeight <= 0) return;
    if (targetWidth == (_pendingWidth ?? _renderWidth) &&
        targetHeight == (_pendingHeight ?? _renderHeight)) {
      return;
    }

    _pendingWidth = targetWidth;
    _pendingHeight = targetHeight;
    _requestResize(targetWidth, targetHeight);
  }

  Future<void> _requestResize(int width, int height) async {
    if (_textureId == null) return;

    final bool resized;
    if (Platform.isAndroid) {
      resized = await LibgodotPlatform.instance.resizeAndroidInstance(
        _textureId!,
        width,
        height,
      );
    } else {
      if (_handle == ffi.nullptr) return;
      resized = _bindings.godot_core_resize(_handle, width, height);
    }
    if (!resized) return;

    if (_textureId == null) return;
    // If a newer resize has been requested in the meantime, let that one (already in flight via
    // its own _requestResize call) be the one that eventually updates the reported size instead.
    if (_pendingWidth != width || _pendingHeight != height) return;

    _renderWidth = width;
    _renderHeight = height;
    notifyListeners();
  }

  static int _alignTo4(int value) => (value + 3) & ~3;

  /// Stops and tears down the Godot instance. Called by [GodotView]; safe to call more than
  /// once.
  Future<void> detach() async {
    if (!_attached) return;
    _attached = false;

    final textureId = _textureId;
    _textureId = null;
    _handle = ffi.nullptr;
    if (textureId == null) return;
    if (Platform.isAndroid) {
      await LibgodotPlatform.instance.destroyAndroidInstance(textureId);
    } else {
      await LibgodotPlatform.instance.unregisterTexture(textureId);
    }
  }

  @override
  void dispose() {
    unawaited(detach());
    super.dispose();
  }
}
