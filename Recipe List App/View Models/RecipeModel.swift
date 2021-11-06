//
//  RecipeModel.swift
//  Recipe List App
//
//  Created by luq on 11/5/21.
//

import Foundation


class RecipeModel: ObservableObject {
    //this object can be listened to
    //so whoeever is observing the RecipeModel Instance will observe the data change and get the updated UI
    @Published var recipes = [Recipe]()
    
    init () {
        
        //self is a keyword that refers to the view model itself
        //makes it clear we are referencing recipes property of the recipemodel class
        //assign the data to the published property
        //because i used static as the function, i can take out the () from DataSrvice, which is a datatype
        self.recipes = DataService.getLocalData()
        
    }
}
