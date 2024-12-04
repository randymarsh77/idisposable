// swift-tools-version:6.0
import PackageDescription

let package = Package(
	name: "IDisposable",
	products: [
		.library(
			name: "IDisposable",
			targets: ["IDisposable"]
		)
	],
	targets: [
		.target(
			name: "IDisposable",
			dependencies: []
		),
		.testTarget(
			name: "IDisposableTests",
			dependencies: ["IDisposable"]
		)
	]
)
