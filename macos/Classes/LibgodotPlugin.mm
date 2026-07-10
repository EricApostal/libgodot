#import "LibgodotPlugin.h"
#import "GodotTexture.h"

#include <sys/utsname.h>

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
  } else if ([call.method isEqualToString:@"createInstance"]) {
    [self handleCreateInstance:call result:result];
  } else if ([call.method isEqualToString:@"destroyInstance"]) {
    [self handleDestroyInstance:call result:result];
  } else if ([call.method isEqualToString:@"resizeInstance"]) {
    [self handleResizeInstance:call result:result];
  } else {
    result(FlutterMethodNotImplemented);
  }
}

- (void)handleCreateInstance:(FlutterMethodCall *)call result:(FlutterResult)result {
  NSDictionary *args = call.arguments;
  NSString *projectPath = args[@"projectPath"];
  if (![projectPath isKindOfClass:[NSString class]]) {
    result([FlutterError errorWithCode:@"invalid_args"
                                message:@"createInstance requires a string \"projectPath\" argument."
                                details:nil]);
    return;
  }

  int width = 480;
  if ([args[@"width"] isKindOfClass:[NSNumber class]]) {
    width = [args[@"width"] intValue];
  }
  int height = 270;
  if ([args[@"height"] isKindOfClass:[NSNumber class]]) {
    height = [args[@"height"] intValue];
  }

  int64_t initFunctionAddress = 0;
  if ([args[@"initFunctionAddress"] isKindOfClass:[NSNumber class]]) {
    initFunctionAddress = [args[@"initFunctionAddress"] longLongValue];
  }

  NSError *error = nil;
  GodotTexture *texture = [[GodotTexture alloc] initWithRegistrar:self.registrar
                                                       projectPath:projectPath
                                                             width:width
                                                            height:height
                                               initFunctionAddress:initFunctionAddress
                                                             error:&error];
  if (texture == nil) {
    result([FlutterError errorWithCode:@"create_instance_failed"
                                message:error.localizedDescription ?: @"unknown error"
                                details:nil]);
    return;
  }

  self.textures[@(texture.textureId)] = texture;
  result(@(texture.textureId));
}

- (void)handleResizeInstance:(FlutterMethodCall *)call result:(FlutterResult)result {
  NSDictionary *args = call.arguments;
  NSNumber *textureIdValue = args[@"textureId"];
  if (![textureIdValue isKindOfClass:[NSNumber class]]) {
    result([FlutterError errorWithCode:@"invalid_args"
                                message:@"resizeInstance requires an int \"textureId\" argument."
                                details:nil]);
    return;
  }
  int width = 0;
  int height = 0;
  if ([args[@"width"] isKindOfClass:[NSNumber class]]) {
    width = [args[@"width"] intValue];
  }
  if ([args[@"height"] isKindOfClass:[NSNumber class]]) {
    height = [args[@"height"] intValue];
  }
  if (width <= 0 || height <= 0) {
    result([FlutterError errorWithCode:@"invalid_args"
                                message:@"resizeInstance requires positive \"width\"/\"height\" arguments."
                                details:nil]);
    return;
  }

  int64_t textureId = textureIdValue.longLongValue;
  GodotTexture *texture = self.textures[@(textureId)];
  if (texture == nil) {
    result([FlutterError errorWithCode:@"invalid_texture_id"
                                message:@"No instance is registered under that texture id."
                                details:nil]);
    return;
  }

  BOOL resized = [texture resizeToWidth:width height:height];
  result(@(resized));
}

- (void)handleDestroyInstance:(FlutterMethodCall *)call result:(FlutterResult)result {
  NSDictionary *args = call.arguments;
  NSNumber *textureIdValue = args[@"textureId"];
  if (![textureIdValue isKindOfClass:[NSNumber class]]) {
    result([FlutterError errorWithCode:@"invalid_args"
                                message:@"destroyInstance requires an int \"textureId\" argument."
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
