import SwiftUI
import SwiftData

struct ContentView: View {
    @StateObject private var viewModel = RecipeViewModel()

    var body: some View {
        NavigationView {
            List {
                if viewModel.isLoading {
                    ProgressView("Loading...")
                } else if let errorMessage = viewModel.errorMessage {
                    Text(errorMessage).foregroundColor(.red)
                } else if viewModel.recipes.isEmpty {
                    Text("No recipes available.")
                        .foregroundColor(.gray)
                } else {
                    ForEach(viewModel.recipes) { recipe in
                        RecipeRowView(recipe: recipe)
                    }
                }
            }
            .navigationTitle("Recipes")
            .refreshable {
                Task {
                    await viewModel.loadRecipes()
                }
            }
            .task {
                await viewModel.loadRecipes()
            }
        }
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
