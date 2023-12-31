// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "WindowsFoundation",
    products: [
        .library(
            name: "WindowsFoundation",
            targets: ["WindowsFoundation", "WindowsFoundationCollections"])
    ],
    dependencies: [
        .package(path: "../swift-winrt")
    ],
    targets: [
        .target(
            name: "CWindowsFoundation",
            path: "Sources/CWindowsFoundation"),
        .target(
            name: "WindowsFoundationAssembly",
            dependencies: [
                "CWindowsFoundation",
                .product(name: "WindowsRuntime", package: "swift-winrt")
            ],
            path: "Sources/WindowsFoundation/Assembly"),
        .target(
            name: "WindowsFoundation",
            dependencies: ["WindowsFoundationAssembly"],
            path: "Sources/WindowsFoundation/Namespaces/WindowsFoundation"),
        .target(
            name: "WindowsFoundationCollections",
            dependencies: ["WindowsFoundationAssembly"],
            path: "Sources/WindowsFoundation/Namespaces/WindowsFoundationCollections")
    ]
)
