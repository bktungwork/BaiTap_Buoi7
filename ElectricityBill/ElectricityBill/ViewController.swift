//
//  ViewController.swift
//  ElectricityBill
//
//  Created by Bui Kim Tung on 28/05/2023.
//

import UIKit

enum Electrict: Float {
    case one = 1.678
    case two = 1.734
    case three = 2.014
    case four = 2.536
    case five = 2.834
    case six = 2.927
}

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var electrictTextField: UITextField!
    @IBOutlet weak var calculateButton: UIButton!
    @IBOutlet weak var resultLabel: UILabel!
    
    var electrictBill: Float = 0.0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()
    }

    func setupUI() {
        label.text = "Nhập số điện:"
        electrictTextField.placeholder = "Nhập ở đây ..."
        electrictTextField.keyboardType = .numberPad
        resultLabel.textAlignment = .center
        resultLabel.text = "0"
        resultLabel.font = UIFont.boldSystemFont(ofSize: 30)
    }

    @IBAction func onCalculateElectrict(_ sender: Any) {
        guard let electrictText = electrictTextField.text, let electrictNumber = Float(electrictText) else {
            return
        }

        if electrictNumber < 0 {
            return
        } else if electrictNumber <= 50 {
            electrictBill = electrictNumber * Electrict.one.rawValue
        } else if electrictNumber <= 100 {
            electrictBill = 50 * Electrict.one.rawValue
            electrictBill += (electrictNumber - 50) * Electrict.two.rawValue
        } else if electrictNumber <= 200 {
            electrictBill = 50 * Electrict.one.rawValue
            electrictBill += 50 * Electrict.two.rawValue
            electrictBill += (electrictNumber - 100) * Electrict.three.rawValue
        } else if electrictNumber <= 300 {
            electrictBill = 50 * Electrict.one.rawValue
            electrictBill += 50 * Electrict.two.rawValue
            electrictBill += 100 * Electrict.three.rawValue
            electrictBill += (electrictNumber - 200) * Electrict.four.rawValue
        } else if electrictNumber <= 400 {
            electrictBill = 50 * Electrict.one.rawValue
            electrictBill += 50 * Electrict.two.rawValue
            electrictBill += 100 * Electrict.three.rawValue
            electrictBill += 100 * Electrict.four.rawValue
            electrictBill += (electrictNumber - 300) * Electrict.five.rawValue
        } else {
            electrictBill = 50 * Electrict.one.rawValue
            electrictBill += 50 * Electrict.two.rawValue
            electrictBill += 100 * Electrict.three.rawValue
            electrictBill += 100 * Electrict.four.rawValue
            electrictBill += 100 * Electrict.five.rawValue
            electrictBill += (electrictNumber - 400) * Electrict.six.rawValue
        }
        
        resultLabel.text = "\(electrictBill)"
    }
}

