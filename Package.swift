// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoKit",
    products: [
        .library(name: "DemoKit", targets: ["CDemoKit", "SwiftDemoKit"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Kyle-Ye/swift-docc-plugin.git", branch: "feature/kyle/clang_target_support"),
    ],
    targets: [
        .target(name: "CDemoKit"),
        .target(name: "SwiftDemoKit"),
    ]
)
