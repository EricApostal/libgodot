import Cocoa
import FlutterMacOS
import Metal
import QuartzCore

public class LibgodotPlugin: NSObject, FlutterPlugin {
  private var nativeViewFactory: NativeViewFactory?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "libgodot-native-bridge",
      binaryMessenger: registrar.messenger
    )
    let instance = LibgodotPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)

    let factory = NativeViewFactory(messenger: registrar.messenger)
    instance.nativeViewFactory = factory
    registrar.register(factory, withId: "libgodot/metal_view")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "createMetalLayer", "createAttachedMetalLayer":
      createAttachedMetalLayer(result: result)

    case "destroyMetalLayer":
      destroyMetalLayer(result: result)

    default:
      result(FlutterMethodNotImplemented)
    }
  }

  private func createAttachedMetalLayer(result: @escaping FlutterResult) {
    DispatchQueue.main.async {
      guard let nativeView = self.nativeViewFactory?.lastView else {
        result(
          FlutterError(
            code: "no_native_view",
            message:
              "No NativeView has been created yet. Ensure the platform view is instantiated before requesting a CAMetalLayer.",
            details: nil))
        return
      }

      if !(nativeView.layer is CAMetalLayer) {
        nativeView.wantsLayer = true
        let metalLayer = CAMetalLayer()
        let scale =
          nativeView.window?.backingScaleFactor
          ?? nativeView.window?.screen?.backingScaleFactor
          ?? NSScreen.main?.backingScaleFactor
          ?? 1.0
        metalLayer.contentsScale = scale
        nativeView.layer = metalLayer
      } else if let metalLayer = nativeView.layer as? CAMetalLayer {
        let scale =
          nativeView.window?.backingScaleFactor
          ?? nativeView.window?.screen?.backingScaleFactor
          ?? NSScreen.main?.backingScaleFactor
          ?? metalLayer.contentsScale
        metalLayer.contentsScale = scale
      }

      guard let layer = nativeView.layer as? CAMetalLayer else {
        result(
          FlutterError(
            code: "no_metal_layer",
            message: "Failed to create or retrieve CAMetalLayer from NativeView.",
            details: nil))
        return
      }

      let ptr = UInt(bitPattern: Unmanaged.passUnretained(layer).toOpaque())
      let signed = Int64(bitPattern: UInt64(ptr))
      result(signed)
    }
  }

  private func destroyMetalLayer(result: @escaping FlutterResult) {
    DispatchQueue.main.async {
      if let nativeView = self.nativeViewFactory?.lastView,
        nativeView.layer is CAMetalLayer
      {
        nativeView.layer = nil
      }
      result(nil)
    }
  }
}
