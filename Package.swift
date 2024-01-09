
Copy code
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NBaseFramework",
    products: [
        .library(
            name: "NBaseFramework",
            targets: ["NBaseFramework"]),
    ],
    dependencies: [
        // 여기에 종속성 추가
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.0.0")),
        .package(url: "https://github.com/apollographql/apollo-ios.git", .upToNextMajor(from: "1.0.0")
    ),
    ],
    targets: [
        .target(
            name: "NBaseFramework",
            dependencies: []),
    ]
)