import Foundation
import Ignite

@main
struct IgniteWebsite {
    static func main() async {
        var site = ExampleSite()

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
    var url = URL(string: "https://www.perlguy.net")!
    var builtInIconsEnabled: BootstrapOptions = .localBootstrap

    var author = "Brent D. Michalski"

    var homePage = Home()
    var layout = MainLayout()
    var tagPage = Tags()

    // Disable dark mode - use light theme only
    var darkTheme: (any Theme)? = nil

    @ElementBuilder<any StaticPage> var staticPages: [any StaticPage] {
        Apps()
        Contact()
        Examples()
        Services()
        GEOIntAppStore()
        Recommendations()
        AppTemplate()
        Resumes()
    }

    // ArticlePage required to render markdown content (apps, etc.)
    @ElementBuilder<any ArticlePage> var articlePages: [any ArticlePage] {
        BlogPost()
    }
}
