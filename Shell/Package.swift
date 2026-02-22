// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Shell",
    platforms: [.iOS("17.0")],
    products: [
        .library(name: "WineKit", targets: ["WineKit"])
    ],
    targets: [
        .target(
            name: "WineKit",
            path: "Sources/WineKit",
            sources: ["UI", "Logger.swift"],
            resources: [.process("Resources")]
        )
    ]
)
