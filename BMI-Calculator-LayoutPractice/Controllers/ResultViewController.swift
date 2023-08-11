//
//  ResultViewController.swift
//  BMI-Calculator-LayoutPractice
//
//  Created by Emir Türk on 5.07.2023.
//  Copyright © 2023 App Brewery. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    var bmiValue: String?
    var advice: String?
    var color: UIColor?
    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        resultLabel.text = bmiValue
        adviceLabel.text = advice
        view.backgroundColor = color
       
    }
    

    @IBAction func recalculatePressed(_ sender: UIButton) {
        self.dismiss(animated: true)
    }
    

}
