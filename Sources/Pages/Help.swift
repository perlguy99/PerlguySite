//
//  File.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/25/24.
//

import Foundation
import Ignite

struct Help: StaticPage {
    var title = "Help"
    
    func body(context: PublishingContext) -> [BlockElement] {
        Group {
            Text("Help")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Accordion {
                Item("What type of development do you do?", startsOpen: true) {
                    Text(placeholderLength: 100)
                }

                Item("What books have you written?") {
                    Text(placeholderLength: 100)
                }

                Item("What articles have you written?") {
                    Text(placeholderLength: 100)
                }

                Item("Where can I find examples of your work?") {
                    Text(placeholderLength: 100)
                }
            }
            .openMode(.all)
        }
        .frame(width: "90%" )
    }
}

