//
//  ViewController.swift
//  2dz
//
//  Created by Инна Степанова on 30.10.2021.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var viewColour: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        viewColour.layer.cornerRadius = 15
        setColor()
    }
    
    private func setColor() {
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        viewColour.backgroundColor = UIColor(red: CGFloat(redSlider.value),
                    green: CGFloat(greenSlider.value),
                    blue: CGFloat(blueSlider.value),
                    alpha: 1)
        
    }
    @IBAction func slidersActions() {
        setColor()
    }
}
