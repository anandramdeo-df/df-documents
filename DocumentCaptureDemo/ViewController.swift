//
//  ViewController.swift
//  testingTheCameraFramework
//
//  Created by Ranosys_Technologies on 09/10/18.
//  Copyright © 2018 Ranosys_Technologies All rights reserved.
//

import UIKit
import DocumentCapture

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
        if let vc = GuidanceViewController.storyboardInstance() {
            vc.frontNavTitle = "Front Scan"
            vc.frontTitle = "Scan the front"
            vc.frontMessage = "Please Scan the front of the document."
            vc.backEnable = captureBackToggle.isOn
            vc.passImage = { frontImage, backImage in
                
                self.updateImages(image1: frontImage, image2: backImage)
                self.dismiss(animated: true, completion: nil)
            }
            let navVc = UINavigationController(rootViewController: vc)
            present(navVc, animated: true, completion: nil)
        }
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
}

