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
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Group {
            Text("Recommendations from LinkedIn")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            if let reviews = context.decode(resource: "reviews.json", as: [CustomerReview].self) {
                Section {
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
        .frame(width: "90%")
        
    }
}
