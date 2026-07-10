#import "GodotTexture.h"

#import <CoreVideo/CoreVideo.h>
#import <IOSurface/IOSurface.h>

#include <mutex>
#include <string>
#include <vector>

#include "core/extension/libgodot.h"

// MARK: - Trivial GDExtension init function.
//
// libgodot hands the host straight into the engine's GDExtension loading
// machinery, but this plugin doesn't register any custom classes, so this
// just satisfies the required shape (mirrors linux/godot_texture.cc and
// third_party/godot/tests/offscreen_embed_test/src/host_main.mm).

static void trivial_initialize(void *, GDExtensionInitializationLevel) {}
static void trivial_deinitialize(void *, GDExtensionInitializationLevel) {}

static GDExtensionBool trivial_init_func(GDExtensionInterfaceGetProcAddress,
                                          GDExtensionClassLibraryPtr,
                                          GDExtensionInitialization *r_initialization) {
  r_initialization->initialize = trivial_initialize;
  r_initialization->deinitialize = trivial_deinitialize;
  r_initialization->userdata = nullptr;
  r_initialization->minimum_initialization_level = GDEXTENSION_INITIALIZATION_CORE;
  return true;
}

@interface GodotTexture () {
  GDExtensionObjectPtr _godotInstance;
  NSTimer *_iterationTimer;

  // Frames arrive on whatever thread the engine's renderer/completion handler
  // uses (see GodotOffscreenFrame's docs in libgodot.h); copyPixelBuffer is
  // called by Flutter's raster thread whenever it wants the latest frame, so
  // the most recent surface id is just stashed here under a mutex rather than
  // consumed/invalidated on read (unlike Linux's dma-buf fd, an IOSurface id
  // stays valid to look up again for as long as the engine's ring buffer
  // keeps recycling it).
  std::mutex _frameMutex;
  bool _hasFrame;
  uint32_t _pendingIOSurfaceId;
  bool _loggedFirstFrame;
}

@property(nonatomic, weak) id<FlutterTextureRegistry> textureRegistry;

- (void)_handleOffscreenFrame:(uint32_t)iosurfaceId;
- (void)_iterate;

@end

static void on_offscreen_frame(void *p_userdata, const GodotOffscreenFrame *p_frame) {
  if (p_frame->type != GODOT_OFFSCREEN_SURFACE_TYPE_IOSURFACE) {
    return;
  }

  GodotTexture *self_ = (__bridge GodotTexture *)p_userdata;
  [self_ _handleOffscreenFrame:p_frame->surface.iosurface.iosurface_id];
}

@implementation GodotTexture

- (nullable instancetype)initWithRegistrar:(id<FlutterPluginRegistrar>)registrar
                               projectPath:(NSString *)projectPath
                                     width:(int)width
                                    height:(int)height
                       initFunctionAddress:(int64_t)initFunctionAddress
                                     error:(NSError **)error {
  self = [super init];
  if (!self) {
    return nil;
  }

  _textureRegistry = registrar.textures;
  _hasFrame = false;
  _pendingIOSurfaceId = 0;

  std::vector<std::string> args_storage = {
    "libgodot_example",
    "--path", projectPath.UTF8String,
    "--offscreen",
    "--resolution", [NSString stringWithFormat:@"%dx%d", width, height].UTF8String,
  };
  std::vector<char *> argv;
  argv.reserve(args_storage.size());
  for (std::string &arg : args_storage) {
    argv.push_back(arg.data());
  }

  GDExtensionInitializationFunction init_func = trivial_init_func;
  if (initFunctionAddress != 0) {
    init_func = reinterpret_cast<GDExtensionInitializationFunction>(initFunctionAddress);
  }

  _godotInstance = libgodot_create_godot_instance((int)argv.size(), argv.data(), init_func);
  if (_godotInstance == nullptr) {
    if (error) {
      *error = [NSError errorWithDomain:@"libgodot"
                                    code:1
                                userInfo:@{NSLocalizedDescriptionKey : @"libgodot_create_godot_instance() failed; see stderr for engine log."}];
    }
    return nil;
  }

  if (!libgodot_godot_instance_start(_godotInstance)) {
    if (error) {
      *error = [NSError errorWithDomain:@"libgodot"
                                    code:2
                                userInfo:@{NSLocalizedDescriptionKey : @"Godot instance failed to start; see stderr for engine log."}];
    }
    libgodot_destroy_godot_instance(_godotInstance);
    _godotInstance = nullptr;
    return nil;
  }

  libgodot_godot_instance_set_offscreen_frame_callback(_godotInstance, &on_offscreen_frame, (__bridge void *)self);

  int64_t textureId = [registrar.textures registerTexture:self];
  _textureId = textureId;

  __weak GodotTexture *weakSelf = self;
  _iterationTimer = [NSTimer scheduledTimerWithTimeInterval:1.0 / 60.0
                                                     repeats:YES
                                                       block:^(NSTimer *timer) {
                                                         [weakSelf _iterate];
                                                       }];
  // NSTimer requires the run loop to hold a reference; it's already
  // scheduled on the current (main) run loop by scheduledTimerWithTimeInterval.

  return self;
}

- (void)_iterate {
  if (_godotInstance == nullptr) {
    return;
  }
  if (libgodot_godot_instance_iteration(_godotInstance)) {
    // Engine requested exit.
    [self stop];
  }
}

- (void)_handleOffscreenFrame:(uint32_t)iosurfaceId {
  {
    std::lock_guard<std::mutex> lock(_frameMutex);
    _pendingIOSurfaceId = iosurfaceId;
    _hasFrame = true;
  }
  if (!_loggedFirstFrame) {
    _loggedFirstFrame = true;
    NSLog(@"libgodot: first offscreen frame received (iosurface_id=%u)", iosurfaceId);
  }
  // textureFrameAvailable must be called on the main thread's runloop-safe
  // API; FlutterTextureRegistry itself is documented safe to call from any
  // thread.
  [self.textureRegistry textureFrameAvailable:self.textureId];
}

// MARK: - FlutterTexture

- (nullable CVPixelBufferRef)copyPixelBuffer {
  uint32_t iosurfaceId;
  {
    std::lock_guard<std::mutex> lock(_frameMutex);
    if (!_hasFrame) {
      return NULL;
    }
    iosurfaceId = _pendingIOSurfaceId;
  }

  IOSurfaceRef surface = IOSurfaceLookup(iosurfaceId);
  if (!surface) {
    return NULL;
  }

  CVPixelBufferRef pixelBuffer = NULL;
  CVReturn result = CVPixelBufferCreateWithIOSurface(kCFAllocatorDefault, surface, NULL, &pixelBuffer);
  // IOSurfaceLookup() returned a +1 ref; CVPixelBufferCreateWithIOSurface
  // retains it independently, so release ours now.
  CFRelease(surface);

  if (result != kCVReturnSuccess) {
    return NULL;
  }
  return pixelBuffer;
}

- (void)stop {
  if (_iterationTimer != nil) {
    [_iterationTimer invalidate];
    _iterationTimer = nil;
  }
  if (_godotInstance != nullptr) {
    libgodot_godot_instance_set_offscreen_frame_callback(_godotInstance, nullptr, nullptr);
    libgodot_destroy_godot_instance(_godotInstance);
    _godotInstance = nullptr;
  }
}

- (void)dealloc {
  [self stop];
}

@end
