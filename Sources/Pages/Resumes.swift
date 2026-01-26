//
//  Resumes.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/28/24.
//

import Foundation
import Ignite

struct Resumes: StaticPage {
    var title = "Resume"

    var body: some HTML {
        // Professional Summary
        Card {
            Text("Professional Summary")
                .font(.title1)
                .fontWeight(.black)
                .horizontalAlignment(.center)
                .margin(.top, .large)
                .margin(.bottom, .medium)

            Text(markdown: """
            **Senior iOS / Platform Engineer** with 20+ years of software experience and 15+ years specializing in iOS. Built
            mission-critical mobile and platform systems for the U.S. Intelligence Community, DoD, fintech, and government
            agencies—spanning zero-trust app ecosystems, real-time geospatial streaming, contract-driven networking, and
            classified CI/CD pipelines. Known for modernizing legacy systems, hardening security and reliability, and
            delivering measurable performance and operational gains in high-stakes environments.
            """)
                .font(.lead)
                .horizontalAlignment(.center)
                .margin(.bottom, .large)

            // Skills as badges
            Group {
                Text("Technical Skills")
                    .font(.title4)
                    .fontWeight(.bold)
                    .horizontalAlignment(.center)
                    .margin(.bottom, .small)

                Group {
                    // iOS Core
                    Badge("Swift").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("SwiftUI").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("UIKit").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Objective-C").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Core Data").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("SwiftData").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Combine").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Async/Await").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Swift Actors").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("GCD").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Multithreading").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Memory Management").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("App Lifecycle").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Networking").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("MapKit").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("ARKit").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("CoreML").role(.primary).badgeStyle(.subtle).margin(.all, 4)
                    // Testing & Architecture
                    Badge("TDD").role(.info).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Unit Testing").role(.info).badgeStyle(.subtle).margin(.all, 4)
                    Badge("UI Testing").role(.info).badgeStyle(.subtle).margin(.all, 4)
                    Badge("A/B Testing").role(.info).badgeStyle(.subtle).margin(.all, 4)
                    Badge("MVVM").role(.info).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Clean Architecture").role(.info).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Accessibility").role(.info).badgeStyle(.subtle).margin(.all, 4)
                    // Full Stack & Backend
                    Badge("Full-Stack").role(.success).badgeStyle(.subtle).margin(.all, 4)
                    Badge("API Creation").role(.success).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Database Schemas").role(.success).badgeStyle(.subtle).margin(.all, 4)
                    Badge("SQLite").role(.success).badgeStyle(.subtle).margin(.all, 4)
                    Badge("MongoDB").role(.success).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Firebase").role(.success).badgeStyle(.subtle).margin(.all, 4)
                    Badge("AWS").role(.success).badgeStyle(.subtle).margin(.all, 4)
                    // Languages & Tools
                    Badge("Java").role(.secondary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("JavaScript").role(.secondary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("TypeScript").role(.secondary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Perl").role(.secondary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("BASH").role(.secondary).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Markdown").role(.secondary).badgeStyle(.subtle).margin(.all, 4)
                    // Platforms & DevOps
                    Badge("macOS").role(.dark).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Linux").role(.dark).badgeStyle(.subtle).margin(.all, 4)
                    Badge("I/O").role(.dark).badgeStyle(.subtle).margin(.all, 4)
                    Badge("CI/CD").role(.dark).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Git").role(.dark).badgeStyle(.subtle).margin(.all, 4)
                    // AI & Emerging Tech
                    Badge("ChatGPT").role(.warning).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Claude").role(.warning).badgeStyle(.subtle).margin(.all, 4)
                    Badge("Emerging Technologies").role(.warning).badgeStyle(.subtle).margin(.all, 4)
                }
                .horizontalAlignment(.center)
            }
            .margin(.bottom, .large)

            // Notable Projects
            Group {
                Text("Notable Projects")
                    .font(.title4)
                    .fontWeight(.bold)
                    .horizontalAlignment(.center)
                    .margin(.bottom, .medium)

                Section {
                    Card {
                        Text("Edward Jones iOS App")
                            .fontWeight(.bold)
                        Text("Financial services app used by 100K+ daily users")
                            .font(.small)
                            .foregroundStyle(.slateGray)
                    }

                    Card {
                        Text("GEOINT App Store")
                            .fontWeight(.bold)
                        Text("Secure app distribution for U.S. Intelligence Community")
                            .font(.small)
                            .foregroundStyle(.slateGray)
                    }

                    Card {
                        Text("MAGE")
                            .fontWeight(.bold)
                        Text("Real-time situational awareness for field teams")
                            .font(.small)
                            .foregroundStyle(.slateGray)
                    }

                    Card {
                        Text("MemeCommander")
                            .fontWeight(.bold)
                        Text("Personal project - meme organization app on App Store")
                            .font(.small)
                            .foregroundStyle(.slateGray)
                    }
                }
            }
            .margin(.bottom, .large)

            // Work Style
            Group {
                Text("Work Style")
                    .font(.title4)
                    .fontWeight(.bold)
                    .horizontalAlignment(.center)
                    .margin(.bottom, .small)

                Text("Remote-first  •  Async communication  •  Mentoring  •  Agile  •  Honest & direct")
                    .horizontalAlignment(.center)
                    .foregroundStyle(.slateGray)
            }
            .margin(.bottom, .large)

            Group {
                Link("Download Resume (PDF)", target: "/images/bmichalski_resume_01222026.pdf")
                    .linkStyle(.button)
                    .role(.primary)

                Link("Contact Me", target: Contact())
                    .linkStyle(.button)
                    .role(.secondary)
            }
            .horizontalAlignment(.center)
            .margin(.bottom, .large)
        }
        .frame(width: .percent(90%))
        .horizontalAlignment(.center)
        .margin(.bottom, .large)

        // PDF Display
        Section {
            Group {}.width(1)
            Group {
                Image("/images/bmichalski_resume_01222026.pdf", description: "Brent Michalski's Resume")
                    .resizable()
            }
            .shadow(radius: 5)
        }
        .padding(.top, .large)
        .horizontalAlignment(.center)

        Section {
            Group {}.width(1)

            Group {
                Text {
                    Link("Download Resume", target: "/images/bmichalski_resume_01222026.pdf")
                        .linkStyle(.button)
                }
                .horizontalAlignment(.center)
            }
            .padding(.top, .xLarge)

            Group {}.width(1)
        }
    }
}
