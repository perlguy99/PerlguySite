import Foundation
import Ignite

struct MyTheme: Theme {
    func render(page: Page, context: PublishingContext) -> HTML {
        HTML {
            Head(for: page, in: context)

            Body {
                let brandImage = Image("/images/header1b_100.png", description: "Brent D. Michalski")
                    .frame(width: 200)
                
                NavigationBar(logo: brandImage) {
                    // Links
                    Link("Apps", target: Apps())
                    Link("Blog", target: Blog())
                    Link("Contact", target: Contact())
                    Link("Examples", target: Examples())
                    Link("Services", target: Services())
                    Link("Recommendations", target: Recommendations())
//                    Link("Help", target: Help())
                }
                .background(.seaGreen)
                .navigationBarStyle(.dark)
                .navigationItemAlignment(.trailing)
                
                page.body

                IgniteFooter()
            }
        }
    }
}
