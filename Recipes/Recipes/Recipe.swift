import Foundation

struct Recipe: Identifiable, Codable {
    let cuisine: String
    let name: String
    let photoURLLarge: String?
    let photoURLSmall: String?
    let uuid: String
    let sourceURL: String?
    let youtubeURL: String?

    var id: String { uuid }

    enum CodingKeys: String, CodingKey {
        case cuisine, name, uuid, sourceURL = "source_url", youtubeURL = "youtube_url"
        case photoURLLarge = "photo_url_large"
        case photoURLSmall = "photo_url_small"
    }
}

struct RecipeResponse: Codable {
    let recipes: [Recipe]
}
