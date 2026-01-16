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
        Section {
            Group {}.width(1)
            Group {
                Image("/images/brent_michalski_01_2026.pdf", description: "Brent Michalski's Resume")
                    .resizable()
            }
            .shadow(radius: 5)
        }
        .padding(.top, .xLarge)
        .horizontalAlignment(.center)

        Section {
            Group {}.width(1)

            Group {
                Text {
                    Link("Download Brents Resume", target: "/images/brent_michalski_01_2026.pdf")
                        .linkStyle(.button)
                }
                .horizontalAlignment(.center)
            }
            .padding(.top, .xLarge)

            Group {}.width(1)
        }
    }
}
