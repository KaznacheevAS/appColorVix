//
//  BackgroundViewController.swift
//  appColorVix
//
//  Created by Anton Kaznacheev on 19.10.2022.
//

import UIKit

class BackgroundViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let settingVC = segue.destination as? SettingRGBViewController else { return }
        settingVC.delegate = self
        settingVC.color = view.backgroundColor
    }
}

extension BackgroundViewController: ColorSettingRGBViewControllerDelegate {
    func colorUI(_ ciiColor: UIColor) {
        view.backgroundColor = ciiColor
    }
}
