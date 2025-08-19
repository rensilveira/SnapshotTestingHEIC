// swift-tools-version:5.10
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription
import Foundation

let package = Package(
    name: "SnapshotTestingHEIC",
    platforms: [
        .iOS(.v16),
    ],
    products: [
        .library(
            name: "SnapshotTestingHEIC",
            targets: ["SnapshotTestingHEIC"]),
    ],
    dependencies: [
        .package(url: "https://github.com/rensilveira/swift-snapshot-testing", branch: "main"),
    ],
    targets: [
        .target(
            name: "SnapshotTestingHEIC",
            dependencies: [
                .product(name: "SnapshotTesting",
                         package: "swift-snapshot-testing"),
            ]
        ),
        .testTarget(
            name: "SnapshotTestingHEICTests",
            dependencies: ["SnapshotTestingHEIC"],
            exclude: ["__Snapshots__"]
        ),
    ]
)
