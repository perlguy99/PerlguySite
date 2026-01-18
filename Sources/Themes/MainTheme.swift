import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Head {
            MetaLink(href: "/css/custom.css", rel: .stylesheet)
        }

        Body {
            NavigationBar(logo: Image("/images/header1b_100.png", description: "Brent D. Michalski").frame(width: 200)) {
                Link("Home", target: "/")
                Link("Apps", target: Apps())
                Link("Contact", target: Contact())
                Link("Resume", target: Resumes())
                Link("Recommendations", target: Recommendations())
            }
            .navigationBarStyle(.dark)
            .navigationItemAlignment(.trailing)
            .background(.steelBlue)

            content

            // Custom footer with links and social
            Section {
                // Quick Links
                Group {
                    Text("Quick Links")
                        .font(.title5)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .margin(.bottom, .small)

                    Link("Apps & Projects", target: Apps())
                        .foregroundStyle(.white)
                    Link("Resume", target: Resumes())
                        .foregroundStyle(.white)
                    Link("Recommendations", target: Recommendations())
                        .foregroundStyle(.white)
                    Link("Contact", target: Contact())
                        .foregroundStyle(.white)
                }
                .width(3)

                // Connect
                Group {
                    Text("Connect")
                        .font(.title5)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .margin(.bottom, .small)

                    Link("LinkedIn", target: "https://www.linkedin.com/in/brent-michalski")
                        .foregroundStyle(.white)
                    Link("GitHub", target: "https://github.com/perlguy")
                        .foregroundStyle(.white)
                    Link("Medium", target: "https://medium.com/@DangerMichalski")
                        .foregroundStyle(.white)
                    Link("Email Me", target: "mailto:brent.michalski@gmail.com")
                        .foregroundStyle(.white)
                }
                .width(3)

                // About
                Group {
                    Text("About")
                        .font(.title5)
                        .fontWeight(.bold)
                        .foregroundStyle(.white)
                        .margin(.bottom, .small)

                    Text("Senior iOS Engineer with 25+ years of software development experience. Available for contract work.")
                        .foregroundStyle(.white)
                        .font(.body)
                }
                .width(6)
            }
            .padding(.all, 40)
            .background(.slateGray)

            // Copyright bar
            Section {
                Text("© 2024-2026 Brent D. Michalski. Built with Swift & Ignite.")
                    .font(.small)
                    .foregroundStyle(.white)
                    .horizontalAlignment(.center)
            }
            .padding(.vertical, .medium)
            .background(.steelBlue)
        }
    }
}
