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
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        PSIG.text = "0"
        
        //PSIA.text = String(Float?(PSIG.text)+14.7)
        
        
        

    }


}

