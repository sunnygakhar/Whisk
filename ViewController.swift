//
//  ViewController.swift
//  Whisk
//
//  Created by Arnav Sood on 9/19/15.
//  Copyright © 2015 Silmarillion Technologies. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: Properties    

    @IBOutlet weak var cashTextField: UITextField!
    
    @IBOutlet weak var timeTextField: UITextField!
    
    @IBOutlet weak var currentConfidence: UISlider!
    
    @IBOutlet weak var ImageView: UIImageView!
    
    @IBOutlet weak var SignupButton: UIButton!
    
    @IBOutlet weak var Label3: UILabel!

    
override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    // MARK: UITextFieldDelegate
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
    
    func textFieldDidEndEditing(textField: UITextField) {
    }
    
    
    @IBAction func sliderValChange(sender: AnyObject) {
        Label3.text = String(currentConfidence.value)

    }
    
    @IBAction func WhiskButtonClick(sender: AnyObject) {
    }
    
}

