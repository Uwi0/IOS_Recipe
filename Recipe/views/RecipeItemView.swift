import SwiftUI

struct RecipeItemView: View {
    
    let name: String
    let caloriesPer100Grams: Int
    let recipeImage: String
    
    let imgDim: CGFloat = 70
    let imgRad: CGFloat = 10
    
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
                .cornerRadius(imgRad)
                .overlay(
                    RoundedRectangle(cornerRadius: imgRad).stroke(.white, lineWidth: 1)
                )
                .shadow(color: .white.opacity(0.7), radius: 10, x: 0, y: 0)
        }
        .padding()
        .background(Color.black.cornerRadius(10))
    }
}

#Preview {
    RecipeItemView(name: "Weci", caloriesPer100Grams: 322, recipeImage: "IMGhummus")
}
