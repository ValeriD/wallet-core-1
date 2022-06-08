// swift-tools-version:5.3
import PackageDescription

let package = Package(
    name: "WalletCore",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "WalletCore", targets: ["WalletCore"]),
        .library(name: "SwiftProtobuf", targets: ["SwiftProtobuf"])
    ],
    dependencies: [],
    targets: [
        .binaryTarget(
            name: "WalletCore",
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.6.40/WalletCore.xcframework.zip",
            checksum: "dcd95faf2bac28b0e176359578618544903b44284e2d9ca3628d245a78a7ebf0"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.6.40/SwiftProtobuf.xcframework.zip",
            checksum: "a3d814fa5b3512f29ece43fd788ba7f30644a0b7c1abe1dda4ae8c86eb931198"
        )
    ]
)
