//
//  RecipeTabVIew.swift
//  Recipe List App
//
//  Created by luq on 11/7/21.
//

import SwiftUI

struct RecipeTabView: View {
    var body: some View {
        
        TabView {
            
            RecipeFeaturedView()
                .tabItem {
                    VStack {
                        Image(systemName: "star.fill")
                        Text("Featured")
                    }
                }
            RecipeListView()
                .tabItem {
                    VStack {
                        Image(systemName: "list.bullet")
                        Text("List")
                    }
                }
        }
        .environmentObject(RecipeModel())
    }
}

struct RecipeTabVIew_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTabView()
    }
}
