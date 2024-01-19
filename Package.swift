// swift-tools-version: 5.9
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "swift-composable-repositories",
    platforms: [
        .macOS(.v14),
        .iOS(.v17),
        .tvOS(.v17),
        .watchOS(.v10),
    ],
    products: [
        .library(name: "ComposableRepositories", targets: ["ComposableRepositories"]),
        .library(name: "ComposableRepositoriesLive", targets: ["ComposableRepositoriesLive"]),
    ],
    targets: [
        .target(name: "ComposableRepositories"),
        .target(name: "ComposableRepositoriesLive", dependencies: ["ComposableRepositories"]),
    ]
)
