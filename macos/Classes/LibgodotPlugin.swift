import Cocoa
import CoreVideo
import FlutterMacOS

private let assumedPumpInterval = 1.0 / 60.0

@_silgen_name("godot_core_set_frame_callback")
func godot_core_set_frame_callback(
  _ handle: UnsafeMutableRawPointer?,
  _ callback: (@convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer?) -> Void)?,
  _ userdata: UnsafeMutableRawPointer?
)

@_silgen_name("godot_core_iteration")
func godot_core_iteration(_ handle: UnsafeMutableRawPointer?) -> Bool

@_silgen_name("godot_core_destroy")
func godot_core_destroy(_ handle: UnsafeMutableRawPointer?)

@_silgen_name("godot_core_frame_get_iosurface_id")
func godot_core_frame_get_iosurface_id(_ framePtr: UnsafeRawPointer?) -> UInt32

class GodotTexture: NSObject, FlutterTexture {
  let handle: UnsafeMutableRawPointer
  private let frameLock = NSLock()
  private var pendingIOSurfaceId: UInt32 = 0
  private var hasFrame = false

  init(handle: UnsafeMutableRawPointer) {
    self.handle = handle
  }

  func setIOSurfaceId(_ surfaceId: UInt32) {
    frameLock.lock()
    pendingIOSurfaceId = surfaceId
    hasFrame = true
    frameLock.unlock()
  }

  func copyPixelBuffer() -> Unmanaged<CVPixelBuffer>? {
    frameLock.lock()
    guard hasFrame, pendingIOSurfaceId != 0 else {
      frameLock.unlock()
      return nil
    }
    let surfaceId = pendingIOSurfaceId
    frameLock.unlock()

    guard let surface = IOSurfaceLookup(surfaceId) else {
      return nil
    }

    var pixelBufferOut: Unmanaged<CVPixelBuffer>?
    let result = CVPixelBufferCreateWithIOSurface(
      kCFAllocatorDefault,
      surface,
      nil,
      &pixelBufferOut
    )

    guard result == kCVReturnSuccess, let unmanagedBuffer = pixelBufferOut else {
      return nil
    }
    return unmanagedBuffer
  }
}

class GodotTextureContext {
  let registry: FlutterTextureRegistry
  let textureId: Int64
  let handle: UnsafeMutableRawPointer
  let texture: GodotTexture
  let stateLock = NSLock()
  var frameNotifyQueued = false
  var isActive = true
  var nativeFrameCallbacks: UInt64 = 0
  var deliveredFrames: UInt64 = 0

  init(
    registry: FlutterTextureRegistry,
    textureId: Int64,
    handle: UnsafeMutableRawPointer,
    texture: GodotTexture
  ) {
    self.registry = registry
    self.textureId = textureId
    self.handle = handle
    self.texture = texture
  }
}

public class LibgodotPlugin: NSObject, FlutterPlugin {
  var textureRegistry: FlutterTextureRegistry?
  var pumpTimer: Timer?
  var contextPtrs: [Int64: UnsafeMutableRawPointer] = [:]
  var activeTextures: [Int64: GodotTextureContext] = [:]

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "libgodot", binaryMessenger: registrar.messenger)
    let instance = LibgodotPlugin()
    instance.textureRegistry = registrar.textures
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  deinit {
    stopPumpTimer()
  }

  private func updatePumpDriver() {
    if !activeTextures.isEmpty {
      startPumpTimer()
    } else {
      stopPumpTimer()
    }
  }

  private func startPumpTimer() {
    guard pumpTimer == nil else { return }

    let timer = Timer(timeInterval: assumedPumpInterval, repeats: true) { [weak self] _ in
      self?.pumpIterations()
    }
    timer.tolerance = assumedPumpInterval * 0.1
    RunLoop.main.add(timer, forMode: .common)
    pumpTimer = timer
  }

  private func stopPumpTimer() {
    pumpTimer?.invalidate()
    pumpTimer = nil
  }

  private func pumpIterations() {
    for (textureId, ctx) in activeTextures {
      ctx.stateLock.lock()
      let active = ctx.isActive
      ctx.stateLock.unlock()
      if !active { continue }

      let exitRequested = godot_core_iteration(ctx.handle)
      if exitRequested {
        unregister(textureId: textureId)
      }
    }
  }

  private func unregister(textureId: Int64) {
    guard let registry = textureRegistry else { return }
    registry.unregisterTexture(textureId)

    if let ctx = activeTextures.removeValue(forKey: textureId) {
      ctx.stateLock.lock()
      ctx.isActive = false
      ctx.frameNotifyQueued = false
      ctx.stateLock.unlock()

      godot_core_set_frame_callback(ctx.handle, nil, nil)
      godot_core_destroy(ctx.handle)
    }
    contextPtrs.removeValue(forKey: textureId)
    updatePumpDriver()
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      let version = ProcessInfo.processInfo.operatingSystemVersionString
      result("macOS " + version)

    case "registerTexture":
      guard let registry = textureRegistry else {
        result(FlutterError(code: "UNAVAILABLE", message: "Texture registry is null", details: nil))
        return
      }
      guard let handleNum = call.arguments as? NSNumber else {
        result(FlutterError(code: "INVALID_ARGS", message: "Expected handle address as argument", details: nil))
        return
      }

      let handleAddress = handleNum.uint64Value
      guard let handle = UnsafeMutableRawPointer(bitPattern: UInt(handleAddress)) else {
        result(FlutterError(code: "INVALID_ARGS", message: "Handle address was null", details: nil))
        return
      }

      let texture = GodotTexture(handle: handle)
      let textureId = registry.register(texture)

      let ctx = GodotTextureContext(
        registry: registry,
        textureId: textureId,
        handle: handle,
        texture: texture
      )
      let ctxPtr = Unmanaged.passRetained(ctx).toOpaque()
      contextPtrs[textureId] = ctxPtr
      activeTextures[textureId] = ctx

      let callback: @convention(c) (UnsafeMutableRawPointer?, UnsafeRawPointer?) -> Void = { contextPtr, framePtr in
        guard let contextPtr = contextPtr, let framePtr = framePtr else { return }
        let ctx = Unmanaged<GodotTextureContext>.fromOpaque(contextPtr).takeUnretainedValue()

        let surfaceId = godot_core_frame_get_iosurface_id(framePtr)
        guard surfaceId != 0 else { return }

        ctx.texture.setIOSurfaceId(surfaceId)

        ctx.stateLock.lock()
        ctx.nativeFrameCallbacks += 1
        if !ctx.isActive {
          ctx.stateLock.unlock()
          return
        }
        if ctx.frameNotifyQueued {
          ctx.stateLock.unlock()
          return
        }
        ctx.frameNotifyQueued = true
        ctx.stateLock.unlock()

        let textureId = ctx.textureId
        let reg = ctx.registry

        let deliverFrameAvailable = {
          ctx.stateLock.lock()
          let isActive = ctx.isActive
          ctx.frameNotifyQueued = false
          if isActive {
            ctx.deliveredFrames += 1
          }
          ctx.stateLock.unlock()

          guard isActive else { return }
          reg.textureFrameAvailable(textureId)
        }

        if Thread.isMainThread {
          deliverFrameAvailable()
        } else {
          DispatchQueue.main.async(execute: deliverFrameAvailable)
        }
      }

      godot_core_set_frame_callback(handle, callback, ctxPtr)
      updatePumpDriver()

      result(textureId)

    case "unregisterTexture":
      guard let num = call.arguments as? NSNumber else {
        result(FlutterError(code: "INVALID_ARGS", message: "Expected texture ID", details: nil))
        return
      }
      let textureId = num.int64Value
      unregister(textureId: textureId)
      result(nil)

    case "getTextureDiagnostics":
      guard let num = call.arguments as? NSNumber else {
        result(FlutterError(code: "INVALID_ARGS", message: "Expected texture ID", details: nil))
        return
      }
      let textureId = num.int64Value
      guard let ctx = activeTextures[textureId] else {
        result(nil)
        return
      }
      ctx.stateLock.lock()
      let diagnostics: [String: Any] = [
        "textureId": textureId,
        "isActive": ctx.isActive,
        "nativeFrameCallbacks": Int64(ctx.nativeFrameCallbacks),
        "deliveredFrames": Int64(ctx.deliveredFrames)
      ]
      ctx.stateLock.unlock()
      result(diagnostics)

    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
