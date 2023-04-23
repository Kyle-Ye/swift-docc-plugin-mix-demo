// swift-tools-version: 5.8
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "DemoKit",
    products: [
        .library(name: "DemoKit", targets: ["CDemoKit", "SwiftDemoKit"]),
    ],
    dependencies: [
        .package(path: "../swift-docc-plugin"),
    ],
    targets: [
        .target(name: "CDemoKit"),
        .target(name: "SwiftDemoKit"),
    ]
)
