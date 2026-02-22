// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "Shell",
    platforms: [.iOS("17.0")],
    products: [
        .library(name: "WindowsFileKit", targets: ["WindowsFileKit"]),
        .library(name: "WineKit", targets: ["WineKit"])
    ],
    targets: [
        .target(
            name: "WindowsFileKit",
            path: "Sources/WindowsFileKit"
        ),
        .target(
            name: "WineKit",
            dependencies: ["WindowsFileKit"],
            path: "Sources/WineKit",
            sources: ["FlatDomain", "Logger.swift", "Model", "Wine", "TaskManager"], 
            resources: [.process("Resources")]
        )
    ]
)
