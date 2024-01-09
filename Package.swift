
Copy code
// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "NBaseFramework",
    products: [
        .library(
            name: "NBaseFramework",
            targets: ["YourFNBaseFrameworkramework"]),
    ],
    dependencies: [
        // 여기에 종속성 추가
    ],
    targets: [
        .target(
            name: "NBaseFramework",
            dependencies: []),
    ]
)