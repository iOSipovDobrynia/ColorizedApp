//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Goodwasp on 01.05.2023.
//

import UIKit

class ViewController: UIViewController {

    // MARK: IBOutlets
    @IBOutlet var rgbView: UIView!
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rgbView.layer.cornerRadius = 10
    }

    // MARK: IBActions
    @IBAction func redSliderAction() {
        redValueLabel.text = round(redSlider.value).formatted()
        changeColor()
    }
    
    @IBAction func greenSliderAction() {
        greenValueLabel.text = round(greenSlider.value).formatted()
        changeColor()
    }
    
    @IBAction func blueSliderAction() {
        blueValueLabel.text = round(blueSlider.value).formatted()
        changeColor()
    }
    
    // MARK: private methods
    private func changeColor() {
        rgbView.backgroundColor = UIColor(
            red: CGFloat(redSlider.value) / 255,
            green: CGFloat(greenSlider.value) / 255,
            blue: CGFloat(blueSlider.value) / 255,
            alpha: 1
        )
    }
}

