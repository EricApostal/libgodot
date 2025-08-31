import Cocoa
import Darwin
import FlutterMacOS

// MARK: - Plugin

public class LibgodotPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "libgodot", binaryMessenger: registrar.messenger)
    let instance = LibgodotPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)

    // // Register NSView factory that the Dart side (AppKitView) references.
    // registrar.register(GodotViewFactory(messenger: registrar.messenger), withId: "GodotView")
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
    case "attachGodotInstance":
      NSLog("lowkey attaching rn!!")
    default:
      result(FlutterMethodNotImplemented)
    }
  }

}
