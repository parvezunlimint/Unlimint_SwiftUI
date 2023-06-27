// swift-tools-version: 5.5
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let SWINJECT_VERSION: PackageDescription.Version = "2.8.0"
let MOYA_VERSION: PackageDescription.Version = "15.0.3"
let MOTAMO_VERSION: PackageDescription.Version = "7.5.2"
let ALAMOFIRE_VERSION: PackageDescription.Version = "5.6.4"

let UNLIMINT_CORE_VERSION: PackageDescription.Version = "2.0.1"
let UNLIMINT_SWIFTUI_VERSION: PackageDescription.Version = "2.0.1"

//
//let package = Package(
//    name: "Unlimint_SwiftUI",
//    platforms: [
//        .iOS(.v14)
//    ],
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//       .library( name: "UnlimintSDKCore", targets: ["UnlimintSDKCoreTarget"]),
////       .library( name: "UnlimintSDKSwiftUI", targets: ["UnlimintSDKSwiftUI1"]),
//
//    ],
//    dependencies: [
//        // Dependencies declare other packages that this package depends on.
//        // .package(url: /* package url */, from: "1.0.0"),
//
//        .package(url: "https://github.com/Swinject/Swinject.git", from: SWINJECT_VERSION),
//        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
//        .package(url: "https://github.com/matomo-org/matomo-sdk-ios.git", .upToNextMajor(from: MOTAMO_VERSION)),
//        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from:ALAMOFIRE_VERSION))
//
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//
//        .binaryTarget(
//                    name: "UnlimintSDKCoreBinary",
//                    path: "./Sources/UnlimintSDK_Core.xcframework"),
//
////        .binaryTarget(name: "UnlimintSDK_SwiftUI",
////                      path: "./Sources/UnlimintSDK_SwiftUI.xcframework"),
//
//
//        .target(
//            name: "UnlimintSDKCoreTarget",
//            dependencies: ["Moya",
//                           "Alamofire",
//                           "matomo-sdk-ios",
//                           "UnlimintSDKCoreBinary"]),
//
//
////        .target(
////            name: "UnlimintSDKSwiftUI1",
////            dependencies: ["UnlimintSDK_Core", "Swinject", "Moya", "MatomoTracker"]),
//    ]
//)


//let package = Package(
//    name: "Unlimint_SwiftUI",
//    platforms: [
//        .iOS(.v14)
//    ],
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "Unlimint_SwiftUI",
//            targets: ["UnlimintSDKCore1"]),
//    ],
//    dependencies: [
//            .package(url: "https://github.com/Swinject/Swinject.git", from: SWINJECT_VERSION),
//            .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
//            .package(url: "https://github.com/matomo-org/matomo-sdk-ios.git", .upToNextMajor(from: MOTAMO_VERSION)),
//            .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from:ALAMOFIRE_VERSION))
//    ],
//    targets: [
//        .binaryTarget(name: "UnlimintSDKCore", path: "./Sources/UnlimintSDK_Core.xcframework"),
//        .target(
//            name: "UnlimintSDKCore1",
//            dependencies: ["Moya",
//                           "Alamofire",
//                           "matomo-sdk-ios",
//                          "UnlimintSDKCore"] ,
//          path: "Sources")
//    ]
//)


let package = Package(
    name: "UnlimintSDK_Core",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        // Products define the executables and libraries a package produces, and make them visible to other packages.
       .library( name: "UnlimintSDK_Core", targets: ["UnlimintSDK_Core"]),
//       .library( name: "UnlimintSDKSwiftUI", targets: ["UnlimintSDKSwiftUI1"]),
   
    ],
    dependencies: [
        // Dependencies declare other packages that this package depends on.
        // .package(url: /* package url */, from: "1.0.0"),

        .package(url: "https://github.com/Swinject/Swinject.git", from: SWINJECT_VERSION),
        .package(url: "https://github.com/Moya/Moya.git", .upToNextMajor(from: MOYA_VERSION)),
        .package(url: "https://github.com/matomo-org/matomo-sdk-ios.git", .upToNextMajor(from: MOTAMO_VERSION))
        
    ],
    targets: [
        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
        // Targets can depend on other targets in this package, and on products in packages this package depends on.
        
        .binaryTarget(
                    name: "UnlimintSDK_Core",
                    url: "https://github.com/cardpay/ios-sdk-podspec/releases/download/2.0.1/UnlimintSDK_Core.zip",
                    checksum: "c4e46a2bb0f972a423bdae259c57f94f8b7a51d768a20d9acfd2aad7cbe8e898"),
        
//        .binaryTarget(name: "UnlimintSDK_SwiftUI",
//                      path: "./Sources/UnlimintSDK_SwiftUI.xcframework"),
        
        
//        .target(
//            name: "UnlimintSDK_Core",
//            dependencies: ["Moya",
//                           "matomo-sdk-ios",
//                           "UnlimintSDK_Core"]),

        
//        .target(
//            name: "UnlimintSDKSwiftUI1",
//            dependencies: ["UnlimintSDK_Core", "Swinject", "Moya", "MatomoTracker"]),
    ]
)
