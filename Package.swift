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
            url: "https://topon-sdk-release.oss-accelerate.aliyuncs.com/TPN_Release/iosnetwork_2/AnyThinkUnityAdsAdapter/4.20.1.2.9/AnyThinkUnityAdsAdapter-4.20.1.2.9.zip",
            checksum: "63ec9a71f23f3b9a7ab2e1153e3fbca6ede923b53715b39217239a3371c6bf81"
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
