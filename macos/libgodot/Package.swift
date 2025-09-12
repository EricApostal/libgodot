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
                "MoltenVK",
                .target(name: "mac_libgodot", condition: .when(platforms: [.macOS])),
                .target(name: "ios_libgodot", condition: .when(platforms: [.iOS])),
            ],
            resources: [
                // .process("PrivacyInfo.xcprivacy"),
            ]
        ),
        .binaryTarget(
            name: "MoltenVK",
            url:
                "https://github.com/migueldeicaza/SwiftGodotKit/releases/download/0.60.2/MoltenVK.xcframework.zip",
            checksum: "92b0d55469f924256502f96122f5becf54af8b1321c768f80a92581bb460a414"
        ),
        .binaryTarget(
            name: "mac_libgodot",
            url:
                "https://github.com/migueldeicaza/SwiftGodotKit/releases/download/0.60.2/mac_libgodot.xcframework.zip",
            checksum: "652f731db8ce584af743c6957f75d0f90e7575e363eaee481cb43f4e0ccf8dce"
        ),
        .binaryTarget(
            name: "ios_libgodot",
            url:
                "https://github.com/migueldeicaza/SwiftGodotKit/releases/download/0.60.2/ios_libgodot.xcframework.zip",
            checksum: "9a97f2189f6242695817af8480861e04121f9c3e043a9690a9396bb48c6142e4"
        ),
    ]
)
