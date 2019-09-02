// swift-tools-version:4.0
import PackageDescription

let package = Package(
    name: "LeafMarkdownTest",
    dependencies: [
        .package(url: "https://github.com/vapor/vapor.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor/leaf.git", from: "3.0.0"),
        .package(url: "https://github.com/vapor-community/leaf-markdown.git", from: "2.0.0"),
        .package(url: "https://github.com/jpsim/Yams.git", from: "2.0.0"),
        .package(url: "https://github.com/JohnSundell/Splash.git", from: "0.8.0"),
    ],
    targets: [
        .target(name: "App", dependencies: ["Leaf", "Vapor", "LeafMarkdown", "Yams", "Splash"]),
        .target(name: "Run", dependencies: ["App"]),
        .testTarget(name: "AppTests", dependencies: ["App"])
    ]
)

