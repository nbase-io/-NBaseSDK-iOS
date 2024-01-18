// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "NBase",
    products: [
        .library(
            name: "NBase",
            targets: ["NBase"]),
    ],
    dependencies: [
        .package(name: "Appwrite", url: "https://github.com/appwrite/sdk-for-swift", from: "0.1.0")
    ],
    targets: [
        .binaryTarget(
            name: "NBase",
            url: "https://github.com/nbase-io/NBaseSDK-iOS/releases/download/1.0.1/NBase.zip"
        ),
    ]
)