// swift-tools-version:5.0
import PackageDescription

let package = Package(
    name: "ZipArchive",
    platforms: [
        .macOS(.v10_10), .iOS(.v9), .tvOS(.v9), .watchOS(.v3)
    ],
    products: [
        .library(name: "ZipArchive", targets: ["ZipArchive"])
    ],
    targets: [
        .target(name: "ZipArchive",
                path: "SSZipArchive",
                publicHeadersPath: ".",
                linkerSettings: [
                    .linkedLibrary("z")
                ])
    ]
    
)

