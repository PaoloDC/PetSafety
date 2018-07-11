//
//  UserController.swift
//  PetSafety
//
//  Created by Lambiase Salvatore on 11/07/18.
//  Copyright © 2018 De Cristofaro Paolo. All rights reserved.
//

import UIKit
import Eureka

class UserController: FormViewController {


    
    override func viewDidLoad() {
        super.viewDidLoad()
        form +++ Section(){ section in
            section.header = HeaderFooterView<UserImageView>(.class)
        }
        
        form +++ Section()
            <<< ButtonRow("My Pets") {
                $0.title = $0.tag
                $0.presentationMode = .segueName(segueName: "petListSegue", onDismiss: nil)
        }
        form +++ Section("General informations")
            
            <<< NameRow(){ name in
                name.title = "Name"
                name.tag = "Name"
                name.placeholder = "Insert your name"
            }
            <<< NameRow(){ surname in
                surname.title = "Surname"
                surname.tag = "Surname"
                surname.placeholder = "Insert your surname"
            }
        
        form +++ Section("Contact informations")
            <<< EmailRow(){  email in
                email.title = "Email Address"
                email.placeholder = "Insert your email address"
            }
            <<< PhoneRow(){ phone in
                phone.title = "Phone Number"
                phone.placeholder = "Insert your phone number"
        }
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    class UserImageView: UIView {
        
        override init(frame: CGRect) {
            super.init(frame: frame)
            let imageView = UIImageView(image: UIImage(named: "CatMan"))
            imageView.frame = CGRect(x: 0, y: 20, width: 250, height: 250)
            self.frame = CGRect(x: 0, y: 20, width: 250, height: 250)
            imageView.contentMode = .scaleAspectFit
            imageView.autoresizingMask = .flexibleWidth
            addSubview(imageView)
        }
        
        required init?(coder aDecoder: NSCoder) {
            fatalError("init(coder:) has not been implemented")
        }
    }

}
