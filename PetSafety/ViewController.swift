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
        form +++ Section(){ section in
            section.header = HeaderFooterView<PetImageView>(.class)
        }

            form +++ Section("Informations")
                <<< TextRow(){ name in
                    name.title = "Name"
                    name.tag = "Name"
                    name.placeholder = "Insert pet's name"
                    name.value = pet.name
                }
                <<< ActionSheetRow<String>() { type in
                    type.title = "Type"
                    type.tag = "Type"
                    type.selectorTitle = "Peek an pet"
                    type.options = ["Dog","Cat","Rabbit"]
                    if(pet.type == "") {
                        type.value = "Dog"    // initially selected
                    } else {
                        type.value = pet.type
                    }
                }
                <<< TextRow(){ race in
                    race.title = "Race"
                    race.tag = "Race"
                    race.placeholder = "Insert pet's race"
                    race.value = pet.race
                }
                <<< DateRow(){ date in
                    date.title = "Date of birth"
                    date.tag = "Date of birth"
                    date.value = pet.birthDate
                }
                <<< TextRow(){ microchip in
                    microchip.title = "Microchip ID"
                    microchip.tag = "Microchip ID"
                    microchip.placeholder = "Insert pet's microchip ID"
                    microchip.value = pet.microchipID
                    }
                <<< TextRow(){ beacon in
                    beacon.title = "Beacon ID"
                    beacon.tag = "Beacon ID"
                    beacon.placeholder = "Insert pet's beacon ID"
                    beacon.value = pet.beaconUUID
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
        pet.name = valueName ?? "No name"
        
        let rowType: ActionSheetRow<String>! = form.rowBy(tag: "Type")
        let valueType = rowType?.value
        pet.type = valueType ?? "Dog"
        
        let rowRace: TextRow? = form.rowBy(tag: "Race")
        let valueRace = rowRace?.value
        pet.race = valueRace ?? ""
        
        let rowBirthDate: DateRow? = form.rowBy(tag: "Date of birth")
        let valueBirthDate = rowBirthDate?.value
        pet.birthDate = valueBirthDate ?? Date()
        
        let rowMicrochipID: TextRow? = form.rowBy(tag: "Microchip ID")
        let valueMicrochipID = rowMicrochipID?.value
        pet.microchipID = valueMicrochipID ?? ""
        
        let rowBeaconID: TextRow? = form.rowBy(tag: "Beacon ID")
        let valueBeaconID = rowBeaconID?.value
        pet.beaconUUID = valueBeaconID ?? ""
        
    }
    
    class PetImageView: UIView {
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            let imageView = UIImageView(image: UIImage(named: "CatMan"))
            imageView.frame = CGRect(x: 0, y: 20, width: 320, height: 250)
            self.frame = CGRect(x: 0, y: 0, width: 320, height: 275)
            imageView.contentMode = .scaleAspectFit
            imageView.autoresizingMask = .flexibleWidth
            addSubview(imageView)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }


}

