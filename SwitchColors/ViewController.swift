//
//  ViewController.swift
//  SwitchColors
//
//  Created by Gleb Zadonskiy on 15.10.2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redNumber: UILabel!
    @IBOutlet weak var greenNumber: UILabel!
    @IBOutlet weak var blueNumber: UILabel!
    
    @IBOutlet weak var colorView: UIView!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    private let maxValue:Float = 1
    private let minValue:Float = 0
    
        override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        
        setLabels()
        setSlider()
    }
    
    @IBAction func redSliderAction(_ sender: UISlider) {
        redNumber.text = String(roundedTextLable(num: redSlider.value))
        
        colorView.backgroundColor = .init(red: CGFloat(redSlider.value),
                                          green: CGFloat(greenSlider.value),
                                          blue: CGFloat(blueSlider.value),
                                          alpha: 1)
    }
    @IBAction func greenSliderAction(_ sender: UISlider) {
        greenNumber.text = String(roundedTextLable(num: greenSlider.value))
        
        colorView.backgroundColor = .init(red: CGFloat(redSlider.value),
                                          green: CGFloat(greenSlider.value),
                                          blue: CGFloat(blueSlider.value),
                                          alpha: 1)
    }
    @IBAction func blueSliderAction(_ sender: UISlider) {
        blueNumber.text = String(roundedTextLable(num: blueSlider.value))
        
        colorView.backgroundColor = .init(red: CGFloat(redSlider.value),
                                          green: CGFloat(greenSlider.value),
                                          blue: CGFloat(blueSlider.value),
                                          alpha: 1)
    }
    
    func roundedTextLable(num: Float) -> Float {
        Float(Int(num * 100))/100
    }
    
    func setSlider() {
        redSlider.minimumValue = minValue
        redSlider.maximumValue = maxValue
        greenSlider.minimumValue = minValue
        greenSlider.maximumValue = maxValue
        blueSlider.minimumValue = minValue
        blueSlider.maximumValue = maxValue
    }
    
    func setLabels() {
        redNumber.text = String(redSlider.value)
        greenNumber.text = String(greenSlider.value)
        blueNumber.text = String(blueSlider.value)
    }
    
}

