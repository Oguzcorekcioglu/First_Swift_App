//
//  ViewController.swift
//  superCool
//
//  Created by Oğuz Çörekçioğlu on 22.03.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var coolLogo: UIImageView!
    @IBOutlet weak var coolBg: UIImageView!
    @IBOutlet weak var unCoolButton: UIButton!
//    IBOutlet görünümü ayarlıyor diyebiliriz.
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    @IBAction func makeMeNotSoUncool(_ sender: Any) {
        coolLogo.isHidden = false
        coolBg.isHidden = false
        unCoolButton.isHidden = true
        
    }
    

}

