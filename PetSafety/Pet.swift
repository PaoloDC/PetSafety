//
//  Pet.swift
//  PetSafety
//
//  Created by De Cristofaro Paolo on 10/07/18.
//  Copyright © 2018 De Cristofaro Paolo. All rights reserved.
//

import UIKit

class Pet: NSObject {
    var name: String
    var race: String
    
    init(name: String, race: String) {
        self.name = name
        self.race = race
    }
}
 
