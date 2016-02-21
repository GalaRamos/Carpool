//
//  ViewController2.swift
//  Rides
//
//  Created by Alex Elizondo on 2/20/16.
//  Copyright © 2016 Alex Elizondo. All rights reserved.
//

import Foundation
import UIKit

class ViewController2: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var Pin: UITextField!
    @IBAction func Addpin(sender: UIButton) {
        Pin.text = "2A974M3D"
    }
    
}

