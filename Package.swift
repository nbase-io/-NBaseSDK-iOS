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
    dependencies: [
        .package(name: "Alamofire", url: "https://github.com/Alamofire/Alamofire.git", from: "5.8.1")
        .package(name: "swift-log", url: "https://github.com/apple/swift-log.git", from: "1.5.3")
        .package(name: "SocketIO", url: "https://github.com/socketio/socket.io-client-swift.git")
        .package(name: "Apollo", url: "https://github.com/apollographql/apollo-ios.git")
    ],
    targets: [
        .binaryTarget(
            name: "NBase",
            url: "https://github.com/nbase-io/NBaseSDK-iOS/releases/download/sdk/NBase.zip"
        ),
    ]
)