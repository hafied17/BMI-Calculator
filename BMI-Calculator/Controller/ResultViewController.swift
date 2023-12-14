//
//  ResultViewController.swift
//  BMI-Calculator
//
//  Created by Investo Medika Asia on 14/12/23.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var recalculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    var bmiValue: String?
    var advice: String?
    var bgColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = bmiValue
        descLabel.text = advice
        view.backgroundColor = bgColor
        
        
    }
    
    @IBAction func recalculatePressed(_ sender: Any) {
        dismiss(animated: true)
    }
    

}
