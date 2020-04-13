//
//  ViewController.swift
//  MultipleEx
//
//  Created by Arianna Charalambous on 4/11/20.
//  Copyright © 2020 Arianna Charalambous. All rights reserved.
//

import UIKit

class Global {
    var nameVar = String()
    var switchVar = String()
    var sliderVar:Int = 0
    var pickerVar = String()
}
let global = Global()

class ViewController: UIViewController {
    
//outlets

    @IBOutlet weak var theName: UILabel!
    
    @IBOutlet weak var theSwitch: UILabel!
    
    @IBOutlet weak var theSlider: UILabel!
    
    @IBOutlet weak var thePicker: UILabel!
    
    @IBOutlet weak var myName: UITextField!
    
//actions
    
    @IBAction func myButton(_ sender: Any) {
        global.nameVar = myName.text!
        theName.text = "Name: " + global.nameVar
        myName.resignFirstResponder()
    }
    
    override func viewWillAppear(_ animated: Bool){
    theSwitch.text = "Switch: \(global.switchVar)"
        theSlider.text = "Slider: \(global.sliderVar)"
        thePicker.text = "Picker: \(global.pickerVar)"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

