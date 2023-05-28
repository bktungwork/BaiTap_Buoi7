//
//  ViewController.swift
//  RandomColor
//
//  Created by Bui Kim Tung on 28/05/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var randomButton: UIButton!
    
    let colors: [UIColor] = [UIColor.red, UIColor.green, UIColor.blue, UIColor.orange, UIColor.purple]

    var randomColor: UIColor?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomColor = colors.randomElement()
   
        colorView.backgroundColor = randomColor
    }

    @IBAction func onRandom(_ sender: Any) {
        repeat {
            randomColor = colors.randomElement()
        } while randomColor == colorView.backgroundColor

        colorView.backgroundColor = randomColor
    }
    
}

