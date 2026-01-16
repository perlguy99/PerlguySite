//
//  Apps.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/26/24.
//

import Foundation
import Ignite

struct Apps: StaticPage {
    var title = "Apps & Projects"

    var body: some HTML {
        // Hero section with gradient background
        Section {
            Text("Apps & Projects")
                .font(.title1)
                .fontWeight(.black)

            Text("I'd love to talk about a job you need done!")
                .font(.lead)
        }
        .padding(.vertical, .xLarge)
        .background(Gradient.linearGradient(colors: .steelBlue, .darkSlateBlue, from: .topLeading, to: .bottomTrailing))
        .foregroundStyle(Color.white)
        .horizontalAlignment(.center)

        // Grid-based card layout for apps
        Section {
            Grid(spacing: .large) {
                // MemeCommander
                createAppCard(
                    imagePath: "/images/apps/memecommander_icon.png",
                    title: "MemeCommander",
                    link: "/apps/memecommander",
                    description: "Reclaim your Photos app! MemeCommander helps you organize, tag, and manage your meme collection with lightning-fast search, custom categories, and full backup/restore capabilities. Built with SwiftUI for a native iOS experience.",
                    tags: ["swift", "swiftui", "ios17", "storekit", "app store"]
                )
                .width(4)

                // Edward Jones App
                createAppCard(
                    imagePath: "/images/apps/edwardjones_icon.png",
                    title: "Edward Jones App",
                    link: "/apps/edwardjones",
                    description: "The Edward Jones app enables users to manage their financial goals on the go. Features include viewing account holdings, performance, and activity, connecting external accounts, tracking progress towards goals, and messaging with the Edward Jones team.",
                    tags: ["swift", "xcode", "uikit", "combine", "async-await", "oauth"]
                )
                .width(4)
                
                // MAGE App
                createAppCard(
                    imagePath: "/images/apps/mage_icon.png",
                    title: "MAGE iOS",
                    link: "/apps/mage",
                    description: "MAGE (Mobile Awareness GEOINT Environment) is an NGA situational awareness app enabling field teams to create and share geotagged reports in real time. Features include photo/video/audio capture with GPS tagging, real-time location sharing, and full offline capability with automatic sync when reconnected.",
                    tags: ["swift", "objective-c", "xcode", "maps", "offline", "geoint"]
                )
                .width(4)
                
                // Intercard Inventory App
                createAppCard(
                    imagePath: "/images/apps/inventory_icon.png",
                    title: "Intercard Inventory App",
                    link: "/apps/inventory",
                    description: "The Intercard Inventory App simplifies inventory management for arcade operators. It provides features for tracking, managing, and auditing arcade game inventory, ensuring accurate and efficient operations.",
                    tags: ["swift", "xcode", "uikit", "combine", "firebase", "sql", "api"]
                )
                .width(4)

                // GEOINT App Store
                createAppCard(
                    imagePath: "/images/projects/geoint_icon.png",
                    title: "GEOINT App Store",
                    link: "/apps/geointappstore",
                    description: "The GEOINT App Store was truly a pioneering, and highly innovative project and solution for its time. Working on the GEOINT App Store represents a defining moment in my professional career.",
                    tags: ["swift", "objective-c", "aws", "sql", "docker", "jenkins"]
                )
                .width(4)
                
                // iTAK App
                createAppCard(
                    imagePath: "/images/apps/itak_icon.png",
                    title: "iTAK App",
                    link: "/apps/itak",
                    description: "The iTAK (Team Awareness Kit) app is a powerful geospatial tool designed for real-time collaboration and situational awareness. It supports team location tracking, sensor information, live video streaming, chat communication, and offline mapping.",
                    tags: ["swift", "xcode", "uikit", "video", "messaging", "maps"]
                )
                .width(4)

                // Intercard iService App
                createAppCard(
                    imagePath: "/images/apps/iservice_icon.png",
                    title: "Intercard iService App",
                    link: "/apps/iservice",
                    description: "The Intercard iService App assists technicians in maintaining arcade games by providing easy access to service logs and allowing them to take games in and out of service. The app enhances operational efficiency by offering a user-friendly interface for game maintenance.",
                    tags: ["swift", "xcode", "uikit", "combine", "firebase", "api"]
                )
                .width(4)

                // My Shortcuts for Xcode
                createAppCard(
                    imagePath: "/images/projects/myshortcuts_icon.png",
                    title: "My Shortcuts for Xcode",
                    link: "/apps/myshortcutsforxcode",
                    description: "My Shortcuts for Xcode is your ultimate companion for Xcode productivity. This app empowers iOS developers to streamline their workflow by offering a comprehensive set of keyboard shortcuts and quick actions.",
                    tags: ["swift", "swiftui", "xcode", "firebase", "storekit"]
                )
                .width(4)

                // Turd Herder
                createAppCard(
                    imagePath: "/images/projects/header_turdherder.png",
                    title: "Turd Herder",
                    link: "/apps/turdherder",
                    description: "Turd Herder is a whimsical and entertaining augmented reality (AR) game that leverages Apple's ARKit to deliver a unique and amusing gaming experience. Inspired by a playful tutorial, the game transforms a simple concept into a fun challenge.",
                    tags: ["swift", "xcode", "spritekit", "arkit", "uikit"]
                )
                .width(4)
            }
        }
        .padding()
        .frame(maxWidth: 1200)
    }

    // Helper function to create consistent app cards
    private func createAppCard(
        imagePath: String,
        title: String,
        link: String,
        description: String,
        tags: [String]
    ) -> some HTML {
        Card {
            // App Icon - centered
            Link(target: link) {
                Image(imagePath, description: title)
                    .resizable()
            }
            .class("d-block")
            .class("mx-auto")
            .class("mb-3")
            .class("app-icon-link")

            // App Title as link
            Link(title, target: link)
                .linkStyle(.underline(.none))
                .role(.none)
                .class("d-block")
                .class("text-center")
                .class("mb-2")
                .class("app-title-link")

            // Description
            Text(description)
                .font(.body)
                .foregroundStyle(.secondary)
                .margin(.bottom, .medium)

            // Tags Section - show first 4 tags as badges
            Section {
                for tag in tags.prefix(4) {
                    Badge(tag)
                        .role(.primary)
                        .badgeStyle(.subtle)
                        .margin(.trailing, .xSmall)
                        .margin(.bottom, .xSmall)
                }

                // Show count of remaining tags if there are more than 4
                if tags.count > 4 {
                    Badge("+\(tags.count - 4) more")
                        .role(.secondary)
                        .badgeStyle(.subtle)
                }
            }
        }
        .class("app-card")
        .class("h-100")
    }
}
