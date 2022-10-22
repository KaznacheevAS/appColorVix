//
//  SettingRGBViewController.swift
//  appColorVix
//
//  Created by Anton Kaznacheev on 19.10.2022.
//

import UIKit

class SettingRGBViewController: UIViewController {

    @IBOutlet weak var numberRedLabel: UILabel!
    @IBOutlet weak var numberGreenLabel: UILabel!
    @IBOutlet weak var numberBlueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var poleRedTF: UITextField!
    @IBOutlet weak var poleGreenTF: UITextField!
    @IBOutlet weak var poleBlueTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: Dismiss
    @IBAction func didDoneButton(_ sender: Any) {
        dismiss(animated: true)
    }
    
}
