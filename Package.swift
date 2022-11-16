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
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.3/WalletCore.xcframework.zip",
            checksum: "fac2cbcaef85b40e0c893ff9539c787b002e55cad351fae097c61b4368eb9a26"
        ),
        .binaryTarget(
            name: "SwiftProtobuf",
            url: "https://github.com/ValeriD/wallet-core-1/releases/download/2.7.3/SwiftProtobuf.xcframework.zip",
            checksum: "b0fd7257e63db406a780a973c8680173e3b5a3bdf8c40541beed402f02294a8e"
        )
    ]
)
