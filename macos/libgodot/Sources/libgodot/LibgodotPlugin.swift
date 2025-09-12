import Cocoa
import FlutterMacOS
import Metal
import QuartzCore

public class LibgodotPlugin: NSObject, FlutterPlugin {
  private var renderingLayer: CAMetalLayer?
  private var frameObserver: NSObjectProtocol?

  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(
      name: "libgodot-native-bridge",
      binaryMessenger: registrar.messenger
    )
    let instance = LibgodotPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
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
      guard let window = NSApp.windows.first(where: { $0.isKeyWindow }) ?? NSApp.windows.first,
        let hostView = window.contentView
      else {
        result(
          FlutterError(
            code: "no_window",
            message: "Could not find Flutter host window/contentView",
            details: nil))
        return
      }

      hostView.wantsLayer = true
      if hostView.layer == nil {
        hostView.layer = CALayer()
      }

      let layer = CAMetalLayer()
      layer.frame = hostView.bounds
      layer.contentsScale = window.backingScaleFactor
      layer.autoresizingMask = [.layerWidthSizable, .layerHeightSizable]

      hostView.layer?.addSublayer(layer)

      self.renderingLayer = layer

      hostView.postsFrameChangedNotifications = true
      self.frameObserver = NotificationCenter.default.addObserver(
        forName: NSView.frameDidChangeNotification,
        object: hostView,
        queue: .main
      ) { [weak self, weak hostView, weak window] _ in
        guard let self, let hostView = hostView, let window = window else { return }
        self.renderingLayer?.frame = hostView.bounds
        self.renderingLayer?.contentsScale = window.backingScaleFactor
      }

      let ptr = UInt(bitPattern: Unmanaged.passUnretained(layer).toOpaque())
      let signed = Int64(bitPattern: UInt64(ptr))
      NSLog("SIGNED INTEGER SWIFT START")
      NSLog(String(signed))
      NSLog("END")

      /*
        The problem is somewhere with initializing it with `RenderingNativeSurfaceApple.create`.
        It takes this as a param.
      
        I am thinking of importing SwiftGodotKit and test it directly. This particular binding
        is actually really weird. Here is some the code for that:
        ```
        	// TODO: Remove workaround when SwiftGodot starts to support const void * arguments.
          static Ref<RenderingNativeSurfaceApple> create_api(/* GDExtensionConstPtr<const void> */ uint64_t p_layer);
      
          static Ref<RenderingNativeSurfaceApple> create(void *p_layer);
        ````
      
        Passing the int should be fine I think? Unless the bind gen is wrong and it's somehow right on swiftgodotkit?
      
        This is annoying to debug because all it does is just return null. No errors, nothing, just null. Thus why
        SwiftGodotKit testing would be helpful.
      */
      result(signed)
    }
  }

  private func destroyMetalLayer(result: @escaping FlutterResult) {
    DispatchQueue.main.async {
      if let obs = self.frameObserver {
        NotificationCenter.default.removeObserver(obs)
        self.frameObserver = nil
      }
      if let layer = self.renderingLayer {
        layer.removeFromSuperlayer()
        self.renderingLayer = nil
      }
    }
  }
}
