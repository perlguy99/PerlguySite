//
//  GEOIntAppStore.swift
//  IgniteStarter
//
//  Created by Brent Michalski on 7/27/24.
//

import Foundation
import Ignite

struct GEOIntAppStore: StaticPage {
    var title = "GEOIntAppStore"
    
    func body(context: PublishingContext) -> [BlockElement] {
        
        Group {
            Card(imageName: "/images/projects/geoint_icon.png") {
                Text("Technologies Used")
                    .font(.lead)
            } header: {
                Text("Technologies Used")
                    .font(.title3)
                
            }
            .cardStyle(.bordered)
            .role(.light)
            .frame(maxWidth: "20%")
        }
            
         
        Group {
            
            Card {
                Image("/images/projects/geoint_header.png", description: "GEOINT App Store Header")
                Include("geoint.html")
                
                Divider()
                
                Include("geoint_top.html")

                Section {
                    Image("/images/projects/gas_iphone_01.png", description: "GEOINT App Store Image 1")
                        .resizable()
                        .shadow(radius: 5)
                    
                    Image("/images/projects/gas_iphone_02.png", description: "GEOINT App Store Image 2")
                        .resizable()
                        .shadow(radius: 5)
                }
                .padding(.top, .large)
                .padding(.bottom, .large)

                Include("geoint_bottom.html")
                
                Spacer()
                
            }
            .frame(maxWidth: "60%")
            
            
        }
    }
}
