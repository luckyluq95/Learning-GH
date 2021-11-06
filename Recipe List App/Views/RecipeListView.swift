//
//  ContentView.swift
//  Recipe List App
//
//  Created by luq on 11/5/21.
//

import SwiftUI

struct RecipeListView: View {
    // this view is listening to the object
    // view is listening to the view model
    
    //Reference View Model
    //create a brand new instance of recipemodel
    //this is observinbg the RecipeModel. if there is a change, it will receive it here and update the UI
    //here we are sending the model as an observed object
    @ObservedObject var model = RecipeModel()
    
    var body: some View {
        
        NavigationView {
            List(model.recipes) {r in
                
                NavigationLink(destination: Text("destination"), label: {
                    HStack(spacing: 20.0) {
                        Image(r.image)
                            .resizable()
                            .scaledToFill()
                            .frame(width: 50, height: 50, alignment: .center)
                            .clipped()
                            .cornerRadius(5)
                        Text(r.name)
                    }
                    )
                
                    }
                               
                               )

                
            }
            .navigationBarTitle("All Recipes")
        }
 
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeListView()
    }
}