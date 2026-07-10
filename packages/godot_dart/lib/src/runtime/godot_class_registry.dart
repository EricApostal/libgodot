// Aggregates every generated per-class registration function so the single
// GDExtensionInitializationFunction handed to libgodot can register all of
// them synchronously, in one place, during the engine's `initialize`
// callback — see godot_instance.dart.
library;

abstract final class GodotClassRegistry {
  static final List<void Function()> _registrars = [];

  /// Called once by each `@GodotClass`-generated `.g.dart` file's static
  /// registration hook (via a top-level `_registerX` call wired into
  /// `initializeGodotDartClasses()` in generated app-level code).
  static void register(void Function() registerClass) {
    _registrars.add(registerClass);
  }

  /// Invoked from the SCENE-level `initialize` callback. Runs every
  /// registered class's registration function, in registration order.
  ///
  /// Each registrar is run inside its own try/catch: an uncaught Dart
  /// exception propagating out of a native (Pointer.fromFunction) callback
  /// has undefined behavior at the FFI boundary, so a single broken
  /// registration must not silently abort every class after it in the list.
  static void registerAll() {
    for (final registrar in _registrars) {
      try {
        registrar();
      } catch (e, stackTrace) {
        // ignore: avoid_print
        print('godot_dart: class registration failed: $e\n$stackTrace');
      }
    }
  }
}
