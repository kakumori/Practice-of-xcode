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
        colorView.backgroundColor = .black
    }

    @IBOutlet weak var colorView: UIView!
    
    @IBAction func swichChanged(_ sender: UISwitch) {
        if sender.isOn {
            colorView.backgroundColor = .red
        } else {
            colorView.backgroundColor = .brown
        }
    }
}

