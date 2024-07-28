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
            
            Text("Projects:")
                .font(.title1)
            List {
                "One"
                "Two"
                "Three"
            }
            
            List {
                "Address: 1805 Jessica Hills Court, Washington MO 63090"
                "Phone: 636-373-1015"
                "Email: Brent.Michalski@gmail.com"
            }
            .listStyle(.custom("🤓 "))

            Text("Washington Riverfront")
                .font(.title2)
            
            Include("map.html")

        }
        .frame(width: "90%" )
        
    }
}
