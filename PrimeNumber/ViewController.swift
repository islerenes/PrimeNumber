//
//  ViewController.swift
//  PrimeNumber
//
//  Created by Enes İşler on 29.03.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var NumberTextField: UITextField!
    @IBOutlet weak var ControlLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @IBAction func Button(_ sender: Any) {
        var flag=false
        let values=NumberTextField.text!
        let x : Int! = Int(values)
        if x==2||x==3 {
            ControlLabel.text="Prime number"
        }
        else{
            for i in 2 ... x/2{
                if(x%i==0){
                    flag=true
                }
            }
            if(flag==true){
                ControlLabel.text="Is not prime number"
            }
            else{
                ControlLabel.text="Prime number"
            }
        }
    }
}
