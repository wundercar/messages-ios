// swift-tools-version:4.0

import PackageDescription

let package = Package(
    name: "WUMessages",
    products: [
        .library(
            name: "WUMessages",
            targets: ["WUMessages"]
        ),
    ],
    dependencies: [],
    targets: [
        .target(
            name: "WUMessages",
            dependencies: [],
            path: "Sources"
        ),
        .testTarget(
            name: "WUMessagesTests",
            dependencies: ["WUMessages"],
            path: "Tests"
        ),
    ]
)
