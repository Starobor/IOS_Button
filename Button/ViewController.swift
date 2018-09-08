//
//  ViewController.swift
//  Button
//
//  Created by Citizen on 08.09.2018.
//  Copyright © 2018 Citizen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var newButton = UIButton()
    let img1 = UIImage(named: "pancake")
    let img2 = UIImage(named: "tost")
 
    override func viewDidLoad() {
        super.viewDidLoad()
       
        newButton = UIButton(type: .roundedRect)
        newButton.frame = CGRect(x: 110, y: 200, width: 100, height: 100)
        newButton.addTarget(self, action: #selector(buttonIsPressed), for: .touchDown)
        newButton.addTarget(self, action: #selector(buttonIsTapped), for: .touchUpInside)
        
        newButton.setBackgroundImage(img1, for: .normal)
        newButton.setBackgroundImage(img2, for: .highlighted)
        self.view.addSubview(newButton)
        
    }

    @objc func buttonIsPressed(sender: UIButton) {
        print("Button is pressed")
    }
    
    @objc func buttonIsTapped(sender: UIButton) {
        print("Button is taped")
    }
   
}

