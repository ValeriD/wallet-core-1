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
            checksum: "670980400947c0383133f79813ff938a7973c06cfbe8d93c77dd5892b54b4d26"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.5/SwiftProtobuf.xcframework.zip",
            checksum: "12b01d7c371f1daecc49ca3e521a6765f857ac26883bf25c5d1dfb25c256e44a"
        )
    ]
)
