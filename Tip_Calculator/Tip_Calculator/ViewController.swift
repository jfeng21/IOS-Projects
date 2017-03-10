//
//  ViewController.swift
//  Tip_Calculator
//
//  Created by sunshine_Ru on 3/3/17.
//  Copyright © 2017 Junru_Feng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let image = UIImage(named: "cute_fruit.jpg")
    

    @IBOutlet var imageView: UIImageView!
    
    @IBOutlet weak var tipLabel: UILabel!
    
    @IBOutlet weak var totalLabel: UILabel!
    
    @IBOutlet weak var billField: UITextField!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    @IBOutlet weak var splitLabel: UILabel!
    
    @IBOutlet weak var customSplitLabel: UILabel!
 
    @IBOutlet weak var customSplitSlider: UISlider!
   
    override func viewDidLoad() {
        super.viewDidLoad()


        imageView.contentMode = .scaleAspectFill
        imageView.image = image
        view.addSubview(imageView)
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }


    @IBAction func onTap(_ sender: AnyObject) {
       view.endEditing(true)
    }
    
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        let sliderValue = Int(sender.value)
        
        customSplitLabel.text = "\(sliderValue)"
    }
    
    @IBAction func calTip(_ sender: AnyObject) {
       
        let tipPercentages = [0.18, 0.2, 0.25]
        
        let bill = Double(billField.text!) ?? 0
        
        let tip = bill * tipPercentages[tipControl.selectedSegmentIndex]

        let splitValue = Double(customSplitLabel.text!) ?? 1
        
        let total = (bill + tip)/splitValue
        
        tipLabel.text = String(format: "$%.2f",tip)
        totalLabel.text = String(format: "$%.2f",total)
        
       
        
        
        
    }
    
    
}

