//
//  ViewController.swift
//  converter
//
//  Created by Finlay MacGregor on 9/24/20.
//  Copyright © 2020 Finlay MacGregor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var cTextfield: UITextField!
    @IBOutlet weak var cLabel: UILabel!
    
    @IBOutlet weak var fTextfield: UITextField!
    @IBOutlet weak var fLabel: UILabel!
    
    var fConverted: Double?
    var cConverted: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickTempConvert(_ sender: Any) {
        
        if let fToConvert = Double(fTextfield.text!){
            cConverted = ((fToConvert - 32) * (5.0/9.0))
            cLabel.text = String(Int(fToConvert)) + " F = " + String(Int(cConverted!)) + " C"
            fTextfield.text = ""
        }
        
        if let cToConvert = Double(cTextfield.text!){
            fConverted = ((cToConvert * 9.0/5) + 32)
            fLabel.text = (String(Int(cToConvert)) + " C = " + String(Int(fConverted!)) + " F")
            cTextfield.text = ""
        }
    }
    
    @IBAction func clickReset(_ sender: Any) {
        fLabel.text = " F"
        cLabel.text = " C"
        
    }
    

}


/*
  to get F: (0°C × 9/5) + 32 = 32°F
 to get C:  (32°F − 32) × 5/9 = 0°C
 
 guard let numberToAdd = Int(addTextfield.text!) else {
    print("DÅLIG INMATNING")
    return // to throw is short for throw an error
}

if(thesum == nil) // this has to happen before you promise thesum!
{
    thesum = 0
}
thesum = thesum! + numberToAdd // this is a variable that exists outside of the
paintLayout()
*/
