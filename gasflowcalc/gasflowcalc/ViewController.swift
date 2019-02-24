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
    
    // Main calculation variables
    var P:Double = 0   // pressure psia
    var PG:Double = 0  // pressure psig
    var V:Double = 0   // volume cubic feet
    var N:Double = 0   // lb-moles
    var MW:Double = 0  // molecular weight lbs/lb-mol
    var M:Double = 0   // mass lbs
    var T:Double = 0   // temperature Rakine
    var TF:Double = 0  // temperature F
    let R = 10.73      // universal gas constant
    
    @IBAction func segcontrolvaluechanged(_ sender: Any) {
        switch segcontrol.selectedSegmentIndex {
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
    
    func updateValues(){
        
        PSIG.text = String(PG)
        PSIA.text = String(P)
        volume.text = String(V)
        moles.text = String(N)
        molwt.text = String(MW)
        mass.text = String(M)
        tempR.text = String(T)
        tempF.text = String(T-459.67)
        
    }
    
    func getValues(){
        
        PG = Double(PSIG.text)
        P = Double(PSIA.text)
        V = Double(volume.text)
        N = Double(moles.text)
        MW = Double(molwt.text)
        M = Double(mass.text)
        T = Double(tempR.text)
        TF = Double(tempF.text)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        findLabel.text = "Find Pressure"
        
        PSIG.text = "0"
        
        //PSIA.text = String(Float?(PSIG.text)+14.7)
        
        P = 14.7
        T = 60.0 + 459.67
        N = 1.0
        V = (N*R*T)/P
        MW = 28
        M = N * MW
        
        self.updateValues()
        
    }
    
    func findP() {
        
        
    }
    
    func findV() {
        
    }
    
    func findM() {
        
    }
    
    func findT() {
        
    
    }
    
    func runCalc() {
        
    }


}

