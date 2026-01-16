import Foundation
import Ignite

struct MainLayout: Layout {
    var body: some Document {
        Head()

        Body {
            NavigationBar(logo: Image("/images/header1b_100.png", description: "Brent D. Michalski").frame(width: 200)) {
                Link("Apps", target: Apps())
                Link("Blog", target: Blog())
                Link("Contact", target: Contact())
                Link("Resume", target: Resumes())
                Link("Recommendations", target: Recommendations())
            }
            .navigationBarStyle(.dark)
            .navigationItemAlignment(.trailing)
            .background(.steelBlue)

            content

            IgniteFooter()
        }
    }
}
