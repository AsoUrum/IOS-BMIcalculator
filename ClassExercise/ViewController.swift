//
//  ViewController.swift
//  ClassExercise
//
//  Created by Urum Bone Aso on 2021-09-17.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    @IBOutlet weak var txtPrice1: UITextField!
    
    @IBOutlet weak var txtPrice2: UITextField!
    
    @IBOutlet weak var lblResult: UILabel!
    
    
    
    @IBAction func btnCalculateOnTouch(_ sender: Any) {
        
        
        
        
        
        guard let price1 : Double = Double(txtPrice1.text!), let price2: Double = Double(txtPrice2.text!) else {
            
            Toast.ok(view: self, title: "warning", message: "something is wrong")
            return
                
        }
        
            
        let totalPrice : Double   = price1 + price2
        
        lblResult.text =  String(format: "%.2f", totalPrice)
        lblResult.isHidden = false
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
        
        lblResult.isHidden = true
    }


}

