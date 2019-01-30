//
//  ViewController.swift
//  Kearia_Week3_assignment
//
//  Created by Kearia's macbook on 2019/1/27.
//  Copyright © 2019 Kearia's macbook. All rights reserved.
//

import UIKit

extension ViewController : UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var checkLbl: UILabel!
    
    @IBOutlet weak var accountTxtf: UITextField!
    @IBOutlet weak var passwordTxtf: UITextField!
    @IBOutlet weak var checkTxtf: UITextField!
    
    @IBOutlet weak var pageSC: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        segmentedValueChanged(pageSC)
    }

    @IBAction func segmentedValueChanged(_ sender: UISegmentedControl) {
        if sender.selectedSegmentIndex == 0 {
            checkLbl.textColor = .gray
            checkTxtf.isEnabled = false
            checkTxtf.backgroundColor = .gray
        } else {
            checkLbl.textColor = .black
            checkTxtf.isEnabled = true
            checkTxtf.backgroundColor = .white
        }
    }
    
    
    @IBAction func submitAction(_ sender: UIButton) {
        var title = "Error"
        var message = ""
        
        if pageSC.selectedSegmentIndex == 0 {
            if accountTxtf.text != "appwork_school@gmail.com" || passwordTxtf.text != "1234" {
                message = "Login fail"
            } else {
                title = "Succ"
                message = "Login succeed"
            }
        } else {
            if accountTxtf.text?.count == 0 {
                message = "Account should not be empty"
            } else if passwordTxtf.text?.count == 0 {
                message = "Password should not be empty"
            } else if checkTxtf.text?.count == 0 {
                message = "Check should not be empty"
            } else if passwordTxtf.text != checkTxtf.text {
                message = "Sign fail"
            } else {
                title = "Succ"
                message = "Sign succeed"
            }
        }
        
        
        let alert = UIAlertController.init(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let ok = UIAlertAction.init(title: "OK", style: UIAlertAction.Style.cancel, handler: nil)
        alert.addAction(ok)
        present(alert, animated: true, completion: nil)
    }
}

