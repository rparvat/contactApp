//
//  ViewController.swift
//  QuickContact
//
//  Created by Nikhil Punwaney, Rajeev Parvathala, Smriti Pramanick, Sravya Bhamidipati on 7/15/16.
//  Copyright © 2016 Mirchi. All rights reserved.
//

import UIKit
import QRCode

class QRCodeGenViewController: UIViewController {
    
    @IBOutlet weak var imageViewSmall1: UIImageView!
    
    let defaults = NSUserDefaults.standardUserDefaults()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        var qrName = "", qrAddress = "", qrEmail = "", qrFacebook = "", qrSnapchat = "", qrInstagram = "", qrLinkedin = "", qrTwitter = "", qrVenmo = "", qrPhone = ""
        if let userName = defaults.stringForKey("userName") {
            qrName = userName
        }
        if let userPhone = defaults.stringForKey("userPhone") {
            qrPhone = userPhone
        }
        if let userEmail = defaults.stringForKey("userEmail") {
            qrEmail = userEmail
        }
        if let userAddress = defaults.stringForKey("userAddress") {
            qrAddress = userAddress
        }
        if let userFacebook = defaults.stringForKey("userFacebook") {
            qrFacebook = userFacebook
        }
        if let userSnapchat = defaults.stringForKey("userSnapchat") {
            qrSnapchat = userSnapchat
        }
        if let userInstagram = defaults.stringForKey("userInstagram") {
            qrInstagram = userInstagram
        }
        if let userLinkedin = defaults.stringForKey("userLinkedin") {
            qrLinkedin = userLinkedin
        }
        if let userTwitter = defaults.stringForKey("userTwitter") {
            qrTwitter = userTwitter
        }
        if let userVenmo = defaults.stringForKey("userVenmo") {
            qrVenmo = userVenmo
        }
        let codeString = "(name)" + qrName + ",(phone)" + qrPhone + ",(email)" + qrEmail + ",(address)" + qrAddress + ",(facebook)" + qrFacebook + ",(snapchat)" + qrSnapchat + ",(instagram)" + qrInstagram + ",(linkedin)" + qrLinkedin + ",(twitter)" + qrTwitter + ",(venmo)" + qrVenmo
        print(codeString)
        imageViewSmall1.image = {
            var qrCode = QRCode(codeString)!
            qrCode.size = self.imageViewSmall1.bounds.size
            qrCode.color = CIColor(rgba: "000")
            qrCode.backgroundColor = CIColor(rgba: "fff")
            return qrCode.image
        }()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}