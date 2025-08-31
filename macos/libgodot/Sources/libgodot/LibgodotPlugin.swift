import Cocoa
import FlutterMacOS

// MARK: - Native Godot Host View (placeholder)

final class GodotHostView: NSView {
  private lazy var label: NSTextField = {
    let l = NSTextField(labelWithString: "Godot Native View")
    l.alignment = .center
    l.textColor = .white
    l.translatesAutoresizingMaskIntoConstraints = false
    return l
  }()

  override init(frame frameRect: NSRect) {
    super.init(frame: frameRect)
    wantsLayer = true
    layer?.backgroundColor = NSColor.black.cgColor
    addSubview(label)
    NSLayoutConstraint.activate([
      label.centerXAnchor.constraint(equalTo: centerXAnchor),
      label.centerYAnchor.constraint(equalTo: centerYAnchor),
    ])
  }

  required init?(coder: NSCoder) { super.init(coder: coder) }
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
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
