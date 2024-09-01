import SwiftUI

struct RecipeView: View {
    
    @StateObject var recipeViewModel: RecipeViewModel = RecipeViewModel()
    
    var body: some View {
        NavigationView {
            List(self.recipeViewModel.recipeModels) { recipe in
                NavigationLinkRecipe(recipe)
            }.navigationTitle("Recipes")
        }
    }
    
    private func NavigationLinkRecipe(
        _ recipe: RecipeModel
    ) -> NavigationLink<RecipeItemView, some View> {
        NavigationLink(
            destination: {
                DetailRecipeView(
                    recipeDetail: recipe.recipe,
                    imageName: recipe.recipeImage,
                    recipeUrl: recipe.recipeURL
                )
                .navigationBarTitle("", displayMode: .inline)
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
