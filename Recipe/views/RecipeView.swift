import SwiftUI

typealias LinkRecipe = NavigationLink<RecipeItemView, Text>

struct RecipeView: View {
    
    @StateObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    

    
    var body: some View {
        NavigationView {
            List(self.recipeViewModel.recipeModels) { recipe in
                NavigationLinkRecipes(recipe)
            }.navigationTitle("Recipes")
        }
    }
    
    private func NavigationLinkRecipes(_ recipe: RecipeModel) -> LinkRecipe {
        NavigationLink(
            destination: {
                Text("Destination: Show Recipe \(recipe.name)")
            },
            label: {
                RecipeItemView(
                    name: recipe.name,
                    caloriesPer100Grams: recipe.caloriesPer100Grams,
                    recipeImage: recipe.recipeImage
                )
            }
        )
    }
}

#Preview {
    RecipeView()
}
