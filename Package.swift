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
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.5/WalletCore.xcframework.zip",
            checksum: "37db2eed8101e6f39cea67245a8931a8836430128f5c98290b3ea61c6461d12f"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.5/SwiftProtobuf.xcframework.zip",
            checksum: "4b26ec510052eed205af04fb911842f00a114a6edc1c4b5fbba6da38be8b1293"
        )
    ]
)
