// swift-tools-version:5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LAME",
    platforms: [
        .iOS(.v12),
        .macCatalyst(.v13),
        .macOS(.v10_13),
        .tvOS(.v12),
        .watchOS(.v4),
    ],
    products: [
        .library(name: "LAME", targets: ["LAME"])
    ],
    dependencies: [],
    targets: [
//        .binaryTarget(
//            name: "LAME",
//            path: "macosx/LAME.xcframework"
//        ),
        .binaryTarget(
            name: "LAME",
            url: "https://github.com/wxxsw/LAME/releases/download/3.100.2/LAME.xcframework.zip",
            checksum: "d1c8c0a521f008a7fce00bf9e723f5cb054043f2eac7f5c233f2017eee29e29a"
        )
    ]
)
