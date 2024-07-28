//
//  Resumes.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/28/24.
//

import Foundation
import Ignite

struct Resumes: StaticPage {
    var title = "Resumes"
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Section {
            Group {}.width(1)
            Group {
                Image("/images/resume_short_brent.pdf", description: "Brent Michalski's Short Resume")
                    .resizable()
            }
            .shadow(radius: 5)
            
            Group {
                Image("/images/resume_long_brent.pdf", description: "Brent Michalski's Long Resume")
                    .resizable()
            }
            .shadow(radius: 5)
            Group {}.width(1)
        }
        .padding(.top, .extraLarge)
        .horizontalAlignment(.center)
        
        Section {
            Group {}.width(1)
            
            Group {
                Text {
                    Link("Download Short Resume", target: "/images/resume_short_brent.pdf")
                        .linkStyle(.button)
                }
                .horizontalAlignment(.center)
            }
            .padding(.top, .extraLarge)

            Group {
                Text {
                    Link("Download Long Resume", target: "/images/resume_long_brent.pdf")
                        .linkStyle(.button)
                    Text(markdown: "<sub>(Only page 1 of long resume is shown here, download it to see the full resume)</sub>")
                        .horizontalAlignment(.center)
                }
                .horizontalAlignment(.center)
            }
            .padding(.top, .extraLarge)


            Group {}.width(1)
        }
    }
}
