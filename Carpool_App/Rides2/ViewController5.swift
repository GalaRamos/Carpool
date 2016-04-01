//
//  ViewController2.swift
//  Rides
//
//  Created by Alex Elizondo on 2/20/16.
//  Copyright © 2016 Alex Elizondo. All rights reserved.
//

import Foundation
import UIKit

class ViewController5: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet var Pin: UITextField!
    @IBAction func Switch(sender: UISwitch) {
        var Code = "", Code2 = ""
        var Rand = Int(arc4random_uniform(10) + 1);
        var Rand2 = Int(arc4random_uniform(10) + 1);
        for var x = 0; x < 4; x++ {
            Rand = Int(arc4random_uniform(10) + 1)
            Code += String(Rand)
        }
        for var x = 0; x < 3; x++ {
            Rand2 = Int(arc4random_uniform(10) + 1)
            Code2 += String(Rand2)
        }
        
        Pin.text = Code + "CR" + Code2 + "PL"
        
    }
}

