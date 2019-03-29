//
//  ViewController.swift
//  ElementQuiz
//
//  Created by keikokakumori on 2019/03/27.
//  Copyright © 2019 keiko. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        updateElement()
    }

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var answerLabel: UILabel!

    @IBAction func gotoNextElement(_ sender: Any) {
        currentElementIndex += 1
        if currentElementIndex >= elementList.count {
            currentElementIndex = 0
        }
        updateElement()
    }
    @IBAction func showAnswer(_ sender: Any) {
        answerLabel.text = elementList[currentElementIndex]
    }
    
    let elementList = ["Carbon","Gold","Chlorine","Sodium"]
    
    var currentElementIndex = 0
    
    func updateElement() {
        answerLabel.text = "?"
        let elementName = elementList[currentElementIndex]
        let image = UIImage(named: elementName)
        imageView.image = image
    }
}

