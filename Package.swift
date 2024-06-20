// swift-tools-version: 5.09
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let package = Package(
    name: "RegexWithCharacterClassesTest",
    platforms: [
        .iOS(.v16),
        .macOS(.v13),
        .tvOS(.v16),
        .watchOS(.v9),
    ],
    products: [
        .executable(
            name: "RegexWithCharacterClassesTest",
            targets: ["RegexWithCharacterClassesTest"]),
    ],
    dependencies: [
        .package(url: "https://github.com/stefanspringer1/RegexWithCharacterClasses.git", from: "0.0.7"),
    ],
    targets: [
        // Targets are the basic building blocks of a package, defining a module or a test suite.
        // Targets can depend on other targets in this package and products from dependencies.
        .executableTarget(
            name: "RegexWithCharacterClassesTest",
            dependencies: [
                .product(name: "RegexWithCharacterClasses", package: "RegexWithCharacterClasses"),
            ],
            swiftSettings: [
                .enableUpcomingFeature("BareSlashRegexLiterals"),
            ]
        )
    ]
)
