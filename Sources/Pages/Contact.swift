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
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Card {
            
            Group {
                Text("Contact Me")
                    .font(.title1)
                    .fontWeight(.black)
                    .margin(.top, .large)
                
                Text("I love iOS development and I am always looking for fun, challenging and interesting projects!")
                
                List {
                    "LinkedIn: https://www.linkedin.com/in/brent-michalski"
                    "Email: Brent.Michalski@gmail.com"
                }
                .listStyle(.custom("🤓 "))
            }
            .frame(width: "90%" )
        }
        
    }
}

