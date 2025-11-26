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
            resources: [
                .process("PrivacyInfo.xcprivacy"),
            ]
        ),
    ]
)
