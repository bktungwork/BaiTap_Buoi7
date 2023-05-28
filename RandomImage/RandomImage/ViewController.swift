//
//  ViewController.swift
//  RandomImage
//
//  Created by Bui Kim Tung on 28/05/2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var randomButton: UIButton!
    
    let imageNames: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    var randomImageName: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        randomImage()
    }
    
    func randomImage() {
        randomImageName = imageNames.randomElement()
        
        guard let randomImageName = randomImageName else {
            return randomImage()
        }
   
        if UIImage(named: randomImageName) == imageView.image {
            randomImage()
        } else {
            imageView.image = UIImage(named: randomImageName)
        }
    }

    @IBAction func onRandom(_ sender: Any) {
        randomImage()
    }
}

