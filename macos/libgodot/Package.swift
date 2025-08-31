// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "libgodot",
    platforms: [
        .macOS("10.15")
    ],
    products: [
        .library(name: "libgodot", targets: ["libgodot"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "libgodot",
            dependencies: [

                .target(name: "mac_libgodot")
            ],
            resources: [
                // If your plugin requires a privacy manifest, for example if it collects user
                // data, update the PrivacyInfo.xcprivacy file to describe your plugin's
                // privacy impact, and then uncomment these lines. For more information, see
                // https://developer.apple.com/documentation/bundleresources/privacy_manifest_files
                // .process("PrivacyInfo.xcprivacy"),

                // If you have other resources that need to be bundled with your plugin, refer to
                // the following instructions to add them:
                // https://developer.apple.com/documentation/xcode/bundling-resources-with-a-swift-package
            ]
        ),
        .binaryTarget(
            name: "mac_libgodot",
            url:
                "https://github.com/migueldeicaza/SwiftGodotKit/releases/download/0.60.2/mac_libgodot.xcframework.zip",
            checksum: "652f731db8ce584af743c6957f75d0f90e7575e363eaee481cb43f4e0ccf8dce"),
    ]
)
