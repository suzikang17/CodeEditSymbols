// swift-tools-version: 5.9

import PackageDescription

let package = Package(
    name: "CodeEditSymbols",
    platforms: [
        .macOS(.v12),
    ],
    products: [
        .library(
            name: "CodeEditSymbols",
            targets: ["CodeEditSymbols"]),
    ],
    dependencies: [
        .package(
            name: "SnapshotTesting",
            url: "https://github.com/pointfreeco/swift-snapshot-testing.git",
            from: "1.9.0"
        ),
    ],
    targets: [
        .target(
            name: "CodeEditSymbols",
            dependencies: [],
            resources: [
                .process("Symbols.xcassets")
            ]
        ),
        .testTarget(
            name: "CodeEditSymbolsTests",
            dependencies: [
                "CodeEditSymbols",
                "SnapshotTesting"
            ]
        ),
    ]
)
