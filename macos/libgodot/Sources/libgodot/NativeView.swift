import Cocoa
import FlutterMacOS
import QuartzCore

class NativeViewFactory: NSObject, FlutterPlatformViewFactory {
    private var messenger: FlutterBinaryMessenger
    weak var lastView: NativeView?

    init(messenger: FlutterBinaryMessenger) {
        self.messenger = messenger
        super.init()
    }

    func create(
        withViewIdentifier viewId: Int64,
        arguments args: Any?
    ) -> NSView {
        let view = NativeView(
            viewIdentifier: viewId,
            arguments: args,
            binaryMessenger: messenger)
        self.lastView = view
        return view
    }

    /// Implementing this method is only necessary when
    /// the `arguments` in `createWithFrame` is not `nil`.
    public func createArgsCodec() -> (FlutterMessageCodec & NSObjectProtocol)? {
        return FlutterStandardMessageCodec.sharedInstance()
    }
}

class NativeView: NSView {

    init(
        viewIdentifier viewId: Int64,
        arguments args: Any?,
        binaryMessenger messenger: FlutterBinaryMessenger?
    ) {
        super.init(frame: CGRect(x: 0, y: 0, width: 200, height: 200))
        self.wantsLayer = true
        if !(self.layer is CAMetalLayer) {
            let metalLayer = CAMetalLayer()
            metalLayer.contentsScale = NSScreen.main?.backingScaleFactor ?? 1.0
            self.layer = metalLayer
        }
        addPlaceholderOverlay()
    }

    required init?(coder nsCoder: NSCoder) {
        super.init(coder: nsCoder)
    }

    func createNativeView(view _view: NSView) {
    }

    private func addPlaceholderOverlay() {
        let label = NSTextField(labelWithString: "Rendering surface")
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = NSColor.white
        label.alignment = .center
        label.font = NSFont.systemFont(ofSize: 14, weight: .medium)
        label.alphaValue = 0.85

        let shadow = NSShadow()
        shadow.shadowColor = NSColor.black.withAlphaComponent(0.6)
        shadow.shadowBlurRadius = 3
        shadow.shadowOffset = NSSize(width: 0, height: -1)
        label.shadow = shadow

        addSubview(label)
        NSLayoutConstraint.activate([
            label.centerXAnchor.constraint(equalTo: centerXAnchor),
            label.centerYAnchor.constraint(equalTo: centerYAnchor),
        ])
    }
}
