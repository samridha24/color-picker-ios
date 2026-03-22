//
//  ViewController.swift
//  ColourPicker
//
//  Created by KJSCE on 10/02/26.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    @IBOutlet weak var transpSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redSlider.minimumValue = 0
        redSlider.maximumValue = 1
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 1
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 1
        updateBackgroundColor()
        // Do any additional setup after loading the view.
    }


    @IBAction func redSwitch(_ sender: UISwitch) {
        redSlider.isEnabled = sender.isOn
        updateBackgroundColor()
    }

    @IBAction func greenSwitch(_ sender: UISwitch) {
        greenSlider.isEnabled = sender.isOn
        updateBackgroundColor()
    }

    @IBAction func blueSwitch(_ sender: UISwitch) {
        blueSlider.isEnabled = sender.isOn
        updateBackgroundColor()
    }

    @IBAction func transpSwitch(_ sender: UISwitch) {
        transpSlider.isEnabled = sender.isOn
        updateBackgroundColor()
    }
    
    func updateBackgroundColor() {
        let red = redSlider.value
        let green = greenSlider.value
        let blue = blueSlider.value
        let alpha = transpSlider.value

        view.backgroundColor = UIColor(
            red: CGFloat(red),
            green: CGFloat(green),
            blue: CGFloat(blue),
            alpha: CGFloat(alpha)
        )

        redLabel.text = "R: \(Int(red * 255))"
        greenLabel.text = "G: \(Int(green * 255))"
        blueLabel.text = "B: \(Int(blue * 255))"
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        updateBackgroundColor()
    }
    

}

