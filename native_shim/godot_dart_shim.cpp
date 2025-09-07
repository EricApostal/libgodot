#include <mutex>
#include <queue>
#include <cstdint>
#include <atomic>
#include "../third_party/libgodot.h"

extern "C"
{

    // Captured init data
    static GDExtensionInterfaceGetProcAddress g_proc = nullptr;
    static GDExtensionClassLibraryPtr g_lib = nullptr;

    struct PendingCallback
    {
        InvokeCallback cb;
        CallbackData data;
    };

    static std::mutex g_queue_mutex;
    static std::queue<PendingCallback> g_queue;
    static std::atomic<bool> g_initialized{false};

    // Shim init function (called by engine possibly off main thread). It only captures pointers.
    int godot_dart_shim_init(
        GDExtensionInterfaceGetProcAddress p_get_proc,
        GDExtensionClassLibraryPtr p_library,
        GDExtensionInitialization *p_init)
    {
        g_proc = p_get_proc;
        g_lib = p_library;
        if (p_init)
        {
            // We simply set required fields minimally; actual Dart-side init will do work.
            p_init->minimum_initialization_level = GDEXTENSION_INITIALIZATION_CORE;
            p_init->userdata = nullptr;
            p_init->initialize = nullptr; // Dart will drive init later.
            p_init->deinitialize = nullptr;
        }
        g_initialized.store(true, std::memory_order_release);
        return 1; // success
    }

    // Async and sync executors just enqueue callbacks.
    void godot_dart_shim_enqueue(InvokeCallback p_callback, CallbackData p_data, ExecutorData /*p_exec*/)
    {
        if (!p_callback)
            return;
        std::lock_guard<std::mutex> lock(g_queue_mutex);
        g_queue.push({p_callback, p_data});
    }

    int godot_dart_shim_poll(InvokeCallback *out_cb, CallbackData *out_data)
    {
        std::lock_guard<std::mutex> lock(g_queue_mutex);
        if (g_queue.empty())
            return 0;
        auto item = g_queue.front();
        g_queue.pop();
        *out_cb = item.cb;
        *out_data = item.data;
        return 1;
    }

    GDExtensionInterfaceGetProcAddress godot_dart_shim_get_proc() { return g_proc; }
    GDExtensionClassLibraryPtr godot_dart_shim_get_lib() { return g_lib; }
    int godot_dart_shim_is_init_done() { return g_initialized.load(std::memory_order_acquire) ? 1 : 0; }

} // extern "C"
