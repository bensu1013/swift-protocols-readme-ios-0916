//: Playground - noun: a place where people can play

import UIKit



class Person {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    var description: String {
        return "Name: \(jim.name) \nHeight: \(jim.height) \nFavorite Food: \(jim.favoriteFood)"
    }
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

let jim = Person(name: "Jim", height: 64.0, favoriteFood: "Pasta")

print(jim.description)
//Name: Jim
//Height: 64.0
//Favorite Food: Pasta



protocol PrettyDescription {
    
    var description: String { get }
    
}



class Animal: PrettyDescription {
    
    var name: String
    var height: Double
    var favoriteFood: String
    
    var description: String {
        return "\(name) \(height) \(favoriteFood)"
    }
    
    init(name: String, height: Double, favoriteFood: String) {
        self.name = name
        self.height = height
        self.favoriteFood = favoriteFood
    }
    
}

let dog = Animal(name: "Jovi", height: 2.1, favoriteFood: "Chocolate...")
let cat = Animal(name: "Catty Kit", height: 1.9, favoriteFood: "Souls")

let prettyThings: [PrettyDescription] = [dog, cat]






for prettyThing in prettyThings {
    
    print(prettyThing.description)
    
}


