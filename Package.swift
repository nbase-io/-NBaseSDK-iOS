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