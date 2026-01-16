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
                Text("Contact Me")
                    .font(.title1)
                    .fontWeight(.black)
                    .margin(.top, .large)

                Text("I love iOS development and I am always looking for fun, challenging and interesting projects!")

                List {
                    "LinkedIn: https://www.linkedin.com/in/brent-michalski"
                    "Email: Brent.Michalski@gmail.com"
                    "https://apps.apple.com/us/app/my-shortcuts-for-xcode/id6499236630"
                }
                .listMarkerStyle(.custom("🤓 "))
            }
            .frame(width: .percent(90%))
        }
    }
}
