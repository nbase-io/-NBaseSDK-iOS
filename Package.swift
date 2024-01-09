import PackageDescription

let package = Package(
    name: "NBaseSDK",
    platforms: [
        .iOS(.v12)
    ],
    products: [
        .library(
            name: "NBaseSDK",
            targets: ["NBaseSDK"]),
    ],
    targets: [
        .binaryTarget(
            name: "NBaseSDK",
            path: "Framework/NBaseFramework.xcframework"
        ),
    ]
)