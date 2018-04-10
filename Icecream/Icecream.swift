//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream
    
    var favoriteFlavorsOfIceCream: [String: String] = [
        "Joe": "Peanut Butter and Chocolate",
        "Tim": "Natural Vanilla",
        "Sophie": "Mexican Chocolate",
        "Deniz": "Natural Vanilla",
        "Tom": "Mexican Chocolate",
        "Jim": "Natural Vanilla",
        "Susan": "Cookies 'N' Cream"
    ]
    
    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var listOfNames: [String] = []
        
        for (name, flav) in favoriteFlavorsOfIceCream  {
            if flavor == flav {
                listOfNames.append(name)
            }
        }
        
        return listOfNames
    }
    
    // 3.
    
    func count(forFlavor flavor: String) -> Int {
        var numberOfPeople: Int = 0
        
        for flav in favoriteFlavorsOfIceCream.values {
            if flavor == flav {
                numberOfPeople += 1
            }
        }
        
        return numberOfPeople
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {

        for (name, flav) in favoriteFlavorsOfIceCream {
            if name == person {
                return flav
            }
        }
        
        return nil
    }
    
    // 5.
    func replace(flavor: String, forPerson: String) -> Bool {
        var state = false
        
        for name in favoriteFlavorsOfIceCream.keys {
            if name == forPerson {
                favoriteFlavorsOfIceCream.updateValue(flavor, forKey: forPerson)
                state = true
            } else {
                state = false
            }
        }
        
        return state
    }
    
    // 6.
    func remove(person: String) -> Bool {
        var state = false
        
        for name in favoriteFlavorsOfIceCream.keys {
            if name == person {
                favoriteFlavorsOfIceCream[name] = nil
                state = true
            }
        }
        
        return state
    }
    
    // 7.
    func numberOfAttendees() -> Int {

        return favoriteFlavorsOfIceCream.count
    }
    
    // 8.
    func add(person: String, withFlavor: String) -> Bool {
        var result: Bool = false
        
        for name in favoriteFlavorsOfIceCream.keys {
            if name == person {
                result = false
            } else {
                result = true
                favoriteFlavorsOfIceCream[person] = withFlavor
            }
        }
        
        return result
    }

    // 9.
    func attendeeList() -> String {
        var sentence: String = ""
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        for (index, name) in allNames.enumerated() {
            if index < allNames.count - 1 {
                if let flavor = favoriteFlavorsOfIceCream[name] {
                    sentence += "\(name) likes \(flavor)\n"
                }
            } else {
                if let flavor = favoriteFlavorsOfIceCream[name] {
                    sentence += "\(name) likes \(flavor)"
                }
            }
        }
        
        return sentence
    }
}
