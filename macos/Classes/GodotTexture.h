#import <FlutterMacOS/FlutterMacOS.h>

NS_ASSUME_NONNULL_BEGIN

/// Wraps a single libgodot instance rendering offscreen, bridging its IOSurface
/// frames into a Flutter `Texture` via `CVPixelBufferCreateWithIOSurface`.
@interface GodotTexture : NSObject <FlutterTexture>

/// Creates and starts a Godot instance rendering at `width`x`height`, and
/// registers it with `registrar`'s texture registry. Returns nil on failure,
/// with `error` populated.
///
/// `initFunctionAddress`, if non-zero, is the native address of a
/// `GDExtensionInitializationFunction` (e.g. a Dart-supplied
/// `GodotDartEntryPoint.nativeFunctionPointer.address` from
/// `package:godot_dart`), used in place of the built-in no-op init function
/// so Dart-authored GDExtension classes get registered with this instance.
- (nullable instancetype)initWithRegistrar:(id<FlutterPluginRegistrar>)registrar
                               projectPath:(NSString *)projectPath
                                     width:(int)width
                                    height:(int)height
                       initFunctionAddress:(int64_t)initFunctionAddress
                                     error:(NSError **)error;

/// The Flutter texture id this instance was registered under.
@property(nonatomic, readonly) int64_t textureId;

/// Stops iteration and destroys the underlying Godot instance. Safe to call
/// more than once. Does not unregister the texture; the caller (plugin) owns
/// that via its own registrar reference.
- (void)stop;

@end

NS_ASSUME_NONNULL_END
