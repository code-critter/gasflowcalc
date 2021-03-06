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
        self.runCalc()
    }
    
    func updateValues(){
        
        PSIG.text = String(P - 14.7)
        PSIA.text = String(P)
        volume.text = String(V)
        moles.text = String(N)
        molwt.text = String(MW)
        mass.text = String(MW * N)
        tempR.text = String(T)
        tempF.text = String(T - 459.67)
        
    }
    
    func getValues(){
        
        PG = Double(PSIG.text!) ?? 0
        P = Double(PSIA.text!) ?? 0
        V = Double(volume.text!) ?? 0
        N = Double(moles.text!) ?? 0
        MW = Double(molwt.text!) ?? 0
        M = Double(mass.text!) ?? 0
        T = Double(tempR.text!) ?? 0
        TF = Double(tempF.text!) ?? 0
        
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
        self.getValues()
        
        if V != 0 {
            
            P = (N*R*T) / V
            self.updateValues()
            
        } else {
            
            PSIA.text = "???"
            PSIG.text = "???"

        }
    }
    
    func findV() {
        self.getValues()
        if P != 0 {
            
            V = (N*R*T) / P
            self.updateValues()
            
        } else {
            
            volume.text = "???"
            
        }
    }
    
    func findN() {
        self.getValues()
        if T != 0 {
            
            N = (P*V)/(R*T)
            self.updateValues()
            
        } else {
            
            moles.text = "???"
            
        }
    }
    
    func findT() {
        self.getValues()
        if N != 0 {
            
            T = (P*V)/(R*N)
            self.updateValues()
            
        } else {
            
            tempR.text = "???"
            tempF.text = "???"
        }
    
    }
    
    func runCalc() {
        switch segcontrol.selectedSegmentIndex {
        case 0:
            //findLabel.text = "Find Pressure"
            self.findP()
        case 1:
            //findLabel.text = "Find Volume"
            self.findV()
        case 2:
            //findLabel.text = "Find Moles"
            self.findN()
        case 3:
            //findLabel.text = "Find Temperature"
            self.findT()
        default:
            break
        }
        
    }


}

