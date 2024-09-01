import SwiftUI

struct RecipeItemView: View {
    
    let name: String
    let caloriesPer100Grams: Int
    let recipeImage: String
    
    let imgDim: CGFloat = 70
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 5) {
                Text(name).foregroundStyle(.orange)
                Text("\(caloriesPer100Grams) calories per 100 grams")
                    .font(.caption)
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
            }
            Spacer()
            Image(recipeImage)
                .resizable()
                .frame(width: imgDim, height: imgDim)
                .cornerRadius(10)
        }
        .padding()
        .background(Color.black.cornerRadius(10))
    }
}

#Preview {
    RecipeItemView(name: "Weci", caloriesPer100Grams: 322, recipeImage: "IMGhummus")
}
