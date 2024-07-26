import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        let site = ExampleSite()

        do {
            try await site.publish()
        } catch {
            print(error.localizedDescription)
        }
    }
}

struct ExampleSite: Site {    
    var name = "Brent Danger Michalski"
    var titleSuffix = " – My Portfolio Site"
    var url = URL(string: "https://www.example.com")!  // URL("https://www.example.com")
    var builtInIconsEnabled = true

    var author = "Brent D. Michalski"

    var homePage = Home()
    var theme = MyTheme()
    var pageWidth = 12
    
    var pages: [any StaticPage] {
        Apps()
        Blog()
        Contact()
        Examples()
//        Help()
        Services()
        Recommendations()
    }
    
    var layouts: [any ContentPage] {
        BlogPost()
    }
}


