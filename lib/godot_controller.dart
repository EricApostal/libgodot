import 'dart:async';
import 'dart:ffi' as ffi;
import 'dart:io';

import 'package:ffi/ffi.dart' as pkg_ffi;
import 'package:flutter/widgets.dart';

import 'libgodot_platform_interface.dart';
import 'src/godot_core_bindings.g.dart';

ffi.DynamicLibrary _openGodotCoreLibrary() {
  // native/godot_core/godot_core.cpp is compiled directly into each platform's own plugin
  // library (see macos/libgodot.podspec, linux/CMakeLists.txt), so this opens that same library
  // rather than a separate one -- there's nothing extra to bundle beyond what the plugin already
  // ships.
  if (Platform.isMacOS || Platform.isIOS) {
    return ffi.DynamicLibrary.open('libgodot.framework/libgodot');
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

/// Owns a single embedded Godot instance end to end: booting it, resizing it to match whatever
/// space a [GodotView] reports via [reportConstraints], and tearing it down. Talks to the engine
/// directly via the `godot_core_*` FFI calls in [_bindings] (see native/godot_core/godot_core.h)
/// rather than a `MethodChannel` -- the one exception is texture registration
/// ([LibgodotPlatform.registerTexture]/`unregisterTexture`), which only native platform code can
/// do (it needs a `FlutterTextureRegistrar`/`FlTextureRegistrar`, which isn't reachable from Dart
/// FFI).
///
/// Not `final`: subclass to customize behavior (react to [error], forward input, expose extra
/// native calls) -- the same customization point each platform's own plugin class plays
/// natively.
class GodotController extends ChangeNotifier {
  GodotController({
    required this.projectPath,
    this.initFunctionAddress,
    int initialWidth = 480,
    int initialHeight = 270,
  }) : _renderWidth = _alignTo4(initialWidth),
       _renderHeight = _alignTo4(initialHeight);

  /// Absolute filesystem path to a Godot project directory (the folder
  /// containing `project.godot`).
  final String projectPath;

  /// Native address of a `GDExtensionInitializationFunction` (e.g. a Dart-supplied
  /// `GodotDartEntryPoint.nativeFunctionPointer.address` from `package:godot_dart`), used in
  /// place of the built-in no-op init function so Dart-authored GDExtension classes get
  /// registered with this instance.
  final int? initFunctionAddress;

  // A continuous window drag can fire many layout changes per second; wait
  // for things to settle before asking the engine to reallocate.
  static const _resizeDebounce = Duration(milliseconds: 200);

  // The engine reallocates its offscreen surface lazily, over the next few rendered frames
  // after window_set_size() is called - there's no signal back to Dart for "the new size is now
  // actually visible on screen", so this is a pragmatic heuristic delay before switching the
  // reported render size to match the requested one. Too short and a brief stretch can show
  // through; too long and the letterboxing lingers after the resize is actually done.
  static const _resizeSettleDelay = Duration(milliseconds: 100);

  ffi.Pointer<ffi.Void> _handle = ffi.nullptr;
  int? _textureId;
  Object? _error;
  bool _attached = false;

  int _renderWidth;
  int _renderHeight;
  int? _pendingWidth;
  int? _pendingHeight;
  Timer? _resizeTimer;

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

    final args = <String>[
      'libgodot_example',
      '--path',
      projectPath,
      '--offscreen',
      '--resolution',
      '${_renderWidth}x$_renderHeight',
      if (Platform.isLinux) ...['--rendering-driver', 'vulkan'],
    ];

    final GDExtensionInitializationFunction initFunc = initFunctionAddress != null
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
      _error = StateError('godot_core_create() failed; see stderr for engine log.');
      notifyListeners();
      return;
    }

    if (!_bindings.godot_core_start(handle)) {
      _bindings.godot_core_destroy(handle);
      _error = StateError('Godot instance failed to start; see stderr for engine log.');
      notifyListeners();
      return;
    }

    _handle = handle;
    try {
      final textureId = await LibgodotPlatform.instance.registerTexture(handle.address);
      if (!_attached) {
        // detach() ran while this was in flight; tear down what was just registered.
        await LibgodotPlatform.instance.unregisterTexture(textureId);
        return;
      }
      _textureId = textureId;
      notifyListeners();
    } catch (e) {
      _bindings.godot_core_destroy(handle);
      _handle = ffi.nullptr;
      _error = e;
      notifyListeners();
    }
  }

  /// Reports the space a [GodotView] has available, debouncing and requesting the engine
  /// actually re-render at the new resolution (via `godot_core_resize`) rather than just
  /// visually scaling a fixed-resolution texture.
  void reportConstraints(BoxConstraints constraints) {
    if (_textureId == null) return;
    if (!constraints.maxWidth.isFinite || !constraints.maxHeight.isFinite) {
      // Can't compute a bounded target size (e.g. inside an unconstrained Row/Column); keep
      // whatever resolution is already in use.
      return;
    }

    // Metal requires an IOSurface's bytes-per-row (width * 4 for RGBA8) to be 16-byte aligned,
    // i.e. width must be a multiple of 4 - an arbitrary layout-derived width crashes with a
    // Metal validation assertion otherwise. Round both dimensions up to a multiple of 4 for
    // safety and to keep width/height alignment consistent across platforms.
    final targetWidth = _alignTo4(constraints.maxWidth.round());
    final targetHeight = _alignTo4(constraints.maxHeight.round());
    if (targetWidth <= 0 || targetHeight <= 0) return;
    if (targetWidth == (_pendingWidth ?? _renderWidth) && targetHeight == (_pendingHeight ?? _renderHeight)) {
      return;
    }

    _pendingWidth = targetWidth;
    _pendingHeight = targetHeight;
    _resizeTimer?.cancel();
    _resizeTimer = Timer(_resizeDebounce, () => _requestResize(targetWidth, targetHeight));
  }

  Future<void> _requestResize(int width, int height) async {
    if (_handle == ffi.nullptr) return;
    final resized = _bindings.godot_core_resize(_handle, width, height);
    if (!resized) return;

    await Future<void>.delayed(_resizeSettleDelay);
    if (_handle == ffi.nullptr) return;
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

    _resizeTimer?.cancel();
    _resizeTimer = null;

    final textureId = _textureId;
    _textureId = null;
    _handle = ffi.nullptr;
    if (textureId != null) {
      await LibgodotPlatform.instance.unregisterTexture(textureId);
    }
  }

  @override
  void dispose() {
    unawaited(detach());
    super.dispose();
  }
}
