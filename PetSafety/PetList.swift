//
//  PetList.swift
//  PetSafety
//
//  Created by Lambiase Salvatore on 10/07/18.
//  Copyright © 2018 De Cristofaro Paolo. All rights reserved.
//

import UIKit

class PetList: NSObject {
    var petArray = [Pet]()
    
    func addPetToList(pet: Pet){
        petArray.append(pet)
    }
    
    func sortPet(index: Int, newIndex: Int){
        let deletedPet: Pet = petArray.remove(at: index)
        
        petArray.insert(deletedPet, at: newIndex)
    }
    
    func removePetFromList(index: Int){
        petArray.remove(at: index)
    }
    
    func addEmptyPet(){
        let emstr = "new pet"
        
        let pet = Pet(name: emstr, race: emstr)
        petArray.append(pet)
    }
}
