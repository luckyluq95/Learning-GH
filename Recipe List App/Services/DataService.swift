//
//  DataService.swift
//  Recipe List App
//
//  Created by luq on 11/5/21.
//

import Foundation

class DataService {
    
    static func getLocalData () -> [Recipe] {
        
        let pathString = Bundle.main.path(forResource: "recipes", ofType: "json")
        
        //check is pathstring is not nil, otherwise return [Recipe]() because whats the point in continuing
        guard pathString != nil else {
            return [Recipe]() //instanct of sttucture, wheret he structure is list of recipes instances
        }
        
        let url = URL(fileURLWithPath: pathString!)
        
        do {
            let data = try Data(contentsOf: url)
            
            let decoder = JSONDecoder()
            
            do {
                
                //converting your JSON data into instances of your model (structure or class)
                //Recipe class -> we want to turn the JSON data into this class
                // .self means that youre "trying to pass in the data type"
                //model strucutre and class should conform to DECODABLE
                //this line is going to turn the data into an array or REcipe Instances and return that
                //because we're passing a type in as a parameter, we use .self
                let recipeData = try decoder.decode([Recipe].self, from: data)
                
                for r in recipeData {
                    r.id = UUID()
                    
                    //add unique id to each ingredient
                    for i in r.ingredients {
                        i.id = UUID()
                        
                    }
                }
                
                return recipeData //this is what we want to return
            }
            catch {
                print(error)
            }
        }
        catch {
            print(error)
        }
        
        return [Recipe]()
    }
}
