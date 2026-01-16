//
//  Recommendations.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/26/24.
//
import Foundation
import Ignite

struct Recommendations: StaticPage {
    struct CustomerReview: Decodable {
        var name: String
        var text: String
    }

    var title = "Recommendations"

    @Environment(\.decode) var decode

    var body: some HTML {
        Group {
            Text("Recommendations from LinkedIn")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            if let reviews = decode("reviews.json", as: [CustomerReview].self) {
                Grid {
                    for review in reviews {
                        Card {
                            review.text
                        } footer: {
                            review.name
                        }
                        .margin(.top, 20)
                    }
                }
                .columns(3)
            }

        }
        .frame(width: .percent(90%))
    }
}
