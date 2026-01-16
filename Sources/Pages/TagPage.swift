//
//  TagPage.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/27/24.
//

import Foundation
import Ignite

struct Tags: TagPage {
    var body: some HTML {
        Text(tag.name)
            .font(.title1)

        List {
            for article in tag.articles {
                Link(article)
            }
        }
    }
}
