#import "LibgodotPlugin.h"
#import "GodotTexture.h"

#include <sys/utsname.h>

// createInstance/resizeInstance/destroyInstance used to live here, calling into libgodot
// directly; that control-plane logic is now called by Dart directly via the ffigen-generated
// bindings in lib/src/godot_core_bindings.g.dart (see lib/godot_controller.dart), since none of
// it actually needs native platform APIs. All that's left here is registerTexture/
// unregisterTexture, which genuinely do need native code: only this plugin has a
// FlutterTextureRegistrar to register a GodotTexture against.

@interface LibgodotPlugin ()

@property(nonatomic, strong) id<FlutterPluginRegistrar> registrar;
// int64 texture id -> owning GodotTexture.
@property(nonatomic, strong) NSMutableDictionary<NSNumber *, GodotTexture *> *textures;

@end

@implementation LibgodotPlugin

+ (void)registerWithRegistrar:(id<FlutterPluginRegistrar>)registrar {
  FlutterMethodChannel *channel = [FlutterMethodChannel methodChannelWithName:@"libgodot"
                                                                binaryMessenger:registrar.messenger];
  LibgodotPlugin *instance = [[LibgodotPlugin alloc] initWithRegistrar:registrar];
  [registrar addMethodCallDelegate:instance channel:channel];
}

- (instancetype)initWithRegistrar:(id<FlutterPluginRegistrar>)registrar {
  self = [super init];
  if (self) {
    _registrar = registrar;
    _textures = [NSMutableDictionary dictionary];
  }
  return self;
}

- (void)handleMethodCall:(FlutterMethodCall *)call result:(FlutterResult)result {
  if ([call.method isEqualToString:@"getPlatformVersion"]) {
    struct utsname uname_data = {};
    uname(&uname_data);
    result([NSString stringWithFormat:@"macOS %s", uname_data.release]);
  } else if ([call.method isEqualToString:@"registerTexture"]) {
    [self handleRegisterTexture:call result:result];
  } else if ([call.method isEqualToString:@"unregisterTexture"]) {
    [self handleUnregisterTexture:call result:result];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

- (void)handleRegisterTexture:(FlutterMethodCall *)call result:(FlutterResult)result {
  NSNumber *handleValue = call.arguments;
  if (![handleValue isKindOfClass:[NSNumber class]]) {
    result([FlutterError errorWithCode:@"invalid_args"
                                message:@"registerTexture requires the int handle address as its argument."
                                details:nil]);
    return;
  }

  void *handle = (void *)handleValue.longLongValue;
  NSError *error = nil;
  GodotTexture *texture = [[GodotTexture alloc] initWithRegistrar:self.registrar
                                                            handle:handle
                                                             error:&error];
  if (texture == nil) {
    result([FlutterError errorWithCode:@"register_texture_failed"
                                message:error.localizedDescription ?: @"unknown error"
                                details:nil]);
    return;
  }

  self.textures[@(texture.textureId)] = texture;
  result(@(texture.textureId));
}

- (void)handleUnregisterTexture:(FlutterMethodCall *)call result:(FlutterResult)result {
  NSNumber *textureIdValue = call.arguments;
  if (![textureIdValue isKindOfClass:[NSNumber class]]) {
    result([FlutterError errorWithCode:@"invalid_args"
                                message:@"unregisterTexture requires the int textureId as its argument."
                                details:nil]);
    return;
  }

  int64_t textureId = textureIdValue.longLongValue;
  GodotTexture *texture = self.textures[@(textureId)];
  if (texture != nil) {
    [self.registrar.textures unregisterTexture:textureId];
    [texture stop];
    [self.textures removeObjectForKey:@(textureId)];
  }

  result(nil);
}

@end
