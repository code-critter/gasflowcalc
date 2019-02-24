//
//  ViewController.swift
//  gasflowcalc
//
//  Created by W N Barker on 2/23/19.
//  Copyright © 2019 W N Barker. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var PSIG: UITextField!
    @IBOutlet weak var PSIA: UITextField!
    @IBOutlet weak var volume: UITextField!
    @IBOutlet weak var moles: UITextField!
    @IBOutlet weak var molwt: UITextField!
    @IBOutlet weak var mass: UITextField!
    @IBOutlet weak var tempR: UITextField!
    @IBOutlet weak var tempF: UITextField!
    @IBOutlet weak var findLabel: UILabel!
    
    @IBOutlet weak var segcontrol: UISegmentedControl!
    
    
    
    
    @IBAction func segcontrolvaluechanged(_ sender: Any) {
        switch segcontrol.selectedSegmentIndex
        {
        case 0:
            findLabel.text = "Find Pressure"
        case 1:
            findLabel.text = "Find Volume"
        case 2:
            findLabel.text = "Find Moles"
        case 3:
            findLabel.text = "Find Temperature"
        default:
            break
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        findLabel.text = "Find Pressure"
        
        PSIG.text = "0"
        
        //PSIA.text = String(Float?(PSIG.text)+14.7)
        
        
        

    }


}

