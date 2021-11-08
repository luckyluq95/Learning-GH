//
//  Recipe.swift
//  Recipe List App
//
//  Created by luq on 11/5/21.
//

import Foundation
import SwiftUI


class Recipe: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var featured:Bool
    var image:String
    var description:String
    var prepTime:String
    var cookTime:String
    var totalTime:String
    var servings:Int
    var highlights:[String]
    var ingredients:[Ingredtient]
    var directions:[String]
}


class Ingredtient: Identifiable, Decodable {
    
    var id:UUID?
    var name:String
    var num:Int?
    var den:Int?
    var unit:String?
}
