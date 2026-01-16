//
//  BlogPost.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/26/24.
//

import Foundation
import Ignite

struct BlogPost: ArticlePage {
    var body: some HTML {
        Group {
            Text(article.title)
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("\(article.estimatedWordCount) words; \(article.estimatedReadingMinutes) minutes to read.")

            article.text
        }
        .frame(width: .percent(90%))
    }
}
