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
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.7/WalletCore.xcframework.zip",
            checksum: "4b9aaa0a6dfe400024ae36876043665e5cdf069b0e579e5d822b829b5f63b4a3"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.7/SwiftProtobuf.xcframework.zip",
            checksum: "72943159c463e332d14fef509a75ff9174c4dcea12f4dc80c330bbec01f5856e"
        )
    ]
)
