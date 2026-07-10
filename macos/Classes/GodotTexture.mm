#import "GodotTexture.h"

#import <CoreVideo/CoreVideo.h>
#import <IOSurface/IOSurface.h>

#include <mutex>

#include "godot_core.h"

// combined_init_func/resize-via-ClassDB-reflection used to be duplicated verbatim here and in
// linux/godot_texture.cc; they now live once in native/godot_core/godot_core.cpp (shared by both
// platforms), reached only through the plain C API in godot_core.h, and are called directly by
// Dart via ffigen (see lib/godot_controller.dart) rather than through this plugin at all.
// Iteration still has to be pumped from this file's own NSTimer (see godot_core_iteration's doc
// comment for why). What's left here is what's genuinely macOS-specific: bridging the IOSurface
// frames the engine delivers into a Flutter Texture via CVPixelBufferCreateWithIOSurface.

@interface GodotTexture () {
  GodotCoreHandle _core;
  NSTimer *_iterationTimer;

  // Frames arrive on whatever thread the engine's renderer/completion handler uses (see
  // GodotOffscreenFrame's docs in libgodot.h); copyPixelBuffer is called by Flutter's raster
  // thread whenever it wants the latest frame, so the most recent surface id is just stashed
  // here under a mutex rather than consumed/invalidated on read (unlike Linux's dma-buf fd, an
  // IOSurface id stays valid to look up again for as long as the engine's ring buffer keeps
  // recycling it).
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
                                     handle:(void *)handle
                                      error:(NSError **)error {
  self = [super init];
  if (!self) {
    return nil;
  }

  if (handle == nullptr) {
    if (error) {
      *error = [NSError errorWithDomain:@"libgodot"
                                    code:1
                                userInfo:@{NSLocalizedDescriptionKey : @"initWithRegistrar:handle:error: requires a non-null handle."}];
    }
    return nil;
  }

  _textureRegistry = registrar.textures;
  _core = handle;
  _hasFrame = false;
  _pendingIOSurfaceId = 0;

  godot_core_set_frame_callback(_core, &on_offscreen_frame, (__bridge void *)self);

  int64_t textureId = [registrar.textures registerTexture:self];
  _textureId = textureId;

  // RenderingServer::draw() asserts it's called from the same thread the instance was created
  // on, so iteration is driven from this run loop's own timer rather than godot_core (see
  // godot_core_iteration's doc comment).
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
  if (_core == nullptr) {
    return;
  }
  if (godot_core_iteration(_core)) {
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
  if (_core != nullptr) {
    godot_core_destroy(_core);
    _core = nullptr;
  }
}

- (void)dealloc {
  [self stop];
}

@end
