// swift-tools-version: 5.10
import PackageDescription

let package = Package(
    name: "RoVaAtomicSciFi",
    platforms: [
        .iOS(.v17),
        .watchOS(.v9)
    ],
    products: [
        .library(
            name: "RoVaAtomicSciFi",
            targets: [
                "RoVaAtomicSciFiCore",
                "RoVaAtomicSciFiAtom",
                "RoVaAtomicSciFiMolecule"
            ]),
    ],
    dependencies: [
        .package(url: "https://github.com/RoVaMx/RoVaLog", 
                 branch: "project/feature/tca_architecture")
        
    ],
    targets: [
        .target(
            name: "RoVaAtomicSciFiCore",
            dependencies: [
                .product(name: "RoVaLog", package: "RoVaLog")
            ],
            path: "Core"
        ),
        .target(
            name: "RoVaAtomicSciFiAtom",
            dependencies: [
                .target(name: "RoVaAtomicSciFiCore")
            ],
            path: "Atom"
        ),
        .target(
            name: "RoVaAtomicSciFiMolecule",
            dependencies: [
                .target(name: "RoVaAtomicSciFiCore")
            ],
            path: "Molecule"
        )
    ]
)
