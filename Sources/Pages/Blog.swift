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

    @Environment(\.articles) var articles

    var body: some HTML {
        Section {
            Group {
                Text("Blog-ish")
                    .font(.title1)
                    .fontWeight(.black)
                    .margin(.top, .large)

                Text("This is where I may put some blog-ish stuff, but I am sure I'll also post it on LinkedIn.")
                    .font(.lead)

                for content in articles.typed("blog") {
                    ArticlePreview(for: content)
                        .margin(.top, 20)
                        .frame(maxWidth: .percent(40%))
                }
            }
            .frame(width: .percent(90%))
        }
    }
}
