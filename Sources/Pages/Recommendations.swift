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
        var date: String
        var title: String
        var relationship: String
        var text: String
        var highlight: String
    }

    var title = "Recommendations"

    @Environment(\.decode) var decode

    var body: some HTML {
        Group {
            Text("Recommendations from LinkedIn")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Text("What colleagues and managers have said about working with me.")
                .font(.lead)
                .foregroundStyle(.secondary)
                .margin(.bottom, .large)

            if let reviews = decode("reviews.json", as: [CustomerReview].self) {
                Grid {
                    for review in reviews {
                        Card {
                            Text {
                                "\"\(review.highlight)\""
                            }
                            .font(.title5)
                            .fontWeight(.semibold)
                            .foregroundStyle(.steelBlue)
                            .margin(.bottom, .medium)

                            Text(markdown: review.text)
                                .font(.body)
                        } footer: {
                            Group {
                                Text(review.name)
                                    .fontWeight(.bold)
                                Text(review.title)
                                    .font(.body)
                                    .foregroundStyle(.secondary)
                                Text(review.relationship)
                                    .font(.small)
                                    .foregroundStyle(.secondary)
                                    .fontWeight(.light)
                            }
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
