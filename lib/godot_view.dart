import 'dart:async';

import 'package:flutter/material.dart';

import 'libgodot.dart';

/// Displays a running Godot instance, rendered offscreen by libgodot and
/// streamed into a Flutter [Texture].
///
/// Automatically resizes to fill whatever space its parent gives it (via
/// [LayoutBuilder]), asking the engine to actually re-render at the new
/// resolution (see [Libgodot.resizeInstance]) rather than just visually
/// scaling a fixed-resolution texture. Resize requests are debounced so a
/// continuous window drag doesn't spam the engine with reallocations, and
/// the displayed content is always shown at its own aspect ratio via
/// `BoxFit.contain` — it's letterboxed/pillarboxed to fit, never stretched
/// to fill a container of a different shape, even during the brief window
/// between requesting a resize and the engine's first frame at the new size
/// actually arriving.
class GodotView extends StatefulWidget {
  const GodotView({
    super.key,
    required this.projectPath,
    this.width = 480,
    this.height = 270,
    this.initFunctionAddress,
  });

  /// Absolute filesystem path to a Godot project directory (the folder
  /// containing `project.godot`).
  ///
  /// Ignored on Android; see [Libgodot.createInstance].
  final String projectPath;

  /// Initial render resolution, used to create the instance and as a
  /// fallback when this widget is given unbounded constraints. Once laid
  /// out, [GodotView] resizes itself (and the underlying engine) to match
  /// its actual available space, so these are starting points, not fixed
  /// values.
  final int width;
  final int height;

  /// See [Libgodot.createInstance]'s parameter of the same name.
  final int? initFunctionAddress;

  @override
  State<GodotView> createState() => _GodotViewState();
}

class _GodotViewState extends State<GodotView> {
  // A continuous window drag can fire many layout changes per second; wait
  // for things to settle before asking the engine to reallocate.
  static const _resizeDebounce = Duration(milliseconds: 200);

  // The engine reallocates its offscreen surface lazily, over the next few
  // rendered frames after window_set_size() is called - there's no signal
  // back to Dart for "the new size is now actually visible on screen", so
  // this is a pragmatic heuristic delay before switching the displayed
  // aspect ratio to match the requested size. Too short and a brief stretch
  // can show through; too long and the letterboxing lingers after the
  // resize is actually done.
  static const _resizeSettleDelay = Duration(milliseconds: 100);

  final _libgodot = Libgodot();
  int? _textureId;
  Object? _error;

  int _renderWidth = 0;
  int _renderHeight = 0;
  int? _pendingWidth;
  int? _pendingHeight;
  Timer? _resizeTimer;

  @override
  void initState() {
    super.initState();
    _renderWidth = _alignTo4(widget.width);
    _renderHeight = _alignTo4(widget.height);
    _start();
  }

  Future<void> _start() async {
    try {
      final textureId = await _libgodot.createInstance(
        projectPath: widget.projectPath,
        width: _renderWidth,
        height: _renderHeight,
        initFunctionAddress: widget.initFunctionAddress,
      );
      if (!mounted) {
        await _libgodot.destroyInstance(textureId);
        return;
      }
      setState(() => _textureId = textureId);
    } catch (e) {
      if (!mounted) return;
      setState(() => _error = e);
    }
  }

  void _handleConstraints(BoxConstraints constraints) {
    if (_textureId == null) return;
    if (!constraints.maxWidth.isFinite || !constraints.maxHeight.isFinite) {
      // Can't compute a bounded target size (e.g. inside an unconstrained
      // Row/Column); keep whatever resolution we've already got.
      return;
    }

    // Metal requires an IOSurface's bytes-per-row (width * 4 for RGBA8) to be
    // 16-byte aligned, i.e. width must be a multiple of 4 - an arbitrary
    // layout-derived width crashes with a Metal validation assertion
    // otherwise. Round both dimensions up to a multiple of 4 for safety and
    // to keep width/height alignment consistent across platforms.
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
    final textureId = _textureId;
    if (textureId == null) return;

    final resized = await _libgodot.resizeInstance(textureId, width, height);
    if (!mounted || !resized) return;

    await Future<void>.delayed(_resizeSettleDelay);
    if (!mounted) return;
    // If a newer resize has been requested in the meantime, let that one
    // (already in flight via its own _requestResize call) be the one that
    // eventually updates the displayed size instead.
    if (_pendingWidth != width || _pendingHeight != height) return;

    setState(() {
      _renderWidth = width;
      _renderHeight = height;
    });
  }

  static int _alignTo4(int value) => (value + 3) & ~3;

  @override
  void dispose() {
    _resizeTimer?.cancel();
    final textureId = _textureId;
    if (textureId != null) {
      _libgodot.destroyInstance(textureId);
    }
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_error != null) {
      return Center(child: Text('Failed to start Godot: $_error'));
    }
    final textureId = _textureId;
    if (textureId == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return LayoutBuilder(
      builder: (context, constraints) {
        WidgetsBinding.instance.addPostFrameCallback((_) => _handleConstraints(constraints));
        return FittedBox(
          fit: BoxFit.contain,
          child: SizedBox(
            width: _renderWidth.toDouble(),
            height: _renderHeight.toDouble(),
            child: Texture(textureId: textureId),
          ),
        );
      },
    );
  }
}
