//
//  ViewController.swift
//  PetSafety
//
//  Created by De Cristofaro Paolo on 10/07/18.
//  Copyright © 2018 De Cristofaro Paolo. All rights reserved.
//

import UIKit
import Eureka

class ViewController: FormViewController {

    var pet: Pet!
    
    override func viewDidLoad() {
        super.viewDidLoad()
            form +++ Section("Informazioni")
                <<< TextRow(){ name in
                    name.title = "Name"
                    name.tag = "Name"
                    name.placeholder = "Insert pet's name"
                    name.value = pet.name
                }
                <<< ActionSheetRow<String>() { type in
                    type.title = "Type"
                    type.selectorTitle = "Peek an pet"
                    type.options = ["Dog","Cat","Rabbit"]
                    type.value = "Dog"    // initially selected
                }
                <<< TextRow(){ race in
                    race.title = "Race"
                    race.placeholder = "Insert pet's race"
                }
                <<< DateRow(){ date in
                    date.title = "Date of birth"
                    date.value = Date(timeIntervalSinceReferenceDate: 0)
                }
                <<< TextRow(){ microchip in
                    microchip.title = "Microchip ID"
                    microchip.placeholder = "Insert pet's microchip ID"
                    }
                <<< TextRow(){ beacon in
                    beacon.title = "Beacon ID"
                    beacon.placeholder = "Insert pet's beacon ID"
                }
        
                
        // Do any additional setup after loading the view, typically from a nib.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        let rowName: TextRow? = form.rowBy(tag: "Name")
        let valueName = rowName?.value
        pet.name = valueName!
        
    }


}

