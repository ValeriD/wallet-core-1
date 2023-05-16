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
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.6/WalletCore.xcframework.zip",
            checksum: "49446a1f7415d5a34c6daa91825826eaa93216a52a68292deb6f9610ac82dea8"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.6/SwiftProtobuf.xcframework.zip",
            checksum: "f5be6b41464078f45b1ebfffc9d0227bdcad86c304039085fe6f599fdc4b4faf"
        )
    ]
)
