import Foundation

class RecipeService {
    static let shared = RecipeService()
    private let apiURL = "https://d3jbb8n5wk0qxi.cloudfront.net/recipes.json"
    
    func fetchRecipes() async throws -> [Recipe] {
        guard let url = URL(string: apiURL) else { throw URLError(.badURL) }
        
        let (data, response) = try await URLSession.shared.data(from: url)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw URLError(.badServerResponse)
        }
        
        do {
            let decodedData = try JSONDecoder().decode(RecipeResponse.self, from: data)
            return decodedData.recipes
        } catch {
            throw error
        }
    }
}
