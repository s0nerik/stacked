// swift-tools-version:4.0
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Stacked",
    products: [
        .library(name: "Stacked", targets: ["Stacked"])
    ],
    dependencies: [
        .package(url: "https://github.com/s0nerik/cstack.git", .upToNextMajor(from: "1.0.2")),
    ],
    targets: [
        .target(name: "Stacked", dependencies: ["CStack"]),
        .testTarget(name: "StackedTests", dependencies: ["Stacked"]),
    ]
)
