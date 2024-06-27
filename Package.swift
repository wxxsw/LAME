// swift-tools-version:5.3
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "LAME",
    platforms: [.iOS(.v9), .macOS(.v10_10), .tvOS(.v9), .watchOS(.v2)],
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
           url: "https://github.com/wxxsw/LAME/releases/download/3.100.0/LAME.xcframework.zip",
           checksum: "1f54443617706dd00b21ac66610a71dc0e2fb6d23254ed478f36b2b5ccd5da80"
       )
    ]
)
