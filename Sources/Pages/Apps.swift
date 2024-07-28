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
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Group {
            Text("Apps & Projects")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Text("I'd love to talk about a job you need done!")

            Text("Apps:")
                .font(.title1)
                .padding(.top, .large)

            Section {
                for content in context.content(ofType: "apps") {
                    ContentPreview(for: content)
                        .width(2)
                        .margin(.bottom)
                }
            }
        }
        .frame(width: "90%" )
    }
}
