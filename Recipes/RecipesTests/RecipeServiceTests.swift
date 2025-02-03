import XCTest
@testable import Recipes

final class RecipeServiceTests: XCTestCase {
    
    func testFetchRecipes() async {
        do {
            let recipes = try await RecipeService.shared.fetchRecipes()
            XCTAssertFalse(recipes.isEmpty, "Recipes should not be empty")
        } catch {
            XCTFail("Fetching recipes failed: \(error)")
        }
    }
}
