//
//  BlogPost.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/26/24.
//

import Foundation
import Ignite

struct BlogPost: ContentPage {
    func body(content: Content, context: PublishingContext) async -> [any BlockElement] {
        
        Group {
            Text(content.title)
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)
            
            Text("\(content.estimatedWordCount) words; \(content.estimatedReadingMinutes) minutes to read.")
            
            content.body
        }
        .frame(width: "90%")
    }
}
