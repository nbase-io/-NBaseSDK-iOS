// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NBase",
   platforms: [.iOS(.v11)],
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "NBase",
            targets: ["NBase"]),
    ],
    targets: [
        .binaryTarget(
            name: "NBase",
            url: "https://github.com/nbase-io/NBaseSDK-iOS/releases/download/sdk/NBase.zip"
        ),
    ]
)