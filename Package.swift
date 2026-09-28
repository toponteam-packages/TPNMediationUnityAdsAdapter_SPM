// swift-tools-version: 5.9
import PackageDescription

let package = Package(
    name: "TPNMediationUnityAdsAdapter",
    platforms: [.iOS(.v13)],
    products: [
        .library(
            name: "TPNMediationUnityAdsAdapter",
            targets: ["TPNMediationUnityAdsAdapterTarget"]
        )
    ],
    dependencies: [
        .package(url: "https://github.com/toponteam-packages/TPNiOS_SPM.git", from: "6.5.60"),
        .package(url: "https://github.com/Unity-Technologies/Unity-Ads-Swift-Package.git", exact: "4.19.0")
    ],
    targets: [
        .binaryTarget(
            name: "AnyThinkUnityAdsAdapter",
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkUnityAdsAdapter/4.19.0.2.0/AnyThinkUnityAdsAdapter-4.19.0.2.0.zip",
            checksum: "2faaab17c44a62eb08760ad951a677ba2167eeb492c84654d3d77c83efa8b283"
        ),
        .target(
            name: "TPNMediationUnityAdsAdapterTarget",
            dependencies: [
                "AnyThinkUnityAdsAdapter",
                .product(name: "TPNiOS", package: "TPNiOS_SPM"),
                .product(name: "UnityAds", package: "Unity-Ads-Swift-Package")
            ],
            path: "Sources/TPNMediationUnityAdsAdapterTarget"
        )
    ]
)
