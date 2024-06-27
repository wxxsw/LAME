// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LAME",
    platforms: [.iOS(.v14), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)],
    products: [
        .library(name: "LAME", targets: ["LAME"])
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),
    ],
    targets: [
        // .binaryTarget(
        //     name: "LAME",
        //     path: "macosx/LAME.xcframework"
        // ),
       .binaryTarget(
           name: "LAME",
           url: "https://github.com/wxxsw/LAME/releases/download/3.100.3/LAME.xcframework.zip",
           checksum: "a405fe9c32316218a8e8d298e0641da8a67e9a2151963c87e8effd8e90f30b77"
       )
    ]
)
