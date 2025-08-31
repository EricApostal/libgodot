import Cocoa
import Darwin
import FlutterMacOS

// MARK: - C API dynamic loading helpers

final class GodotAPI {
  typealias FnIsAvailable = @convention(c) () -> Int32
  typealias FnProcessEvents = @convention(c) () -> Void
  typealias FnResizeWindow = @convention(c) (Int32, Int32, Int32) -> Int32
  typealias FnGetWindowSize = @convention(c) (
    Int32, UnsafeMutablePointer<Int32>?, UnsafeMutablePointer<Int32>?
  ) -> Int32
  typealias FnSwapBuffers = @convention(c) () -> Int32
  typealias FnSetContentScale = @convention(c) (Float) -> Int32
  typealias FnKey = @convention(c) (Int32, UInt32, Int32, Int32, UInt32, Int32, Int32) -> Int32
  typealias FnMouseSetMode = @convention(c) (Int32) -> Int32
  typealias FnWindowSetTitle = @convention(c) (UnsafePointer<CChar>, Int32) -> Int32
  typealias FnGLMakeCurrent = @convention(c) (Int32) -> Int32
  typealias FnSetNativeSurface = @convention(c) (UnsafeMutableRawPointer?) -> Int32
  typealias FnSetMetalLayer = @convention(c) (UnsafeMutableRawPointer?) -> Int32  // optional helper
  typealias FnCreateNativeWindow = @convention(c) (
    UnsafeMutableRawPointer?, UnsafeMutablePointer<Int32>?
  ) -> Int32
  typealias FnDeleteWindow = @convention(c) (Int32) -> Int32
  typealias FnRegisterEmbeddedDriver = @convention(c) () -> Void
  // RenderingNativeSurfaceApple helpers (optional)
  typealias FnRNSAppleCreate = @convention(c) (UInt64) -> UnsafeMutableRawPointer?
  typealias FnRNSAppleGetLayer = @convention(c) (
    UnsafeMutableRawPointer?, UnsafeMutablePointer<UInt64>?
  ) -> Int32
  typealias FnRNSAppleDestroy = @convention(c) (UnsafeMutableRawPointer?) -> Int32

  static let shared = GodotAPI()

  private(set) var isAvailable: FnIsAvailable?
  private(set) var processEvents: FnProcessEvents?
  private(set) var resizeWindow: FnResizeWindow?
  private(set) var getWindowSize: FnGetWindowSize?
  private(set) var swapBuffers: FnSwapBuffers?
  private(set) var setContentScale: FnSetContentScale?
  private(set) var keyInput: FnKey?
  private(set) var mouseSetMode: FnMouseSetMode?
  private(set) var windowSetTitle: FnWindowSetTitle?
  private(set) var glMakeCurrent: FnGLMakeCurrent?
  private(set) var setNativeSurface: FnSetNativeSurface?
  private(set) var setMetalLayer: FnSetMetalLayer?
  private(set) var createNativeWindow: FnCreateNativeWindow?
  private(set) var deleteWindow: FnDeleteWindow?
  private(set) var registerEmbeddedDriver: FnRegisterEmbeddedDriver?
  private(set) var rnsAppleCreate: FnRNSAppleCreate?
  private(set) var rnsAppleGetLayer: FnRNSAppleGetLayer?
  private(set) var rnsAppleDestroy: FnRNSAppleDestroy?

  // Attempt to open a plausible set of library names once.
  private init() {
    let candidates = [
      "libgodot.dylib",  // generic name if installed in rpath
      "libgodot.macos.template_debug.dev.arm64.dylib",  // debug template name from assets
    ]
    var handle: UnsafeMutableRawPointer? = nil
    for name in candidates {
      handle = dlopen(name, RTLD_NOW | RTLD_GLOBAL)
      if handle != nil { break }
    }
    // Fallback: global namespace (symbols already loaded by Dart FFI)
    if handle == nil { handle = dlopen(nil, RTLD_NOW) }
    guard let h = handle else {
      NSLog(
        "[libgodot][swift] Failed to dlopen any libgodot candidate; dynamic symbols unavailable")
      return
    }
    func sym<T>(_ name: String, as: T.Type) -> T? {
      unsafeBitCast(dlsym(h, name), to: Optional<T>.self)
    }
    isAvailable = sym("libgodot_display_server_embedded_is_available", as: FnIsAvailable.self)
    processEvents = sym("libgodot_display_server_embedded_process_events", as: FnProcessEvents.self)
    resizeWindow = sym("libgodot_display_server_embedded_resize_window", as: FnResizeWindow.self)
    getWindowSize = sym(
      "libgodot_display_server_embedded_get_window_size", as: FnGetWindowSize.self)
    swapBuffers = sym("libgodot_display_server_embedded_swap_buffers", as: FnSwapBuffers.self)
    setContentScale = sym(
      "libgodot_display_server_embedded_set_content_scale", as: FnSetContentScale.self)
    keyInput = sym("libgodot_display_server_embedded_key", as: FnKey.self)
    mouseSetMode = sym("libgodot_display_server_embedded_mouse_set_mode", as: FnMouseSetMode.self)
    windowSetTitle = sym(
      "libgodot_display_server_embedded_window_set_title", as: FnWindowSetTitle.self)
    glMakeCurrent = sym(
      "libgodot_display_server_embedded_gl_window_make_current", as: FnGLMakeCurrent.self)
    setNativeSurface = sym(
      "libgodot_display_server_embedded_set_native_surface", as: FnSetNativeSurface.self)
    setMetalLayer = sym(
      "libgodot_display_server_embedded_set_metal_layer", as: FnSetMetalLayer.self)
    createNativeWindow = sym(
      "libgodot_display_server_embedded_create_native_window", as: FnCreateNativeWindow.self)
    deleteWindow = sym("libgodot_display_server_embedded_delete_window", as: FnDeleteWindow.self)
    registerEmbeddedDriver = sym(
      "libgodot_display_server_embedded_register_embedded_driver", as: FnRegisterEmbeddedDriver.self
    )
    rnsAppleCreate = sym(
      "libgodot_rendering_native_surface_apple_create", as: FnRNSAppleCreate.self)
    rnsAppleGetLayer = sym(
      "libgodot_rendering_native_surface_apple_get_layer", as: FnRNSAppleGetLayer.self)
    rnsAppleDestroy = sym(
      "libgodot_rendering_native_surface_apple_destroy", as: FnRNSAppleDestroy.self)
  }

  // Allow overriding resolved symbols with raw function pointer addresses
  // coming from the Dart layer (which already successfully dlopened the
  // libgodot dynamic library). Each entry maps the C symbol name to a
  // uint64 address.
  func overrideSymbols(from map: [String: UInt64]) {
    func cast<T>(_ addr: UInt64, as _: T.Type) -> T? {
      unsafeBitCast(UnsafeRawPointer(bitPattern: UInt(addr)), to: Optional<T>.self)
    }
    if let a = map["libgodot_display_server_embedded_is_available"] {
      isAvailable = cast(a, as: FnIsAvailable.self)
    }
    if let a = map["libgodot_display_server_embedded_process_events"] {
      processEvents = cast(a, as: FnProcessEvents.self)
    }
    if let a = map["libgodot_display_server_embedded_resize_window"] {
      resizeWindow = cast(a, as: FnResizeWindow.self)
    }
    if let a = map["libgodot_display_server_embedded_get_window_size"] {
      getWindowSize = cast(a, as: FnGetWindowSize.self)
    }
    if let a = map["libgodot_display_server_embedded_swap_buffers"] {
      swapBuffers = cast(a, as: FnSwapBuffers.self)
    }
    if let a = map["libgodot_display_server_embedded_set_content_scale"] {
      setContentScale = cast(a, as: FnSetContentScale.self)
    }
    if let a = map["libgodot_display_server_embedded_key"] { keyInput = cast(a, as: FnKey.self) }
    if let a = map["libgodot_display_server_embedded_mouse_set_mode"] {
      mouseSetMode = cast(a, as: FnMouseSetMode.self)
    }
    if let a = map["libgodot_display_server_embedded_window_set_title"] {
      windowSetTitle = cast(a, as: FnWindowSetTitle.self)
    }
    if let a = map["libgodot_display_server_embedded_gl_window_make_current"] {
      glMakeCurrent = cast(a, as: FnGLMakeCurrent.self)
    }
    if let a = map["libgodot_display_server_embedded_set_native_surface"] {
      setNativeSurface = cast(a, as: FnSetNativeSurface.self)
    }
    if let a = map["libgodot_display_server_embedded_set_metal_layer"] {
      setMetalLayer = cast(a, as: FnSetMetalLayer.self)
    }
    if let a = map["libgodot_display_server_embedded_create_native_window"] {
      createNativeWindow = cast(a, as: FnCreateNativeWindow.self)
    }
    if let a = map["libgodot_display_server_embedded_delete_window"] {
      deleteWindow = cast(a, as: FnDeleteWindow.self)
    }
    if let a = map["libgodot_rendering_native_surface_apple_create"] {
      rnsAppleCreate = cast(a, as: FnRNSAppleCreate.self)
    }
    if let a = map["libgodot_rendering_native_surface_apple_get_layer"] {
      rnsAppleGetLayer = cast(a, as: FnRNSAppleGetLayer.self)
    }
    if let a = map["libgodot_rendering_native_surface_apple_destroy"] {
      rnsAppleDestroy = cast(a, as: FnRNSAppleDestroy.self)
    }
    if let a = map["libgodot_display_server_embedded_register_embedded_driver"] {
      registerEmbeddedDriver = cast(a, as: FnRegisterEmbeddedDriver.self)
    }
    NSLog(
      "[libgodot][swift] Overrode symbol addresses from Dart; isAvailable now -> \(String(describing: isAvailable?()))"
    )
  }
}

// MARK: - Render / event pump

private final class GodotRenderLoop {
  static let shared = GodotRenderLoop()
  private var displayLink: CVDisplayLink?
  private var running = false
  private let api = GodotAPI.shared
  private let queue = DispatchQueue(label: "libgodot.renderloop")
  private var retryTimer: DispatchSourceTimer?
  private var retryAttempts = 0
  private init() {}

  func startIfNeeded() {
    guard !running else { return }
    if api.isAvailable?() != 1 {
      if retryTimer == nil {
        NSLog(
          "[libgodot][swift] DisplayServerEmbedded not available yet (\(api.isAvailable?() ?? -1)); polling"
        )
        let t = DispatchSource.makeTimerSource(queue: queue)
        t.schedule(deadline: .now() + .milliseconds(120), repeating: .milliseconds(120))
        t.setEventHandler { [weak self] in
          guard let self else { return }
          if self.api.isAvailable?() == 1 {
            self.retryTimer?.cancel()
            self.retryTimer = nil
            DispatchQueue.main.async { self.startIfNeeded() }
          } else {
            self.retryAttempts += 1
            if self.retryAttempts % 10 == 0 {
              NSLog(
                "[libgodot][swift] waiting for DisplayServerEmbedded (attempt=\(self.retryAttempts))"
              )
            }
          }
        }
        retryTimer = t
        t.resume()
      }
      return
    }
    retryTimer?.cancel()
    retryTimer = nil
    running = true
    var link: CVDisplayLink?
    CVDisplayLinkCreateWithActiveCGDisplays(&link)
    displayLink = link
    if let link = link {
      let callback: CVDisplayLinkOutputCallback = { (_, _, _, _, _, userData) -> CVReturn in
        let unmanaged = Unmanaged<GodotRenderLoop>.fromOpaque(userData!)
        unmanaged.takeUnretainedValue().tick()
        return kCVReturnSuccess
      }
      CVDisplayLinkSetOutputCallback(
        link, callback, UnsafeMutableRawPointer(Unmanaged.passUnretained(self).toOpaque()))
      CVDisplayLinkStart(link)
      NSLog("[libgodot][swift] Started render loop")
    }
  }

  func stop() {
    guard running else { return }
    running = false
    if let link = displayLink { CVDisplayLinkStop(link) }
    displayLink = nil
  }

  private func tick() {
    guard running else { return }
    queue.async { [weak self] in
      guard let self else { return }
      if self.api.isAvailable?() == 1 {
        self.api.processEvents?()
        _ = self.api.swapBuffers?()
      }
    }
  }
}

// MARK: - Native Godot Host View

final class GodotHostView: NSView {
  private let api = GodotAPI.shared
  private var lastPixelSize: CGSize = .zero
  private var metalLayer: CAMetalLayer? { return layer as? CAMetalLayer }
  private var startedOnce = false
  private var nativeWindowId: Int32 = 0
  private var surfaceBound = false
  private var bindRetryTimer: DispatchSourceTimer?
  private var bindFailures = 0
  private var nativeSurface: UnsafeMutableRawPointer?  // RenderingNativeSurfaceApple*

  override var wantsUpdateLayer: Bool { true }
  override var acceptsFirstResponder: Bool { true }

  override init(frame frameRect: NSRect) {
    super.init(frame: frameRect)
    wantsLayer = true  // assign a CAMetalLayer for Metal backend
    #if canImport(Metal)
      self.layer = CAMetalLayer()
      if let ml = metalLayer {
        ml.pixelFormat = .bgra8Unorm
        ml.framebufferOnly = true
        ml.contentsScale = NSScreen.main?.backingScaleFactor ?? 2.0
        ml.isOpaque = true
        ml.backgroundColor = NSColor.black.cgColor
      } else {
        layer?.backgroundColor = NSColor.black.cgColor
      }
    #else
      layer?.backgroundColor = NSColor.black.cgColor
    #endif
  }

  required init?(coder: NSCoder) { super.init(coder: coder) }

  override func viewDidMoveToWindow() {
    super.viewDidMoveToWindow()
    resizeEmbeddedWindowIfNeeded(force: true)
    GodotRenderLoop.shared.startIfNeeded()
    updateContentScale()
    if !startedOnce {
      startedOnce = true
      // Try to set a title hint (non-fatal if fails)
      if let titleFn = api.windowSetTitle {
        let title = "Godot Embedded"
        title.withCString { _ = titleFn($0, 0) }
      }
      bindNativeSurfaceIfNeeded()
      startBindRetryIfNeeded()
    }
  }

  override func layout() {
    super.layout()
    resizeEmbeddedWindowIfNeeded()
  }

  override func viewDidChangeBackingProperties() {
    super.viewDidChangeBackingProperties()
    updateContentScale()
    resizeEmbeddedWindowIfNeeded(force: true)
  }

  private func updateContentScale() {
    guard let setScale = api.setContentScale else { return }
    let scale = Float(window?.backingScaleFactor ?? NSScreen.main?.backingScaleFactor ?? 1.0)
    _ = setScale(scale)
    #if canImport(Metal)
      metalLayer?.contentsScale = CGFloat(scale)
    #endif
  }

  // MARK: Input forwarding (basic)
  private func sendKey(event: NSEvent, pressed: Bool) {
    guard let keyFn = api.keyInput else { return }
    // Godot expects key (logical), char code (UTF32), unshifted, physical, modifiers mask.
    // Use keyCode as physical, attempt to derive chars for char_code.
    let chars = event.charactersIgnoringModifiers ?? ""
    let scalar = chars.unicodeScalars.first?.value ?? 0
    let modifiers = UInt32(event.modifierFlags.rawValue & 0xFFFF)
    let physical = Int32(event.keyCode)
    let logical = Int32(scalar)  // Approximation
    _ = keyFn(logical, UInt32(scalar), logical, physical, modifiers, pressed ? 1 : 0, 0)
  }

  override func keyDown(with event: NSEvent) { sendKey(event: event, pressed: true) }
  override func keyUp(with event: NSEvent) { sendKey(event: event, pressed: false) }

  private func resizeEmbeddedWindowIfNeeded(force: Bool = false) {
    guard let resize = api.resizeWindow else { return }
    let scale = window?.backingScaleFactor ?? NSScreen.main?.backingScaleFactor ?? 1.0
    let pixelWidth = Int(round(bounds.width * scale))
    let pixelHeight = Int(round(bounds.height * scale))
    let newSize = CGSize(width: pixelWidth, height: pixelHeight)
    guard force || newSize != lastPixelSize else { return }
    lastPixelSize = newSize
    bindNativeSurfaceIfNeeded()  // ensure surface + window exist before resize
    let r = resize(Int32(pixelWidth), Int32(pixelHeight), 0)
    // if r != 0 { NSLog("[libgodot][swift] resize_window failed with code %d", r) }
  }

  private func bindNativeSurfaceIfNeeded() {
    guard !surfaceBound else { return }
    // Prefer primary set_native_surface; fall back to set_metal_layer helper if present.
    #if canImport(Metal)
      guard let ml = metalLayer else { return }
      // If the embedded DisplayServer isn't available yet, postpone binding; we'll retry via timer.
      if api.isAvailable?() != 1 {
        return
      }
      var res: Int32 = -1
      // Create RenderingNativeSurfaceApple if helper exists and we haven't yet.
      if nativeSurface == nil, let create = api.rnsAppleCreate {
        let layerPtr = Unmanaged.passUnretained(ml).toOpaque()
        let layerOpaque = UInt64(UInt(bitPattern: layerPtr))
        nativeSurface = create(layerOpaque)
        if nativeSurface == nil {
          NSLog("[libgodot][swift] rnsAppleCreate returned nil; will retry")
        } else {
          NSLog(
            "[libgodot][swift] Created RenderingNativeSurfaceApple ptr=\(nativeSurface!) layer=\(layerOpaque)"
          )
        }
      }
      if let surf = nativeSurface, let setSurf = api.setNativeSurface {
        res = setSurf(surf)
      } else if nativeSurface == nil, let setML = api.setMetalLayer {  // legacy raw layer helper
        let rawPtr = Unmanaged.passUnretained(ml).toOpaque()
        res = setML(rawPtr)
      } else if nativeSurface == nil, let setRaw = api.setNativeSurface {  // last resort (likely -1)
        let rawPtr = Unmanaged.passUnretained(ml).toOpaque()
        res = setRaw(rawPtr)
      } else {
        NSLog("[libgodot][swift] No surface binding path available; will retry")
        return
      }
      if res == 0 {
        surfaceBound = true
        let surfacePtrForWindow = nativeSurface ?? Unmanaged.passUnretained(ml).toOpaque()
        if let createWin = api.createNativeWindow {
          var winId: Int32 = 0
          let cr = createWin(surfacePtrForWindow, &winId)
          if cr == 0 { nativeWindowId = winId }
          if let makeCurrent = api.glMakeCurrent { _ = makeCurrent(Int32(nativeWindowId)) }
        }
        DispatchQueue.main.async { GodotRenderLoop.shared.startIfNeeded() }
        NSLog(
          "[libgodot][swift] Bound native surface (rns=\(String(describing: nativeSurface))) win=\(nativeWindowId); isAvailable=\(api.isAvailable?() ?? -1)"
        )
        stopBindRetry()
      } else {
        NSLog(
          "[libgodot][swift] set_native_surface failed code=\(res); isAvailable=\(api.isAvailable?() ?? -1) nativeSurface=\(String(describing: nativeSurface)) (will keep retrying)"
        )
        bindFailures += 1
        if bindFailures == 20 {
          NSLog(
            "[libgodot][swift][diagnostic] Still failing to bind native surface. Ensure libgodot_rendering_native_surface_apple_create is exported and returns a valid RenderingNativeSurfaceApple Ref."
          )
        }
        if bindFailures > 300 { stopBindRetry() }
      }
    #endif
  }

  deinit {
    if let surf = nativeSurface, let destroy = api.rnsAppleDestroy {
      _ = destroy(surf)
      NSLog("[libgodot][swift] Destroyed RenderingNativeSurfaceApple")
    }
  }

  private func startBindRetryIfNeeded() {
    guard bindRetryTimer == nil, !surfaceBound else { return }
    let t = DispatchSource.makeTimerSource(queue: DispatchQueue.main)
    t.schedule(deadline: .now() + .milliseconds(150), repeating: .milliseconds(150))
    t.setEventHandler { [weak self] in self?.bindNativeSurfaceIfNeeded() }
    bindRetryTimer = t
    t.resume()
    NSLog("[libgodot][swift] Started native surface bind retry timer")
  }

  private func stopBindRetry() {
    bindRetryTimer?.cancel()
    bindRetryTimer = nil
  }
}

// MARK: - Platform View Factory

final class GodotViewFactory: NSObject, FlutterPlatformViewFactory {
  private let messenger: FlutterBinaryMessenger
  init(messenger: FlutterBinaryMessenger) {
    self.messenger = messenger
    super.init()
  }

  func createArgsCodec() -> (FlutterMessageCodec & NSObjectProtocol)? {
    FlutterStandardMessageCodec.sharedInstance()
  }

  // macOS variant expected by AppKitView: no frame passed, Flutter sets layout later.
  func create(withViewIdentifier viewId: Int64, arguments args: Any?) -> NSView {
    // In the future interpret args for configuration.
    return GodotHostView(frame: .zero)
  }
}

// MARK: - Plugin

public class LibgodotPlugin: NSObject, FlutterPlugin {
  private var godotInstancePtr: UInt64 = 0
  private let api = GodotAPI.shared

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "libgodot", binaryMessenger: registrar.messenger)
    let instance = LibgodotPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)

    // Register NSView factory that the Dart side (AppKitView) references.
    registrar.register(GodotViewFactory(messenger: registrar.messenger), withId: "GodotView")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    case "attachGodotInstance":
      if let args = call.arguments as? [String: Any], let addr = args["address"] as? NSNumber {
        godotInstancePtr = addr.uint64Value
        // NSLog("[libgodot] Received Godot instance pointer: 0x%llx", godotInstancePtr)
        // Attempt to start render loop now that instance should exist.
        if api.isAvailable?() != 1 { api.registerEmbeddedDriver?() }
        GodotRenderLoop.shared.startIfNeeded()
        result(true)
      } else {
        result(FlutterError(code: "bad_args", message: "Missing address", details: nil))
      }
    case "registerGodotSymbols":
      if let args = call.arguments as? [String: Any] {
        var map: [String: UInt64] = [:]
        for (k, v) in args {
          if let num = v as? NSNumber { map[k] = num.uint64Value }
        }
        api.overrideSymbols(from: map)
        if api.isAvailable?() != 1 { api.registerEmbeddedDriver?() }
        // After overriding symbols, try starting render loop again (in case availability now true).
        GodotRenderLoop.shared.startIfNeeded()
        result(true)
      } else {
        result(FlutterError(code: "bad_args", message: "Expected symbol address map", details: nil))
      }
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
