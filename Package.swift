import PackageDescription

let package = Package(
    name: "BufferedLogger",
    platforms: [
        .iOS(.v9)
    ],
    products: [
        .library(
            name: "BufferedLogger",
            targets: ["BufferedLogger"]),
    ],
    dependencies: [
    ],
    targets: [
        .target(
            name: "BufferedLogger",
            dependencies: [],
            path: "BufferedLogger"
        ),
    ],
    swiftLanguageVersions: [.v5]
)

