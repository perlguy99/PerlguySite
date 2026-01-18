//
//  Contact.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/25/24.
//

import Foundation
import Ignite

struct Contact: StaticPage {
    var title = "Contact"

    var body: some HTML {
        Card {
            Group {
                Text("Let's Work Together")
                    .font(.title1)
                    .fontWeight(.black)
                    .margin(.top, .large)

                Text("I'm a senior iOS engineer looking for challenging, interesting projects where quality matters.")
                    .font(.lead)
                    .margin(.bottom, .large)

                // Availability Section
                Group {
                    Text("Current Availability")
                        .font(.title3)
                        .fontWeight(.bold)
                        .margin(.bottom, .small)

                    Badge("Available for Contract Work")
                        .role(.success)
                        .badgeStyle(.subtle)
                        .margin(.bottom, .medium)

                    List {
                        "Open to full-time remote contracts"
                        "Available for consulting engagements"
                        "Interested in iOS/SwiftUI projects"
                        "Can start within 2 weeks of agreement"
                    }
                }
                .padding(.all, 20)
                .background(.mintCream)
                .cornerRadius(8)
                .margin(.bottom, .large)

                // What I'm Looking For
                Group {
                    Text("What I'm Looking For")
                        .font(.title3)
                        .fontWeight(.bold)
                        .margin(.bottom, .small)

                    List {
                        "iOS/SwiftUI development projects"
                        "Teams that value code quality and testing"
                        "Remote-friendly environments"
                        "Interesting technical challenges"
                    }
                }
                .margin(.bottom, .large)

                // Contact Methods
                Group {
                    Text("Get In Touch")
                        .font(.title3)
                        .fontWeight(.bold)
                        .margin(.bottom, .medium)

                    Section {
                        Card {
                            Text("Email")
                                .fontWeight(.bold)
                            Link("Brent.Michalski@gmail.com", target: "mailto:brent.michalski@gmail.com")
                        }

                        Card {
                            Text("LinkedIn")
                                .fontWeight(.bold)
                            Link("linkedin.com/in/brent-michalski", target: "https://www.linkedin.com/in/brent-michalski")
                        }

                        Card {
                            Text("App Store")
                                .fontWeight(.bold)
                            Link("MemeCommander", target: "https://apps.apple.com/us/app/memecommander/id6757093072")
                        }
                    }
                }
            }
            .frame(width: .percent(90%))
        }
    }
}
