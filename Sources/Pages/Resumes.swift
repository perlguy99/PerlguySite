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
            Group {}
            Group {
                Text {
                    Link("Download Short Resume", target: "/images/resume_short_brent.pdf")
                }
                .horizontalAlignment(.center)
                Image("/images/resume_short_brent.pdf", description: "Brent Michalski's Short Resume")
            }
            .shadow(radius: 5)
            
            Group {
                Text {
                    Link("Download Long Resume", target: "/images/resume_long_brent.pdf")
                    Text(markdown: "*Only page 1 of long resume is shown here, download it to see the full resume.*")
                }
                .horizontalAlignment(.center)
                Image("/images/resume_long_brent.pdf", description: "Brent Michalski's Long Resume")
            }
            .shadow(radius: 5)
            
            Group {}
        }
        
        .padding(.top, .extraLarge)
        
        Section {
            Group {}
            Text("I'd love to talk about a job you need done!")
            Group {}
            Text {
                Link("Download Long Resume", target: "/images/resume_long_brent.pdf")
                Text(markdown: "*Only page 1 of long resume is shown here, download it to see the full resume.*")
            }
            .horizontalAlignment(.center)


        }.shadow(radius: 5)
        
    }
}
