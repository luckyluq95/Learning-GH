//
//  RecipeDetailView.swift
//  Recipe List App
//
//  Created by luq on 11/6/21.
//

import SwiftUI

struct RecipeDetailView: View {
    
    //decare a property, not gonna set it to a particuar instance right now
    var recipe:Recipe
    
    var body: some View {
        
        ScrollView {
            
            VStack(alignment: .leading) {
                //MARK: Image
                Image(recipe.image)
                    .resizable()
                    .scaledToFit()

                //MARK: Ingredients
                VStack(alignment: .leading) {
                    Text("Ingredients")
                        .font(.headline)
                    
                    ForEach (recipe.ingredients) {item in
                        Text(item.name)
                    }
                }
                
                
                //MARK: Directions
                
                VStack(alignment: .leading) {
                    Text("Directions")
                        .font(.headline)
                        .padding(.bottom, 5)
                    
                    ForEach (0..<recipe.directions.count, id: \.self) {index in
                        Text(String(index+1) + " " + recipe.directions[index])
                            .padding(.bottom,5)
                    }
                    
                }
            }
                   }
        .navigationBarTitle(recipe.name)
    }
}

struct RecipeDetailView_Previews: PreviewProvider {
    static var previews: some View {
        
        let model = RecipeModel()
        
        
        RecipeDetailView(recipe: model.recipes[0])
    }
}
