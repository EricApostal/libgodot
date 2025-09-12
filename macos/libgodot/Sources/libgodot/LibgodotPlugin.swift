import Cocoa
import Darwin
import FlutterMacOS
import Metal
import QuartzCore

// MARK: - Plugin

public class LibgodotPlugin: NSObject, FlutterPlugin {
  // Keep a strong reference so the layer isn't deallocated.
  private var renderingLayer: CAMetalLayer?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "libgodot-native-bridge", binaryMessenger: registrar.messenger)
    let instance = LibgodotPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)

    // // Register NSView factory that the Dart side (AppKitView) references.
    // registrar.register(GodotViewFactory(messenger: registrar.messenger), withId: "GodotView")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "createMetalLayer":
      // Create a CAMetalLayer and return its pointer address as Int64.
      guard let device = MTLCreateSystemDefaultDevice() else {
        result(
          FlutterError(code: "no_device", message: "Failed to create Metal device", details: nil))
        return
      }

      let layer: CAMetalLayer = CAMetalLayer()
      layer.device = device
      layer.pixelFormat = .bgra8Unorm
      layer.framebufferOnly = false

      layer.drawableSize = CGSize(width: 100, height: 100)

      // Retain the layer so it stays alive while Dart holds the pointer.
      self.renderingLayer = layer

      let ptr = UInt(bitPattern: Unmanaged.passUnretained(layer).toOpaque())
      let signed = Int64(bitPattern: UInt64(ptr))
      result(signed)
    default:
      result(FlutterMethodNotImplemented)
    }
  }

}
