import Foundation

@MainActor
class RecipeViewModel: ObservableObject {
    @Published var recipes: [Recipe] = []
    @Published var isLoading = false
    @Published var errorMessage: String?

    func loadRecipes() async {
        isLoading = true
        errorMessage = nil

        do {
            let fetchedRecipes = try await RecipeService.shared.fetchRecipes()
            recipes = fetchedRecipes
        } catch {
            errorMessage = "Failed to load recipes. Please try again."
        }
        
        isLoading = false
    }
}
