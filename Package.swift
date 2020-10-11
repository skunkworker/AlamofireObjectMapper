// swift-tools-version:5.0
//
//  Package.swift
//  AlamofireObjectMapper
//

import PackageDescription

let package = Package(name: "AlamofireObjectMapper",
  platforms: [.iOS(.v10)],
  products: [
    // Products define the executables and libraries produced by a package, and make them visible to other packages.
    .library(name: "AlamofireObjectMapper",
           targets: ["AlamofireObjectMapper"]),
    // .library(name: "AlamofireObjectMapperDynamic", type: .dynamic, targets: ["AlamofireObjectMapper"]),
  ],
  dependencies: [
    .package(url: "https://github.com/Alamofire/Alamofire", .upToNextMajor(from: Version(5,0,0))),
    .package(url: "https://github.com/tristanhimmelman/ObjectMapper", .upToNextMajor(from: Version(4,0,0))),
  ],
  targets: [
    .target(name: "AlamofireObjectMapper",
            dependencies: ["Alamofire", "ObjectMapper"],
            path: "AlamofireObjectMapper"),
  ]
)
