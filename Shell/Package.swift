// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Shell",
    platforms: [.iOS("17.0")],
    products: [
        .executable(name: "WineKit", targets: ["WineKit"])
    ],
    targets: [
        .executableTarget(
            name: "WineKit",
            path: "Sources/WineKit",
            resources: [.process("Resources")]
        )
    ]
)
