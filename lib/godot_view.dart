import 'package:flutter/material.dart';

import 'godot_controller.dart';

/// Displays a running Godot instance owned by [controller], rendered offscreen by libgodot and
/// streamed into a Flutter [Texture].
///
/// Automatically resizes to fill whatever space its parent gives it (via [LayoutBuilder]),
/// forwarding that to [controller.reportConstraints] so the engine actually re-renders at the
/// new resolution rather than just visually scaling a fixed-resolution texture. The displayed
/// content is always shown at its own aspect ratio via `BoxFit.contain` -- it's letterboxed/
/// pillarboxed to fit, never stretched to fill a container of a different shape, even during the
/// brief window between requesting a resize and the engine's first frame at the new size
/// actually arriving. All of that sizing/debounce state lives on [controller], not this widget --
/// see [GodotController.reportConstraints].
class GodotView extends StatefulWidget {
  const GodotView({super.key, required this.controller});

  final GodotController controller;

  @override
  State<GodotView> createState() => _GodotViewState();
}

class _GodotViewState extends State<GodotView> {
  @override
  void initState() {
    super.initState();
    widget.controller.attach();
  }

  @override
  void dispose() {
    widget.controller.detach();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, _) {
        final error = widget.controller.error;
        if (error != null) {
          return Center(child: Text('Failed to start Godot: $error'));
        }
        final textureId = widget.controller.textureId;
        if (textureId == null) {
          return const Center(child: CircularProgressIndicator());
        }

        return LayoutBuilder(
          builder: (context, constraints) {
            final density = MediaQuery.devicePixelRatioOf(context);
            WidgetsBinding.instance.addPostFrameCallback(
              (_) => widget.controller.reportConstraints(constraints, density),
            );
            return FittedBox(
              fit: BoxFit.contain,
              child: SizedBox(
                width: widget.controller.renderWidth.toDouble(),
                height: widget.controller.renderHeight.toDouble(),
                child: Texture(textureId: textureId),
              ),
            );
          },
        );
      },
    );
  }
}
