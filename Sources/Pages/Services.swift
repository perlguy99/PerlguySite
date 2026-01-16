//
//  File.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/25/24.
//

import Foundation
import Ignite

struct Services: StaticPage {
    var title = "Services"

    var body: some HTML {
        Group {
            Text("Services")
                .font(.title1)
                .fontWeight(.black)
                .margin(.top, .large)

            Table {
                Row {
                    "Foo"
                    "$one"
                    "$two"
                    "$three"
                }
                Row {
                    "Bar"
                    "$10"
                    "$20"
                    "$30"
                }
            }
            header: {
                "Service"
                "Big Dog"
                "Nuke Dog"
                "Fart Dog"
            }
            .tableStyle(.stripedRows)
        }
        .frame(width: .percent(90%))
    }
}
