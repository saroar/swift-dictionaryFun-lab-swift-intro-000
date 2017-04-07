//
//  Icecream.swift
//  Icecream
//
//  Created by James Campagno on 9/19/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

class Icecream {
    
    // 1. Create the Dictionary here. The name of the variable should be favoriteFlavorsOfIceCream

    
    var favoriteFlavorsOfIceCream: [String : String] = [
        "Joe" : "Peanut Butter and Chocolate",
        "Tim" : "Natural Vanilla",
        "Sophie" : "Mexican Chocolate",
        "Deniz" : "Natural Vanilla",
        "Tom" : "Mexican Chocolate",
        "Jim" : "Natural Vanilla",
        "Susan" : "Cookies 'N' Cream"
    ]

    // 2.
    
    func names(forFlavor flavor: String) -> [String] {
        var names: [String] = []
        
        for (name, iceCreamflavor) in favoriteFlavorsOfIceCream {
            if iceCreamflavor == flavor {
                names.append(name)
            }
        }
        
        return names
    }
    
    // 3.
    func count(forFlavor flavor: String) -> Int {
        var iceCreamFlavors: [String] = []
        
        for (person, iceCreamflavor) in favoriteFlavorsOfIceCream {
            if iceCreamflavor == flavor {
                iceCreamFlavors.append(person)
            }
        }
        let numberOfPople = iceCreamFlavors.count
        return numberOfPople
    }
    
    // 4.
    func flavor(forPerson person: String) -> String? {
        return favoriteFlavorsOfIceCream[person]
    }
    
    // 5.
    func replace(flavor: String, forPerson person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return true
        } else {
            return false
        }
    }
    
    // 6.
    
    func remove(person: String) -> Bool {
        if favoriteFlavorsOfIceCream[person] != nil {
            favoriteFlavorsOfIceCream[person] = nil
            return true
        } else {
            return false
        }
    }
    
    
    
    // 7.
    
    func numberOfAttendees() -> Int {
        return favoriteFlavorsOfIceCream.keys.count
    }
    
    
    
    // 8.
    
    func add(person: String, withFlavor flavor: String) -> Bool {
        if  favoriteFlavorsOfIceCream[person] == nil {
            favoriteFlavorsOfIceCream[person] = flavor
            return  true
        } else {
            return false
        }
  
    }
    

    
    // 9.
    func attendeeList() -> String {
        var list = ""
        
        let allNames = Array(favoriteFlavorsOfIceCream.keys).sorted()
        
        
        for name in allNames {
            let isLastName = name != allNames.last
            let flavor = favoriteFlavorsOfIceCream[name]!
            
            if isLastName {
                list += "\(name) likes \(flavor)\n"
            } else {
                list += "\(name) likes \(flavor)"
            }
        }
        return list
    }


}
