// swift-tools-version: 5.7

import PackageDescription

let package = Package(
    name: "DYBlinkObject",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "DYBlinkObject",
            targets: ["DYBlinkObject"]),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "DYBlinkObject",
            dependencies: [],
            path: "DYBlinkObject/Classes"
        )
    ]
)
