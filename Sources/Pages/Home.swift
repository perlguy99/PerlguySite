import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    @Environment(\.articles) var articles
    @Environment(\.decode) var decode

    struct CustomerReview: Decodable {
        var name: String
        var date: String
        var title: String
        var relationship: String
        var text: String
        var highlight: String
    }

    var body: some HTML {
        Carousel {
            articleSlide_01.renderSlide().backgroundOpacity(0.4)
            articleSlide_02.renderSlide().backgroundOpacity(0.4)
            articleSlide_03.renderSlide().backgroundOpacity(0.4)
            articleSlide_04.renderSlide().backgroundOpacity(0.4)
            articleSlide_05.renderSlide().backgroundOpacity(0.4)
            articleSlide_06.renderSlide().backgroundOpacity(0.4)
            articleSlide_07.renderSlide().backgroundOpacity(0.4)
        }

        Card {
            Text("About Me")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text(markdown: """
            Hello and welcome! I’m Brent Danger Michalski.  
            Yes, *Danger* is my legal middle name. No, it’s not a nickname. And yes… there’s a story there. 🤓
            <br /><br />
            I’m a senior iOS engineer with over 25 years of professional software development experience and more than 14 years focused specifically on iOS. I genuinely love building great apps — the kind that feel solid, fast, accessible, and thoughtfully engineered under the hood.
            <br /><br />
            I’ll be honest: I’m not a designer.  
            What I *am* is the developer who takes a vision (and maybe a rough sketch 😄) and turns it into a polished, high-quality product. I care deeply about clean architecture, unit tests, performance, maintainability, and making sure apps behave correctly even in the weird edge cases.
            <br /><br />
            Fun fact: this website was built entirely in Xcode using Swift.  
            I’m using the Ignite framework so I could build and ship it the same way I build apps — with code, structure, and intention.
            <br /><br />
            Over the years, I’ve led and contributed to some pretty meaningful projects, including:
            - The Edward Jones App, used by over 100,000 users every day.
            - The GEOINT App Store for the U.S. Intelligence Community (yes, *that* one Wired wrote about)
            - Large-scale iOS applications used by millions of users in highly regulated environments
            - Modern SwiftUI migrations, async/await refactors, and test-driven codebases

            <i>Much of my work has been in compliance-driven and mission-critical environments where correctness and reliability matter more than hype.</i>
            <br /><br />
            My technical sweet spot is Swift, SwiftUI, UIKit, and modern iOS architecture, with a strong emphasis on Unit Tests, Test-Driven Development, accessibility, and long-term maintainability. I also really enjoy mentoring developers and sharing what I’ve learned — which is why you’ll find articles, guides, and occasional rants sprinkled throughout this site.
            <br /><br />
            Outside of iOS, I’m endlessly curious. I enjoy experimenting with AI, machine learning, AR, 3D printing, and Raspberry Pi and/or Arduino projects.
            <br /><br />
            I bring a bit of humor, a lot of experience, and a genuine love for the craft. I believe that when you enjoy what you do, it shows — in the code, in the product, and in the teams you work with.
            <br /><br />
            Thanks for stopping by.
            If you're building something that needs to be done right, not just done fast — let's talk.
            """)
                .font(.lead)

            // Featured Testimonials
            Group {
                Text("What People Say")
                    .font(.title2)
                    .fontWeight(.bold)
                    .horizontalAlignment(.center)
                    .margin(.bottom, .medium)

                if let reviews = decode("reviews.json", as: [CustomerReview].self) {
                    Section {
                        for review in reviews.prefix(3) {
                            Card {
                                Text {
                                    "\"\(review.highlight)\""
                                }
                                .font(.lead)
                                .fontWeight(.medium)
                                .foregroundStyle(.steelBlue)

                                Text("— \(review.name)")
                                    .fontWeight(.semibold)
                                    .margin(.top, .medium)

                                Text(review.title)
                                    .font(.small)
                                    .foregroundStyle(.slateGray)
                            }
                        }
                    }
                }

                Text {
                    Link("View All Recommendations", target: Recommendations())
                        .linkStyle(.button)
                        .role(.primary)
                }
                .horizontalAlignment(.center)
                .margin(.top, .medium)
            }
            .padding(.all, 30)
            .margin(.top, .large)
            .margin(.bottom, .large)
            .background(.white)
            .cornerRadius(12)

            // Prominent Hire Me CTA
            Group {
                Text("Ready to Build Something Great?")
                    .font(.title2)
                    .fontWeight(.bold)
                    .horizontalAlignment(.center)
                    .margin(.bottom, .small)

                Text("I'm currently available for iOS development contracts and consulting.")
                    .font(.lead)
                    .horizontalAlignment(.center)
                    .margin(.bottom, .medium)

                Group {
                    hireMeLink
                    emailMeLink
                }
                .horizontalAlignment(.center)
            }
            .padding(.all, 40)
            .margin(.top, .xLarge)
            .margin(.bottom, .xLarge)
            .background(.aliceBlue)
            .cornerRadius(12)

            Group {
                Text("Apps & Projects")
                    .font(.title1)
                    .fontWeight(.black)
                    .margin(.top, .xLarge)

                Grid {
                    for content in articles.typed("apps") {
                        ArticlePreview(for: content)
                            .padding(.all, 20)
                            .margin(.all, 20)
                    }
                }
                .columns(3)
            }
            .background(.snow)

        }
        .horizontalAlignment(.leading)
        .margin(.bottom, .xLarge)
    }

    let hireMeLink = Link("Hire Me", target: Contact())
        .linkStyle(.button)
        .role(.light)

    let emailMeLink = Link("Email Me", target: "mailto:brent.michalski@gmail.com")
        .linkStyle(.button)
        .role(.warning)


    let articleSlide_01 = ArticleSlide(background: "/images/header_viewinspector.png", slideTitle: "Boost Your SwiftUI Testing Speed by Ditching UI Tests", linkNameText: "View Article on Medium", linkTargetText: "https://levelup.gitconnected.com/boost-your-swiftui-testing-speed-by-ditching-ui-tests-c8a81cc29deb")

    let articleSlide_02 = ArticleSlide(background: "/images/header_swiftdata_preview_crash.png", slideTitle: "Solving SwiftData Preview Crashes", linkNameText: "View Article on Medium", linkTargetText: "https://levelup.gitconnected.com/solving-swiftdata-preview-crashes-8275d9199a13")

    let articleSlide_03 = ArticleSlide(background: "/images/header_xcode_github.png", slideTitle: "Xcode Integration with GitHub: A Step-by-Step Guide", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/xcode-integration-with-github-a-step-by-step-guide-045177db5a2a")

    let articleSlide_04 = ArticleSlide(background: "/images/header_privacy_info.png", slideTitle: "Lost in Privacy: Apple's Maze of Madness for Devs", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/lost-in-privacy-apples-maze-of-madness-for-devs-c7a8d36bba62")

    let articleSlide_05 = ArticleSlide(background: "/images/header_failing_unit_tests.png", slideTitle: "Failing Unit Tests: The Developer's Key to Confidence and Quality", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/failing-unit-tests-the-developers-key-to-confidence-and-quality-e623aa69528d")

    let articleSlide_06 = ArticleSlide(background: "/images/header_swift_state.png", slideTitle: "Swift State for People with ADHD", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/swift-state-for-people-with-adhd-ad7437c099cb")

    let articleSlide_07 = ArticleSlide(background: "/images/header_turdherder.png", slideTitle: "The Saga of Turd Herder", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/the-saga-of-turd-herder-519799d2d4d1")

}
