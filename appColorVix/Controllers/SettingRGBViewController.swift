//
//  SettingRGBViewController.swift
//  appColorVix
//
//  Created by Anton Kaznacheev on 19.10.2022.
//

import UIKit

class SettingRGBViewController: UIViewController {

    @IBOutlet weak var backgraundView: UIView!
    
    @IBOutlet weak var numberRedLabel: UILabel!
    @IBOutlet weak var numberGreenLabel: UILabel!
    @IBOutlet weak var numberBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var poleRedTF: UITextField!
    @IBOutlet weak var poleGreenTF: UITextField!
    @IBOutlet weak var poleBlueTF: UITextField!
    
    private var minSlider = CGFloat(0.0)
    private var maxSlider = CGFloat(1.0)
    private let valueNumber = 1
    
    var delegate: ColorSettingRGBViewControllerDelegate?
    var color: UIColor!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        didSlider()
    }

    @IBAction func didSlider() {
        poleRedTF.text = stringSliders(valueNeo: redSlider)
        poleBlueTF.text = stringSliders(valueNeo: blueSlider)
        poleGreenTF.text = stringSliders(valueNeo: greenSlider)
        
        numberRedLabel.text = stringSliders(valueNeo: redSlider)
        numberBlueLabel.text = stringSliders(valueNeo: blueSlider)
        numberGreenLabel.text = stringSliders(valueNeo: greenSlider)
        
        backgraundView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value),
            green: CGFloat(greenSlider.value),
            blue: CGFloat(blueSlider.value),
            alpha: 1)
    }
    
    // MARK: Dismiss
    @IBAction private func didDoneButton(_ sender: Any) {
        delegate?.colorUI(backgraundView.backgroundColor ?? .white)
        dismiss(animated: true)
    }
}

// MARK: Extension
extension SettingRGBViewController {
    private func stringSliders(valueNeo data: UISlider) -> String{
        String(format: "%.2f", data.value)
    }
    
}
