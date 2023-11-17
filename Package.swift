// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let SWINJECT_VERSION: PackageDescription.Version = "2.8.0"
let MOYA_VERSION: PackageDescription.Version = "15.0.3"
let MOTAMO_VERSION: PackageDescription.Version = "7.5.2"
let ALAMOFIRE_VERSION: PackageDescription.Version = "5.6.4"

let UNLIMINT_CORE_VERSION: PackageDescription.Version = "2.0.1"
let UNLIMINT_SWIFTUI_VERSION: PackageDescription.Version = "2.0.1"


let package = Package(
    
  name: "UnlimintSDK",
  platforms: [.iOS(.v14)],
  products: [
    .library(
      name: "UnlimintSDK",
      targets: ["UnlimintSDK_SwiftUI"]
    )
  ],
  
  dependencies: [
    .package(url: "https://github.com/parvezunlimint/TestingPackage.git", branch: "main")
  ],
  targets: [
    
    .binaryTarget(
      name: "UnlimintSDK_SwiftUI",
      url: "https://github.com/parvezunlimint/TestingPackage/releases/download/1.0.1/UnlimintSDK-SwiftUI.xcframework.zip",
      checksum: "bd0ee70f20d3aa95c8a934335bc2be18058d13818ab70420c8a54c144b23a56c"
    )
  ],
  swiftLanguageVersions: [.v5]
)
