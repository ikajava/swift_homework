//
//  ViewController.swift
//  homework_1
//
//  Created by Ika on 2/23/16.
//  Copyright © 2016 Ikajava. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segment: UISegmentedControl!
    
    @IBOutlet weak var sliderX: UISlider!
    @IBOutlet weak var sliderY: UISlider!
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var labelX: UILabel!
    @IBOutlet weak var labelY: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        labelX.text = "X = \(sliderX.value)"
        labelY.text = "Y = \(sliderY.value)"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

   
    var a = random()
    
    
    
    
    @IBAction func sliderXAction(sender: UISlider) {
        labelX.text = "X = \(sliderX.value)"
        calculate(Double(sliderX.value), b: Double(sliderY.value))
    }
    
    @IBAction func sliderYAction(sender: UISlider) {
        labelY.text = "Y = \(sliderY.value)"
        calculate(Double(sliderX.value), b: Double(sliderY.value))
    }
    
    @IBAction func segmentAction(sender: UISegmentedControl) {
        calculate(Double(sliderX.value), b: Double(sliderY.value))
    }
    func calculate (a:Double,b:Double) {
        var result = 0.0
        switch segment.selectedSegmentIndex {
        case 0: result = a + b
        case 1: result = a - b
        case 2: result = a * b
        case 3: result = a / b
        default: break
        }
        label.text = "\(result)"
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

