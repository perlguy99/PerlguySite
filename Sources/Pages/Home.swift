import Foundation
import Ignite

struct Home: StaticPage {
    var title = "Home"

    func body(context: PublishingContext) -> [BlockElement] {
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
            # About Me
            <br /><br />
            Up above, those images all link to articles that I have written lately. Feel free to browse them, I'll wait here. 🤔
            <br /><br />
            Hello! I’m Brent Danger Michalski. Yes, *Danger* is my legal middle name - it's a long story, so maybe we can talk about it sometime.  🤓
            <br /><br />
            
            I am a well-tenured, innovative iOS Developer with over 25 years of software engineering experience and more than 12 years dedicated to iOS development. I am passionate about iOS development and genuinely love what I do. 
            <br /><br />
            
            One thing that I am *not* is a designer. I can write code all day and bring projects together to look amazing, but I am first, and foremost, a developer.
            <br /><br />
            
            Even this web site was designed and developed in Xcode! I am using the [Ignite Framework](https://github.com/twostraws/Ignite) to develop this web site completely in Swift!
            <br /><br />
            
            Sharing knowledge and mentoring junior developers brings me great joy *(sounds corny, but true)* and I strive to foster an innovative, collaborative and *fun* environment while creating high-performance, accessible, and easy-to-use apps that users love.
            <br /><br />
            
            My *official* journey in tech started back in 1997, and since then, I’ve led numerous successful projects, including the development of the [GEOINT App Store](https://www.linkedin.com/pulse/innovation-intelligence-story-geoint-app-store-brent-michalski-pbfhc/?trackingId=jH1eJ%2BESngstjay%2FRmkwew%3D%3D) for the U.S. Intelligence Community ([Wired: The DoD’s App Store Does This One Crucial Thing to Stay Secure](https://www.wired.com/story/dod-app-store-does-this-one-crucial-thing-to-stay-secure/)) and the [Edward Jones](https://apps.apple.com/us/app/edward-jones/id457043098) iOS app. I specialize in Swift, SwiftUI, and cutting-edge development methodologies like Test-Driven Development (TDD).

            <br /><br />
            
            In addition to my technical skills, I bring a quirky sense of humor and a passion for continuous improvement. I believe that loving what you do transforms work into something you are happy to do every day. 

            <br /><br />
            
            I have a deep love for learning and experimenting with new technologies, from AI, Augmented Reality and Machine Learning to 3D printing and IoT so when I’m not working on something related to iOS, you can find me tinkering with Raspberry Pi or exploring the latest advancements in tech.

            <br /><br />
            Thank you for visiting my portfolio. Let’s build something amazing together!
            
            ---
            
            """)
                .font(.lead)
            
            
            Text("Apps & Projects")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Section {
                for content in context.content(ofType: "apps") {
                    ContentPreview(for: content)
                        .margin(.bottom)
                }
            }
            .columns(4)
            
        }
        .horizontalAlignment(.leading)
        .frame(maxWidth: "60%")
        .margin(.bottom, .extraLarge)
        

        
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

    let articleSlide_04 = ArticleSlide(background: "/images/header_privacy_info.png", slideTitle: "Lost in Privacy: Apple’s Maze of Madness for Devs", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/lost-in-privacy-apples-maze-of-madness-for-devs-c7a8d36bba62")

    let articleSlide_05 = ArticleSlide(background: "/images/header_failing_unit_tests.png", slideTitle: "Failing Unit Tests: The Developer’s Key to Confidence and Quality", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/failing-unit-tests-the-developers-key-to-confidence-and-quality-e623aa69528d")

    let articleSlide_06 = ArticleSlide(background: "/images/header_swift_state.png", slideTitle: "Swift State for People with ADHD", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/swift-state-for-people-with-adhd-ad7437c099cb")

    let articleSlide_07 = ArticleSlide(background: "/images/header_turdherder.png", slideTitle: "The Saga of Turd Herder", linkNameText: "View Article on Medium", linkTargetText: "https://medium.com/@DangerMichalski/the-saga-of-turd-herder-519799d2d4d1")

    
}
