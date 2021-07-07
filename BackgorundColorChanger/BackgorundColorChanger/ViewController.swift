//
//  ViewController.swift
//  BackgorundColorChanger
//
//  Created by Anshul Laddha on 07/07/21.
//

import UIKit

class ViewController: UIViewController {
    
    var isColorChanged: Bool = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.green
    }


    @IBAction func handleColorChange(_ sender: UIButton) {
        
        if self.isColorChanged {
            self.view.backgroundColor = UIColor.red
            self.isColorChanged = false
        } else {
            self.view.backgroundColor = UIColor.blue
            self.isColorChanged = true
        }
        
    }
    
}

