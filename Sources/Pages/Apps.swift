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

    @Environment(\.articles) var articles

    var body: some HTML {
        Group {
            Text("Apps & Projects")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("I'd love to talk about a job you need done!")

            Text("Apps:")
                .font(.title1)
                .padding(.top, .large)

            Grid {
                for content in articles.typed("apps") {
                    ArticlePreview(for: content)
                        .width(2)
                        .margin(.bottom)
                }
            }
        }
        .frame(width: .percent(90%))
    }
}
