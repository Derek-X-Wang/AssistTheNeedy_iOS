//
//  FormViewController.swift
//  AssistTheNeedy
//
//  Created by Xinzhe Wang on 9/28/15.
//  Copyright © 2015 Xinzhe Wang. All rights reserved.
//

import UIKit

class FormViewController: UIViewController {

    @IBOutlet weak var assistanceFor: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var amountNeeded: UITextField!
    @IBOutlet weak var purpose: UITextField!
    @IBOutlet weak var yourName: UITextField!
    @IBOutlet weak var yourEmail: UITextField!
    @IBOutlet weak var yourPhone: UITextField!
    //var allTextFields: Array<UITextField>!
    override func viewDidLoad() {
        super.viewDidLoad()
        //self.allTextFields = [self.firstName, self.lastName, self.email]
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        view.endEditing(true)
        //self.view.
        super.touchesBegan(touches, withEvent: event)
        //log("my message")
        //assistanceFor.endEditing(true)
//        phoneNumber.resignFirstResponder()
//        address.resignFirstResponder()
//        amountNeeded.resignFirstResponder()
//        purpose.resignFirstResponder()
//        yourName.resignFirstResponder()
//        yourEmail.resignFirstResponder()
//        yourPhone.resignFirstResponder()
    }
    
    func log(logMessage: String, functionName: String = __FUNCTION__) {
        print("\(functionName): \(logMessage)")
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
