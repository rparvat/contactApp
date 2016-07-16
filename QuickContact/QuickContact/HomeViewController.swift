//
//  ViewController.swift
//  QuickContact
//
//  Created by Nikhil Punwaney, Rajeev Parvathala, Smriti Pramanick, Sravya Bhamidipati on 7/15/16.
//  Copyright © 2016 Mirchi. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    @IBOutlet weak var displayedName: UILabel!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewDidAppear(animated: Bool) {
        if let userName = defaults.stringForKey("userName") {
            displayedName?.text = userName
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func PhoneClicked(sender: AnyObject) {
        defaults.setObject(true, forKey: "phoneOn")
    }
    
}

