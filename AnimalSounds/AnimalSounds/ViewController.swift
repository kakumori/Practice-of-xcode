//
//  ViewController.swift
//  AnimalSounds
//
//  Created by keikokakumori on 2019/03/29.
//  Copyright © 2019 keiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var animalSoudndLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //鳴声の定数プロパティ
    let meowSound = SimpleSound(named: "meow")
    let woofSound = SimpleSound(named: "woof")
    let mooSound = SimpleSound(named: "moo")
    
    //ボタンをタップした時のアクション
    @IBAction func CatButtonTapped(_ sender: Any) {
        animalSoudndLabel.text = "Meow!"
        meowSound.play()
    }
   
    @IBAction func dogButtonTapped(_ sender: Any) {
         animalSoudndLabel.text = "Woof!"
        woofSound.play()
    }
    
    @IBAction func cowButtonTapped(_ sender: Any) {
        animalSoudndLabel.text = "Moo!"
        mooSound.play()
    }

}

