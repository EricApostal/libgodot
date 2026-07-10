// Annotation surface for Dart-authored GDExtension classes. godot_dart_builder
// (a build_runner Builder) scans for @GodotClass-annotated classes and
// generates the registration/dispatch glue in a `.g.dart` part file.
library;

/// Marks a Dart class to be registered as a new Godot class, usable from
/// GDScript. The class must extend a generated engine-class wrapper (e.g.
/// `Node2D`) from `package:godot_dart/godot_dart.dart`.
class GodotClass {
  const GodotClass({this.name});

  /// Overrides the registered Godot class name; defaults to the Dart class's
  /// own name.
  final String? name;
}

/// Marks a method to be exposed to GDScript/the engine. Godot's built-in
/// virtuals (`_ready`, `_process`, `_physics_process`, ...) are recognized by
/// name and registered as virtual overrides instead of plain methods.
class GodotMethod {
  const GodotMethod();
}

/// Marks a field/getter-setter pair to be exposed as a Godot property.
class GodotProperty {
  const GodotProperty();
}
