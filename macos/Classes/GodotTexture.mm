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
// third_party/godot/tests/offscreen_embed_test/src/host_main.mm), unless the
// Dart side supplied its own init function (see initFunctionAddress below).

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

// MARK: - Runtime resize support.
//
// DisplayServer.window_set_size() is a normal bound ClassDB method, and the
// offscreen display driver's override of it genuinely reallocates the
// underlying IOSurface ring at the new size (see the fork's
// display_server_macos_offscreen.mm) - there's no dedicated libgodot.h C API
// for this, so it's called directly through the GDExtension interface
// instead. This has to work regardless of whether the Dart side supplied its
// own init function (godot_dart's registration path) or this plugin's own
// trivial_init_func is used, so a combined_init_func always runs first to
// capture GetProcAddress before delegating to whichever one actually applies.
//
// These are file-static (not per-GodotTexture) because ClassDB/singletons
// are process-global in this engine; only one embedded instance's worth of
// these is meaningfully different at a time in this plugin's current usage.
static GDExtensionInterfaceGetProcAddress g_get_proc_address = nullptr;
static GDExtensionInitializationFunction g_delegate_init_func = nullptr;

typedef GDExtensionObjectPtr (*GlobalGetSingletonFn)(GDExtensionConstStringNamePtr);
typedef GDExtensionMethodBindPtr (*ClassdbGetMethodBindFn)(GDExtensionConstStringNamePtr, GDExtensionConstStringNamePtr, GDExtensionInt);
typedef void (*ObjectMethodBindPtrcallFn)(GDExtensionMethodBindPtr, GDExtensionObjectPtr, const GDExtensionConstTypePtr *, GDExtensionTypePtr);
typedef void (*StringNameNewWithUtf8CharsFn)(GDExtensionUninitializedStringNamePtr, const char *);
typedef GDExtensionPtrDestructor (*VariantGetPtrDestructorFn)(GDExtensionVariantType);

static GlobalGetSingletonFn g_global_get_singleton = nullptr;
static ClassdbGetMethodBindFn g_classdb_get_method_bind = nullptr;
static ObjectMethodBindPtrcallFn g_object_method_bind_ptrcall = nullptr;
static StringNameNewWithUtf8CharsFn g_string_name_new_with_utf8_chars = nullptr;
static VariantGetPtrDestructorFn g_variant_get_ptr_destructor = nullptr;
static GDExtensionMethodBindPtr g_window_set_size_bind = nullptr;

static void resolve_resize_api() {
  if (g_global_get_singleton != nullptr || g_get_proc_address == nullptr) {
    return;
  }
  g_global_get_singleton = (GlobalGetSingletonFn)(void *)g_get_proc_address("global_get_singleton");
  g_classdb_get_method_bind = (ClassdbGetMethodBindFn)(void *)g_get_proc_address("classdb_get_method_bind");
  g_object_method_bind_ptrcall = (ObjectMethodBindPtrcallFn)(void *)g_get_proc_address("object_method_bind_ptrcall");
  g_string_name_new_with_utf8_chars = (StringNameNewWithUtf8CharsFn)(void *)g_get_proc_address("string_name_new_with_utf8_chars");
  g_variant_get_ptr_destructor = (VariantGetPtrDestructorFn)(void *)g_get_proc_address("variant_get_ptr_destructor");
}

static GDExtensionBool combined_init_func(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                           GDExtensionClassLibraryPtr p_library,
                                           GDExtensionInitialization *r_initialization) {
  g_get_proc_address = p_get_proc_address;
  resolve_resize_api();
  GDExtensionInitializationFunction delegate = g_delegate_init_func != nullptr ? g_delegate_init_func : trivial_init_func;
  return delegate(p_get_proc_address, p_library, r_initialization);
}

// Calls DisplayServer.window_set_size(Vector2i(width, height), 0). Returns
// false (harmlessly) if the resize API couldn't be resolved yet, e.g. called
// before any instance has started.
static bool godot_resize_offscreen(int width, int height) {
  resolve_resize_api();
  if (g_global_get_singleton == nullptr || g_classdb_get_method_bind == nullptr ||
      g_object_method_bind_ptrcall == nullptr || g_string_name_new_with_utf8_chars == nullptr) {
    return false;
  }

  GDExtensionPtrDestructor string_name_destructor =
      g_variant_get_ptr_destructor != nullptr ? g_variant_get_ptr_destructor(GDEXTENSION_VARIANT_TYPE_STRING_NAME) : nullptr;

  uint8_t display_server_name[8];
  g_string_name_new_with_utf8_chars(display_server_name, "DisplayServer");
  GDExtensionObjectPtr display_server = g_global_get_singleton(display_server_name);
  if (string_name_destructor != nullptr) {
    string_name_destructor(display_server_name);
  }
  if (display_server == nullptr) {
    return false;
  }

  if (g_window_set_size_bind == nullptr) {
    uint8_t class_name[8];
    uint8_t method_name[8];
    g_string_name_new_with_utf8_chars(class_name, "DisplayServer");
    g_string_name_new_with_utf8_chars(method_name, "window_set_size");
    // Hash from extension_api.json for DisplayServer.window_set_size(Vector2i, int); re-verify
    // against a fresh dump if this ever starts returning null (engine ABI drift).
    g_window_set_size_bind = g_classdb_get_method_bind(class_name, method_name, 2019273902);
    if (string_name_destructor != nullptr) {
      string_name_destructor(class_name);
      string_name_destructor(method_name);
    }
  }
  if (g_window_set_size_bind == nullptr) {
    return false;
  }

  struct {
    int32_t x;
    int32_t y;
  } size_arg = {width, height};
  int64_t window_id_arg = 0;
  const void *args[2] = {&size_arg, &window_id_arg};
  g_object_method_bind_ptrcall(g_window_set_size_bind, display_server, args, nullptr);
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

  g_delegate_init_func = initFunctionAddress != 0
      ? reinterpret_cast<GDExtensionInitializationFunction>(initFunctionAddress)
      : nullptr;

  _godotInstance = libgodot_create_godot_instance((int)argv.size(), argv.data(), &combined_init_func);
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

- (BOOL)resizeToWidth:(int)width height:(int)height {
  if (_godotInstance == nullptr) {
    return NO;
  }
  BOOL ok = godot_resize_offscreen(width, height) ? YES : NO;
  NSLog(@"libgodot: resize request to %dx%d -> %@", width, height, ok ? @"sent" : @"failed (resize API not resolved yet?)");
  return ok;
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
