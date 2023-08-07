//
//  ViewController.swift
//  HwBlock2.lesson2
//
//  Created by Dmitri Ovechkin on 07.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var viewArea: UIView!
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        redSlider.value = 1
        redSlider.minimumValue = 1
        redSlider.maximumValue = 100
        redSlider.minimumTrackTintColor = .white
        redSlider.maximumTrackTintColor = .red
        
        greenSlider.value = 1
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 100
        greenSlider.minimumTrackTintColor = .white
        greenSlider.maximumTrackTintColor = .green
        
        blueSlider.value = 1
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 100
        blueSlider.minimumTrackTintColor = .white
        blueSlider.maximumTrackTintColor = .blue
        
        
    }


}

