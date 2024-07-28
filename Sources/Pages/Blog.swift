//
//  File.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/25/24.
//

import Foundation
import Ignite

struct Blog: StaticPage {
    var title = "Blog"
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Group {
            Text("Blog")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("This is a bunch of text telling you what I do.")
                .font(.lead)

            
            Section {
                for content in context.allContent {
                    let foo = ContentPreview(for: content)
                    
                    ContentPreview(for: content)
                        .margin(.top, 20)
                }
            }
            .columns(2)

        }
        .frame(width: "90%")
        
    }

}

