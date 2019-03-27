//
//  ViewController.swift
//  Color Mix
//
//  Created by keikokakumori on 2019/03/26.
//  Copyright © 2019 keiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        colorView.layer.borderWidth = 5
        colorView.layer.cornerRadius = 20
        colorView.layer.borderColor = UIColor.black.cgColor
        
        updateColor()
        updateControls()
    }

    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redSwicth: UISwitch!
    @IBOutlet weak var greenSwicth: UISwitch!
    @IBOutlet weak var blueSwicth: UISwitch!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBAction func swichChanged(_ sender: UISwitch) {
        updateColor()
        updateControls()
    }
    
    @IBAction func sliderChanged(_ sender: UISlider) {
        updateColor()
    }
    func updateColor() {
        var red: CGFloat =  0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        if redSwicth.isOn{
            red = CGFloat(redSlider.value)
        }
        if greenSwicth.isOn {
            green = CGFloat(greenSlider.value)
        }
        if blueSwicth.isOn {
            blue = CGFloat(blueSlider.value)
        }
        let color = UIColor(red: red, green: green, blue: blue, alpha: 1)
        colorView.backgroundColor = color
    }
    
    func updateControls() {
        redSlider.isEnabled = redSwicth.isOn
        greenSlider.isEnabled = greenSwicth.isOn
        blueSlider.isEnabled = blueSwicth.isOn
    }
    @IBAction func reset(_ sender: Any) {
        redSlider.value = 1
        greenSlider.value = 1
        blueSlider.value = 1
        
        redSwicth.isOn = false
        greenSwicth.isOn = false
        blueSwicth.isOn = false
        
        updateColor()
        updateControls()
    }
}


