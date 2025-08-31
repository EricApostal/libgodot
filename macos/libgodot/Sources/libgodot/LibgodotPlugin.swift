import Cocoa
import FlutterMacOS
@_implementationOnly import GDExtension
import QuartzCore
import libgodot
import os

// NOTE: These callbacks use types from the implementation-only import `GDExtension`.
// They must not be public, otherwise the compiler errors because implementation-only
// modules cannot leak their symbols in the public API surface. Keeping them internal fixes
// the "cannot use module 'GDExtension' here; 'GDExtension' has been imported as implementation-only" error.
var initHookCb: ((GDExtension.GDExtensionInitializationLevel) -> Void)?
var deinitHookCb: ((GDExtension.GDExtensionInitializationLevel) -> Void)?

public class LibgodotPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "libgodot", binaryMessenger: registrar.messenger)
    let instance = LibgodotPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("macOS " + ProcessInfo.processInfo.operatingSystemVersionString)
      let argsWithCmd = [Bundle.main.executablePath ?? ""] + args
      withUnsafePtr(
        strings: argsWithCmd,
        callback: { cstr in
          instance = libgodot.libgodot_create_godot_instance /*gCreateGodotInstance*/(
            Int32(argsWithCmd.count), cstr,
            { godotGetProcAddr, libraryPtr, extensionInit in
              if let godotGetProcAddr {
                let ext = EmbeddedExtensionInterface(
                  library: UnsafeMutableRawPointer(libraryPtr!), getProcAddrFun: godotGetProcAddr)
                setExtensionInterface(interface: ext)
                extensionInit?.pointee = GDExtensionInitialization(
                  minimum_initialization_level: GDEXTENSION_INITIALIZATION_CORE,
                  userdata: nil,
                  initialize: embeddedExtensionInit,
                  deinitialize: embeddedExtensionDeinit)
                return 1
              }
              return 0
            }, nil, nil, nil, nil)
        })

    default:
      result(FlutterMethodNotImplemented)
    }
  }
}

// Courtesy of GPT-4
func withUnsafePtr(
  strings: [String], callback: (UnsafeMutablePointer<UnsafeMutablePointer<Int8>?>?) -> Void
) {
  let cStrings: [UnsafeMutablePointer<Int8>?] = strings.map { string in
    // Convert Swift string to a C string (null-terminated)
    return strdup(string)
  }

  // Allocate memory for the array of C string pointers
  let cStringArray = UnsafeMutablePointer<UnsafeMutablePointer<Int8>?>.allocate(
    capacity: cStrings.count + 1)
  cStringArray.initialize(from: cStrings, count: cStrings.count)

  // Add a null pointer at the end of the array to indicate its end
  cStringArray[cStrings.count] = nil

  callback(cStringArray)

  for i in 0..<strings.count {
    free(cStringArray[i])
  }
  cStringArray.deallocate()
}

func embeddedExtensionInit(userData: UnsafeMutableRawPointer?, l: GDExtensionInitializationLevel) {
  let level = l
  print("SwiftEmbed: Register our types here, level: \(level)")
  if let cb = initHookCb {
    cb(l)
  }
}

func embeddedExtensionDeinit(userData: UnsafeMutableRawPointer?, l: GDExtensionInitializationLevel)
{
  if let cb = deinitHookCb {
    cb(l)
  }
}
