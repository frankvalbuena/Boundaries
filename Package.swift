// swift-tools-version:5.1
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "Boundaries",
    products: [
        .library(
            name: "Boundaries",
            targets: ["Boundaries"]),
    ],
    targets: [
        .target(
            name: "Boundaries",
            path: "Boundaries"
        ),
        .testTarget(
            name: "BoundariesTests",
            dependencies: ["Boundaries"],
            path: "BoundariesTests"
        ),
    ]
)
