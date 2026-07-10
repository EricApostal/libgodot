#include "godot_core.h"

#if defined(__ANDROID__)
#include <android/looper.h>
#include <dlfcn.h>
#include <pthread.h>
#include <unistd.h>
#endif

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
// DisplayServer.window_set_size() is a normal bound ClassDB method, and the offscreen display
// driver's override of it genuinely reallocates the underlying native surface ring at the new
// size (see the fork's servers/display/display_server_offscreen.cpp) - there's no dedicated
// libgodot.h C API for this, so it's called directly through the GDExtension interface instead.
// This has to work regardless of whether the caller supplied its own init function (e.g.
// godot_dart's registration path) or godot_core's own trivial_init_func is used, so
// combined_init_func always runs first to capture GetProcAddress before delegating to whichever
// one actually applies.
//
// These are file-static (not per-handle) because ClassDB/singletons are process-global in this
// engine, and every bootstrap this file supports (godot_core_desktop.cpp's godot_core_create, or
// Android's GodotLib.setup() via godot_core_prepare_init_func) only ever allows one instance to
// exist at a time - there's never more than one meaningfully different set of these at once. It
// also sidesteps the fact that a raw GDExtensionInitializationFunction is a plain C function
// pointer with no room for a captured per-instance context.
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

#if defined(__ANDROID__)
// MARK: - Android main-thread dispatch for Dart callbacks.
//
// A Dart Pointer.fromFunction callback (what package:godot_dart's GodotDartEntryPoint, and every
// generated @GodotClass's create/free/call_virtual/get_virtual functions, are built from) can
// only be invoked from the Dart isolate's own OS thread -- calling one from any other thread
// crashes with "Cannot invoke native callback outside an isolate." On every other platform this
// is a non-issue: godot_core_create()/_start() are called directly from Dart via FFI, so
// Main::setup2() (which is what ends up calling the init function, and eventually per-class
// virtual methods) runs synchronously on that same calling thread.
//
// Android is different: GodotLib.step() (which drives Main::iteration(), and on the very first
// call, Main::setup2()) always runs on the engine's own dedicated VkThread (see
// platform/android/java/lib/src/main/java/org/godotengine/godot/vulkan/VkThread.kt), never on
// Android's main thread where Dart's isolate actually lives -- and there's no reasonable way to
// change that without risking the real (non-offscreen) Android embedding this thread is also
// responsible for. So instead, the *init function* is dispatched from here to the main thread
// and blocked on, using a self-pipe registered with the main thread's ALooper (the standard NDK
// pattern for waking up a specific thread's event loop from another thread).
//
// This only covers godot_dart's bootstrap entry point (init/initialize/deinitialize) -- enough
// for GodotClassRegistry.registerAll() (i.e. class *registration*) to run safely. Per-instance
// virtual method dispatch (e.g. a @GodotClass's _process override) goes through separate
// callback pointers generated per class by package:godot_dart_builder, which aren't wrapped by
// this and would need the same treatment to be safe to call from VkThread.
namespace {

int g_dispatch_write_fd = -1;
pthread_t g_main_thread_id;

struct MainThreadTask {
  void (*fn)(void *) = nullptr;
  void *context = nullptr;
  pthread_mutex_t mutex = PTHREAD_MUTEX_INITIALIZER;
  pthread_cond_t cond = PTHREAD_COND_INITIALIZER;
  bool done = false;
};

int on_dispatch_pipe_event(int fd, int, void *) {
  MainThreadTask *task = nullptr;
  if (read(fd, &task, sizeof(task)) == sizeof(task) && task != nullptr) {
    task->fn(task->context);
    pthread_mutex_lock(&task->mutex);
    task->done = true;
    pthread_cond_signal(&task->cond);
    pthread_mutex_unlock(&task->mutex);
  }
  return 1; // Keep the fd registered for subsequent tasks.
}

} // namespace

void godot_core_android_init_main_thread_dispatch() {
  if (g_dispatch_write_fd != -1) {
    return;
  }
  int fds[2];
  if (pipe(fds) != 0) {
    return;
  }
  // Only succeeds if called from a thread that has (or can have) a Looper prepared -- true for
  // Android's main thread automatically.
  ALooper *looper = ALooper_forThread();
  if (looper == nullptr) {
    close(fds[0]);
    close(fds[1]);
    return;
  }
  ALooper_acquire(looper);
  ALooper_addFd(looper, fds[0], ALOOPER_POLL_CALLBACK, ALOOPER_EVENT_INPUT, on_dispatch_pipe_event, nullptr);
  g_main_thread_id = pthread_self();
  g_dispatch_write_fd = fds[1];
}

// Runs fn(context) on the Android main thread and blocks the calling thread until it completes.
// Falls back to calling fn(context) directly if godot_core_android_init_main_thread_dispatch()
// was never called successfully, OR if the calling thread already *is* the main thread --
// critically the latter isn't just an optimization: some of this header's callbacks (the
// top-level init function, invoked synchronously from GodotLib.setup() on the main thread, via
// platform/android/java_godot_lib_jni.cpp's GodotInstance::initialize()) already run on the main
// thread, and posting-then-blocking-for a message to the *same* thread that's doing the blocking
// deadlocks forever: the main thread's Looper can't process the queued event while this JNI call
// is still on its stack synchronously waiting for it.
static void run_on_android_main_thread(void (*fn)(void *), void *context) {
  if (g_dispatch_write_fd == -1 || pthread_equal(pthread_self(), g_main_thread_id)) {
    fn(context);
    return;
  }
  MainThreadTask task;
  task.fn = fn;
  task.context = context;
  MainThreadTask *task_ptr = &task;
  if (write(g_dispatch_write_fd, &task_ptr, sizeof(task_ptr)) != sizeof(task_ptr)) {
    fn(context);
    return;
  }
  pthread_mutex_lock(&task.mutex);
  while (!task.done) {
    pthread_cond_wait(&task.cond, &task.mutex);
  }
  pthread_mutex_unlock(&task.mutex);
}

namespace {

struct InitFuncCallArgs {
  GDExtensionInitializationFunction delegate;
  GDExtensionInterfaceGetProcAddress get_proc_address;
  GDExtensionClassLibraryPtr library;
  GDExtensionInitialization *r_initialization;
  GDExtensionBool result = false;
};

void call_init_func(void *context) {
  auto *args = static_cast<InitFuncCallArgs *>(context);
  args->result = args->delegate(args->get_proc_address, args->library, args->r_initialization);
}

// The real (possibly Dart) callbacks combined_init_func's delegate installed, captured so the
// trampolines below can dispatch to them instead of the engine calling them directly.
GDExtensionInitializeCallback g_real_initialize = nullptr;
GDExtensionDeinitializeCallback g_real_deinitialize = nullptr;

struct LevelCallArgs {
  void *userdata;
  GDExtensionInitializationLevel level;
};

void call_real_initialize(void *context) {
  auto *args = static_cast<LevelCallArgs *>(context);
  if (g_real_initialize != nullptr) {
    g_real_initialize(args->userdata, args->level);
  }
}

void call_real_deinitialize(void *context) {
  auto *args = static_cast<LevelCallArgs *>(context);
  if (g_real_deinitialize != nullptr) {
    g_real_deinitialize(args->userdata, args->level);
  }
}

void android_initialize_trampoline(void *p_userdata, GDExtensionInitializationLevel p_level) {
  LevelCallArgs args{ p_userdata, p_level };
  run_on_android_main_thread(&call_real_initialize, &args);
}

void android_deinitialize_trampoline(void *p_userdata, GDExtensionInitializationLevel p_level) {
  LevelCallArgs args{ p_userdata, p_level };
  run_on_android_main_thread(&call_real_deinitialize, &args);
}

} // namespace
#endif // defined(__ANDROID__)

static GDExtensionBool combined_init_func(GDExtensionInterfaceGetProcAddress p_get_proc_address,
                                          GDExtensionClassLibraryPtr p_library,
                                          GDExtensionInitialization *r_initialization) {
  g_get_proc_address = p_get_proc_address;
  resolve_resize_api();
  GDExtensionInitializationFunction delegate = g_delegate_init_func != nullptr ? g_delegate_init_func : trivial_init_func;
#if defined(__ANDROID__)
  InitFuncCallArgs args{ delegate, p_get_proc_address, p_library, r_initialization };
  run_on_android_main_thread(&call_init_func, &args);
  // r_initialization->initialize/deinitialize may themselves be Dart callbacks (e.g.
  // package:godot_dart's GodotClassRegistry.registerAll() runs from `initialize`) that the
  // engine will call later from whatever thread it likes -- capture and replace them with
  // trampolines that dispatch to the main thread too.
  g_real_initialize = r_initialization->initialize;
  g_real_deinitialize = r_initialization->deinitialize;
  r_initialization->initialize = g_real_initialize != nullptr ? &android_initialize_trampoline : nullptr;
  r_initialization->deinitialize = g_real_deinitialize != nullptr ? &android_deinitialize_trampoline : nullptr;
  return args.result;
#else
  return delegate(p_get_proc_address, p_library, r_initialization);
#endif
}

GDExtensionInitializationFunction godot_core_prepare_init_func(GDExtensionInitializationFunction p_delegate_init_func) {
  g_delegate_init_func = p_delegate_init_func;
  return &combined_init_func;
}

// Calls DisplayServer.window_set_size(Vector2i(width, height), 0). Returns false (harmlessly) if
// the resize API couldn't be resolved yet, e.g. called before any instance has started.
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
  } size_arg = { width, height };
  int64_t window_id_arg = 0;
  const void *args[2] = { &size_arg, &window_id_arg };
  g_object_method_bind_ptrcall(g_window_set_size_bind, display_server, args, nullptr);
  return true;
}

bool godot_core_resize(GodotCoreHandle p_handle, int p_width, int p_height) {
  if (p_handle == nullptr) {
    return false;
  }
  return godot_resize_offscreen(p_width, p_height);
}

#if defined(__ANDROID__)
// Unlike macOS/Linux, this file isn't link-time linked against the engine's .so on Android (see
// android/CMakeLists.txt's comment on why: doing so trips a native-lib packaging conflict with
// the godot-lib AAR's own copy in AGP's merge step). libgodot_godot_instance_set_offscreen_frame_callback
// is resolved via dlopen()+dlsym() instead of a plain link-time call.
//
// RTLD_DEFAULT doesn't work for this on Android: unlike desktop Linux, a library loaded via
// System.loadLibrary() isn't added to the global/default symbol scope, so dlsym(RTLD_DEFAULT, ...)
// can't see its symbols from another library's code even when both are loaded in the same
// process. dlopen()'ing it by soname instead returns a handle to the copy Kotlin's GodotLib
// already loaded (dlopen is refcounted or a given path/soname; it doesn't reload), and dlsym()
// against *that specific handle* can see its symbols regardless of default-scope visibility.
typedef void (*LibgodotSetOffscreenFrameCallbackFn)(GDExtensionObjectPtr, GodotOffscreenFrameCallback, void *);

static LibgodotSetOffscreenFrameCallbackFn resolve_set_offscreen_frame_callback() {
  static LibgodotSetOffscreenFrameCallbackFn fn = []() -> LibgodotSetOffscreenFrameCallbackFn {
    void *lib = dlopen("libgodot_android.so", RTLD_NOW);
    if (lib == nullptr) {
      return nullptr;
    }
    return reinterpret_cast<LibgodotSetOffscreenFrameCallbackFn>(
        dlsym(lib, "libgodot_godot_instance_set_offscreen_frame_callback"));
  }();
  return fn;
}
#endif

void godot_core_set_frame_callback(GodotCoreHandle p_handle, GodotOffscreenFrameCallback p_callback, void *p_userdata) {
  if (p_handle == nullptr) {
    return;
  }
#if defined(__ANDROID__)
  LibgodotSetOffscreenFrameCallbackFn fn = resolve_set_offscreen_frame_callback();
  if (fn != nullptr) {
    fn(static_cast<GDExtensionObjectPtr>(p_handle), p_callback, p_userdata);
  }
#else
  libgodot_godot_instance_set_offscreen_frame_callback(static_cast<GDExtensionObjectPtr>(p_handle), p_callback, p_userdata);
#endif
}
