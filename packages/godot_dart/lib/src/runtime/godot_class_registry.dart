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
  static void registerAll() {
    for (final registrar in _registrars) {
      registrar();
    }
  }
}
