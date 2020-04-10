import Foundation
import Files
import Publish
import Plot

typealias Link = (name: String, url: String)
typealias AppStoreLink = String

// This type acts as the configuration for your website.
struct AppLandingPage: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case index
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://beantastic.app")!
    var name = "Beantastic App"
    var description = "Save, seach and find coffee beans you love."
    var language: Language { .english }
    var imagePath: Path? { nil }
}

extension Website {
    var appStoreLink: AppStoreLink? {
        nil //"https://itunes.apple.com/xyz"
    }

    var credits: Link {
        ("Julian Kahnert", "https://github.com/julianKahnert/")
    }
    
    var footerLinks: [Link] {
        [(name: "Home", url: "/"),
        (name: "Support", url: "mailto:support@beantastic.app"),
        (name: "About", url: "/about")]
    }
}

// This will generate your website using the built-in Foundation theme:
try AppLandingPage().publish(withTheme: .landingpage)
