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
    
    func body(context: PublishingContext) -> [BlockElement] {
        Text("Hello world!")
            .font(.title1)
    }
}

