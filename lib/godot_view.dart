
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:godot_dart/godot_dart.dart' hide Texture;

import 'godot_controller.dart';

/// Displays a running Godot instance owned by [controller], rendered offscreen by libgodot and
/// streamed into a Flutter [Texture].
///
/// Automatically resizes to fill whatever space its parent gives it (via [LayoutBuilder]),
/// forwarding that to [controller.reportSize] so the engine actually re-renders at the
/// new resolution. Unline FittedBox, this maps exactly 1:1 to physical pixels using an
/// OverflowBox and ClipRect, preventing visual stretching or scaling artifacts.
class GodotView extends StatefulWidget {
  const GodotView({super.key, required this.controller, this.enableInput = true});

  final GodotController controller;
  final bool enableInput;

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

  void _sendPointerEvent(PointerEvent event, double density) {
    if (!widget.enableInput) return;
    final x = event.localPosition.dx * density;
    final y = event.localPosition.dy * density;
    final pos = Vector2(x, y);

    if (event.kind == PointerDeviceKind.touch) {
      if (event is PointerDownEvent ||
          event is PointerUpEvent ||
          event is PointerCancelEvent) {
        final touch = InputEventScreenTouch.create();
        touch.setIndex(event.pointer);
        touch.setPosition(pos);
        touch.setPressed(event is PointerDownEvent);
        widget.controller.sendInput(touch);
      } else if (event is PointerMoveEvent) {
        final drag = InputEventScreenDrag.create();
        drag.setIndex(event.pointer);
        drag.setPosition(pos);
        drag.setRelative(
          Vector2(event.delta.dx * density, event.delta.dy * density),
        );
        widget.controller.sendInput(drag);
      }
    } else {
      if (event is PointerDownEvent ||
          event is PointerUpEvent ||
          event is PointerCancelEvent) {
        final btn = InputEventMouseButton.create();
        int buttonIndex = 1;
        if (event.buttons & kSecondaryMouseButton != 0) {
          buttonIndex = 2;
        } else if (event.buttons & kMiddleMouseButton != 0) {
          buttonIndex = 3;
        }
        btn.setButtonIndex(buttonIndex);
        btn.setPosition(pos);
        btn.setGlobalPosition(pos);
        btn.setPressed(event is PointerDownEvent);
        widget.controller.sendInput(btn);
      } else if (event is PointerMoveEvent || event is PointerHoverEvent) {
        final motion = InputEventMouseMotion.create();
        motion.setPosition(pos);
        motion.setGlobalPosition(pos);
        motion.setRelative(
          Vector2(event.delta.dx * density, event.delta.dy * density),
        );
        widget.controller.sendInput(motion);
      }
    }
  }

  KeyEventResult _handleKeyEvent(FocusNode node, KeyEvent event) {
    if (!widget.enableInput) return KeyEventResult.ignored;
    final key = InputEventKey.create();
    key.setPressed(event is KeyDownEvent || event is KeyRepeatEvent);
    key.setKeycode(event.logicalKey.keyId & 0x1FFFFFFF);
    widget.controller.sendInput(key);
    return KeyEventResult.handled;
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

              Widget child = Texture(textureId: textureId);
              if (widget.enableInput) {
                child = Focus(
                  autofocus: true,
                  onKeyEvent: _handleKeyEvent,
                  child: Listener(
                    onPointerDown: (e) => _sendPointerEvent(e, density),
                    onPointerMove: (e) => _sendPointerEvent(e, density),
                    onPointerUp: (e) => _sendPointerEvent(e, density),
                    onPointerCancel: (e) => _sendPointerEvent(e, density),
                    onPointerHover: (e) => _sendPointerEvent(e, density),
                    child: child,
                  ),
                );
              }

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
                    child: child,
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

