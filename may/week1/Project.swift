import ProjectDescription

let project = Project(
    name: "week1",
    targets: [
        .target(
            name: "week1",
            destinations: .iOS,
            product: .app,
            bundleId: "dev.tuist.week1",
            infoPlist: .extendingDefault(
                with: [
                    "UILaunchScreen": [
                        "UIColorName": "",
                        "UIImageName": "",
                    ],
                ]
            ),
            buildableFolders: [
                "week1/Sources",
                "week1/Resources",
            ],
            dependencies: []
        ),
        .target(
            name: "week1Tests",
            destinations: .iOS,
            product: .unitTests,
            bundleId: "dev.tuist.week1Tests",
            infoPlist: .default,
            buildableFolders: [
                "week1/Tests"
            ],
            dependencies: [.target(name: "week1")]
        ),
    ]
)
