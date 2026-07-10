import 'package:flutter/material.dart';

import 'godot_controller.dart';

/// Displays a running Godot instance owned by [controller], rendered offscreen by libgodot and
/// streamed into a Flutter [Texture].
///
/// Automatically resizes to fill whatever space its parent gives it (via [LayoutBuilder]),
/// forwarding that to [controller.reportSize] so the engine actually re-renders at the
/// new resolution. Unline FittedBox, this maps exactly 1:1 to physical pixels using an
/// OverflowBox and ClipRect, preventing visual stretching or scaling artifacts.
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
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        widget.controller.attach();
      }
    });
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

        return SizedBox.expand(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final density = MediaQuery.devicePixelRatioOf(context);

              WidgetsBinding.instance.addPostFrameCallback(
                (_) =>
                    widget.controller.reportSize(constraints.biggest, density),
              );

              // Convert the physical pixel dimensions back to logical pixels
              // to size the texture container correctly.
              final paddedWidth = widget.controller.renderWidth / density;
              final paddedHeight = widget.controller.renderHeight / density;

              return ClipRect(
                child: OverflowBox(
                  alignment: Alignment.topLeft,
                  minWidth: paddedWidth,
                  minHeight: paddedHeight,
                  maxWidth: paddedWidth,
                  maxHeight: paddedHeight,
                  child: SizedBox(
                    width: paddedWidth,
                    height: paddedHeight,
                    child: Texture(textureId: textureId),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
