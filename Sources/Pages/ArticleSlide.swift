//
//  ArticleSlide.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/28/24.
//

import Foundation
import Ignite

@MainActor
struct ArticleSlide {
    let background: String
    let slideTitle: String
    let linkNameText: String
    let linkTargetText: String

    func renderSlide() -> Slide {
        return Slide(background: background) {
            Text(slideTitle)
                .font(.title1)
                .fontWeight(.bold)
                .foregroundStyle(.white)
                .margin(.bottom, .medium)

            Text("Read my article on Medium")
                .font(.lead)
                .foregroundStyle(.white)
                .margin(.bottom, .small)

            Link(linkNameText, target: linkTargetText)
                .linkStyle(.button)
                .buttonSize(.large)
                .role(.warning)
        }
    }
}
