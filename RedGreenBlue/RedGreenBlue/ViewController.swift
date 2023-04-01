//
//  ViewController.swift
//  RedGreenBlue
//
//  Created by Mariya Andreeva on 01.04.2023.
//

import UIKit

class ViewController: UIViewController {
// MARK: - IB Outlets
    @IBOutlet var colorView: UIView!
    
    
    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!
    
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    // MARK: - IB Action
    @IBAction func setupRedValueLabel() {
        redValueLabel.text = String(format: "%.3f", (redSlider.value))
    }
    
    @IBAction func setupGreenValueLabel() {
        greenValueLabel.text = String(format: "%.3f", (greenSlider.value))
    }
    
    @IBAction func setupBlueValueLabel() {
        blueValueLabel.text = String(format: "%.3f", (blueSlider.value))
    }
    
    private func changeColor() {
        colorView.backgroundColor = UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    
   @IBAction func changeColorView() {
        changeColor()
    }
}



