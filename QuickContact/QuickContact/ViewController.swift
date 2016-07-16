//
//  ViewController.swift
//  QuickContact
//
//  Created by Nikhil Punwaney, Rajeev Parvathala, Smriti Pramanick, Sravya Bhamidipati on 7/15/16.
//  Copyright © 2016 Mirchi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var name: UITextField!
    @IBOutlet weak var phoneNumber: UITextField!
    @IBOutlet weak var email: UITextField!
    @IBOutlet weak var address: UITextField!
    @IBOutlet weak var facebook: UITextField!
    @IBOutlet weak var snapchat: UITextField!
    @IBOutlet weak var instagram: UITextField!
    @IBOutlet weak var linkedin: UITextField!
    @IBOutlet weak var twitter: UITextField!
    @IBOutlet weak var venmo: UITextField!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Looks for single or multiple taps to dismiss keyboard.
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.dismissKeyboard))
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func SaveProfile(sender: AnyObject) {
        defaults.setObject(name?.text, forKey: "userName")
        defaults.setObject(phoneNumber?.text, forKey: "userPhoneNumber")
        defaults.setObject(email?.text, forKey: "userEmail")
        defaults.setObject(address?.text, forKey: "userAddress")
        defaults.setObject(facebook?.text, forKey: "userFacebook")
        defaults.setObject(snapchat?.text, forKey: "userSnapchat")
        defaults.setObject(instagram?.text, forKey: "userInstagram")
        defaults.setObject(linkedin?.text, forKey: "userLinkedin")
        defaults.setObject(twitter?.text, forKey: "userTwitter")
        defaults.setObject(venmo?.text, forKey: "userVenmo")
    }
}

