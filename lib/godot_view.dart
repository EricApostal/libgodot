import 'package:flutter/material.dart';

import 'libgodot.dart';

/// Displays a running Godot instance, rendered offscreen by libgodot and
/// streamed into a Flutter [Texture].
class GodotView extends StatefulWidget {
  const GodotView({
    super.key,
    required this.projectPath,
    this.width = 480,
    this.height = 270,
  });

  /// Absolute filesystem path to a Godot project directory (the folder
  /// containing `project.godot`).
  final String projectPath;

  final int width;
  final int height;

  @override
  State<GodotView> createState() => _GodotViewState();
}

class _GodotViewState extends State<GodotView> {
  final _libgodot = Libgodot();
  int? _textureId;
  Object? _error;

  @override
  void initState() {
    super.initState();
    _start();
  }

  Future<void> _start() async {
    try {
      final textureId = await _libgodot.createInstance(
        projectPath: widget.projectPath,
        width: widget.width,
        height: widget.height,
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

  @override
  void dispose() {
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
    return AspectRatio(
      aspectRatio: widget.width / widget.height,
      child: Texture(textureId: textureId),
    );
  }
}
