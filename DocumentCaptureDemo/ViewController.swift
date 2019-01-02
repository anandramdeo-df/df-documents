//
//  ViewController.swift
//  testingTheCameraFramework
//
//  Created by Ranosys_Technologies on 09/10/18.
//  Copyright © 2018 Ranosys_Technologies All rights reserved.
//

import UIKit
import DFDocument

class ViewController: UIViewController {
    
    @IBOutlet weak var captureBackToggle: UISwitch!
    @IBOutlet weak var frontImage: UIImageView!
    @IBOutlet weak var backImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func onClick(_ sender: Any) {
         self.openViewWithConfiguration()
    }
    
    func updateImages(image1: UIImage, image2: UIImage?) {
        frontImage.layer.borderWidth = 1
        frontImage.layer.borderColor = UIColor.black.cgColor
        frontImage.image = image1
        
        if image2 != nil {
            backImage.layer.borderWidth = 1
            backImage.layer.borderColor = UIColor.black.cgColor
            backImage.image = image2
        }
    }
    
    func openViewWithConfiguration() {
        let vc = DFDocument.sharedInstance
        
        // ***
        // Open configured view
        // ***

        vc.backEnable = captureBackToggle.isOn
        
        vc.regularFont = "Marker Felt"
        vc.boldFont = "Marker Felt"
        
        vc.globalBGColor = #colorLiteral(red: 0.9137254902, green: 0.3921568627, blue: 0.3647058824, alpha: 1)
        vc.messagelTextColor = UIColor.black
        vc.titleTextColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        vc.navigationTitleColor = UIColor.white
        vc.navigationBarColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
        vc.titleNavigationFront = "Front"
        vc.titleNavigationBack = "Back"
        vc.guidanceFrontTitleMessage = "Scan Front of Asset"
        vc.guidanceFrontUsageMessage = "Take front photo of your ID by holding your phone parallel to it."
        vc.guidanceBackTitleMessage = "Scan Back of Asset"
        vc.guidanceBackUsageMessage = "Take back photo of your ID by holding your phone parallel to it."
        
        vc.backImageColor = UIColor.white
        
        vc.buttonTitleColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        vc.globalButtonColor = #colorLiteral(red: 0.4039215686, green: 0.7098039216, blue: 0.3647058824, alpha: 1)
        vc.buttonsCornerRadius = 5
        vc.globalButtonBorderColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        vc.globalCancelButtonBorderColor = #colorLiteral(red: 0.0317231603, green: 0.008417122066, blue: 0.003364683827, alpha: 1)
        vc.getCapturedImages(success: { frontImage, backImage  in
            print(frontImage)
            print(backImage)
            
        }, failure: { (error) in
            print(error?.userInfo ?? "Your api token is not valid")
        })
    }
}

