//
//  ConverterViewController.swift
//  Conversion Calculator
//
//  Created by Jon Basa on 4/17/20.
//  Copyright © 2020 Jon Basa. All rights reserved.
//

import UIKit

class ConverterViewController: UIViewController {

    let conversions = [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
        Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
        Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
        Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")
        ]
    
    @IBOutlet weak var outputDisplay: UITextField!
    
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func convertChoose(_ sender: UIButton) {
        let alert = UIAlertController(title: nil , message: "Choose Units", preferredStyle: UIAlertController.Style.actionSheet)
        
        alert.addAction(UIAlertAction(title: conversions[0].label, style: .default, handler: {
                (alertAction) -> Void in
                    self.inputDisplay.text = self.conversions[0].inputUnit
                    self.outputDisplay.text = self.conversions[0].outputUnit
        }))
        alert.addAction(UIAlertAction(title: conversions[1].label, style: .default, handler: {
                (alertAction) -> Void in
                    self.inputDisplay.text = self.conversions[1].inputUnit
                    self.outputDisplay.text = self.conversions[1].outputUnit
        }))
        alert.addAction(UIAlertAction(title: conversions[2].label, style: .default, handler: {
                (alertAction) -> Void in
                    self.inputDisplay.text = self.conversions[2].inputUnit
                    self.outputDisplay.text = self.conversions[2].outputUnit
        }))
        alert.addAction(UIAlertAction(title: conversions[3].label, style: .default, handler: {
                (alertAction) -> Void in
                    self.inputDisplay.text = self.conversions[3].inputUnit
                    self.outputDisplay.text = self.conversions[3].outputUnit
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func numberKeys(_ sender: UIButton) {
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //let activeConversion = Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C")
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
