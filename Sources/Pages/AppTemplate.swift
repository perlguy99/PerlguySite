//
//  AppTemplate.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/28/24.
//

import Foundation
import Ignite

struct AppTemplate: StaticPage {
    var title = "AppTemplate"
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Section {
            Image("/images/projects/geoint_icon.png", description: "GEOINT App Store Icon")
                .resizable()
                .width(1)
//                .frame(maxWidth: "10%")
            
            Text("GEOINT App Store")
                .background(.aquamarine)
                .font(.title1)
                .horizontalAlignment(.leading)
                .width(11)
        }
        
        Section {
        
            Card {
                Text("1st embedded section")
            }
            .background(.red)
            .width(4)
            
            Card {
                Text("2nd embedded section")
            }
            .background(.green)
            .width(4)

//            Card {
//                Text("3nd embedded section")
//            }
//            .background(.blue)
//            .width(4)

        }
//        .columns(6)
        
        
    }
}


