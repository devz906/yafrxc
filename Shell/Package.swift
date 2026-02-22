// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Shell",
    platforms: [.iOS(.v17)],
    products: [
        .library(name: "WindowsFileKit", targets: ["WindowsFileKit"]),
        .library(name: "WineKit", targets: ["WineKit"])
    ],
    targets: [
        .target(name: "WindowsFileKit"),
        .target(name: "WineKit", dependencies: ["WindowsFileKit"])
    ]
)
