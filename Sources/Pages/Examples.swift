//
//  File.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/25/24.
//

import Foundation
import Ignite

struct Examples: StaticPage {
    var title = "Examples"

    var body: some HTML {
        Group {
            Text("Hello world!")
                .font(.title1)
        }
    }
}
