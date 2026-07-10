#import <FlutterMacOS/FlutterMacOS.h>

NS_ASSUME_NONNULL_BEGIN

/// Wraps a single, already-created-and-started libgodot instance (see native/godot_core/
/// godot_core.h), bridging its IOSurface frames into a Flutter `Texture` via
/// `CVPixelBufferCreateWithIOSurface`.
///
/// `godot_core_create`/`_start`/`_resize` are called directly by Dart via the `ffigen`-generated
/// bindings in lib/src/godot_core_bindings.g.dart -- this class only takes ownership of a handle
/// Dart already created, driving its iteration and bridging its frames into a Flutter Texture.
/// Destruction still goes through this class (see `stop`) rather than Dart calling
/// `godot_core_destroy` directly, so the iteration timer is guaranteed to be stopped first.
@interface GodotTexture : NSObject <FlutterTexture>

/// Wraps `handle` (a `GodotCoreHandle` from `godot_core_create`, already started) and registers
/// it with `registrar`'s texture registry. Returns nil on failure, with `error` populated.
- (nullable instancetype)initWithRegistrar:(id<FlutterPluginRegistrar>)registrar
                                     handle:(void *)handle
                                      error:(NSError **)error;

/// The Flutter texture id this instance was registered under.
@property(nonatomic, readonly) int64_t textureId;

/// Stops iteration and destroys the underlying Godot instance (via `godot_core_destroy`). Safe
/// to call more than once. Does not unregister the texture; the caller (plugin) owns that via
/// its own registrar reference.
- (void)stop;

@end

NS_ASSUME_NONNULL_END
