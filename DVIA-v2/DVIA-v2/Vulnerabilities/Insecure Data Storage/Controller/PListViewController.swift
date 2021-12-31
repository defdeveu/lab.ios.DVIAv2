//
//  PListViewController.swift
//  DVIA - Damn Vulnerable iOS App (damnvulnerableiosapp.com)
//  Created by Prateek Gianchandani on 14/12/17.
//  Copyright © 2018 HighAltitudeHacks. All rights reserved.
//  You are free to use this app for commercial or non-commercial purposes
//  You are also allowed to use this in trainings
//  However, if you benefit from this project and want to make a contribution, please consider making a donation to The Juniper Fund (www.thejuniperfund.org/)
//  The Juniper fund is focusing on Nepali workers involved with climbing and expedition support in the high mountains of Nepal. When a high altitude worker has an accident (death or debilitating injury), the impact to the family is huge. The juniper fund provides funds to the affected families and help them set up a sustainable business.
//  For more information,  visit www.thejuniperfund.org
//  Or watch this video https://www.youtube.com/watch?v=HsV6jaA5J2I
//  And this https://www.youtube.com/watch?v=6dHXcoF590E
 


import UIKit

class PListViewController: UIViewController {
        
    var vulnCode: Int = 0
    
    @IBOutlet var usernameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!

    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = "Plist"

    }
    
    @IBAction func saveInPlistFileTapped(_ sender: Any) {
        if usernameTextField.text?.isEmpty ?? true || passwordTextField.text?.isEmpty ?? true {
            DVIAUtilities.showAlert(title: "Error", message: "One or more input fields is empty.", viewController: self)
            return
        }
        func documentsDirectory() -> String {
            let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
            let documentsDirectory = paths.first!
            return documentsDirectory
        }
        
        func dataFilePath ()->String{
            return documentsDirectory().appendingFormat("/userInfo.plist")
        }

        let data = NSMutableDictionary()
        guard let username = usernameTextField.text else { return }
        guard let password = passwordTextField.text else { return }
        data.setValue(username, forKey: "username")
        data.setValue(password, forKey: "password")
        data.write(toFile: dataFilePath(), atomically: true)

        DVIAUtilities.showAlert(title: "", message: "Data saved in Plist", viewController: self)
    }

}
