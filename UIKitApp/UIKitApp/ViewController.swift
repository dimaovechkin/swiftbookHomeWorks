//
//  ViewController.swift
//  UIKitApp
//
//  Created by Dmitri Ovechkin on 03.08.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var mainLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var textField: UITextField!
    
    @IBOutlet weak var mainButton: UIButton!
    @IBOutlet weak var datePicker: UIDatePicker!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //MARK: Segmented Controll
        segmentedControl.insertSegment(withTitle: "Third", at: 2, animated: false)
        
        //MARK: Label
        mainLabel.text = " "
        mainLabel.font = mainLabel.font.withSize(30)
        mainLabel.textAlignment = .center
        mainLabel.numberOfLines = 2
        //MARK: Slider
        slider.value = 1
        slider.minimumValue = 1
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .yellow
        slider.maximumTrackTintColor = .blue
        mainLabel.text = String(slider.value)
        //MARK: TextField
        
        textField.backgroundColor = .white
        
        //MARK: Button
        mainButton.layer.cornerRadius = 10
        mainButton.setTitle("Готово", for: .normal)
        
        //MARK: Date Picker
        
    }
    
    @IBAction func segmentedControllAction(_ sender: Any) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            mainLabel.text = "Выбран сегмент с инексом 0"
            mainLabel.textColor = .red
        case 1:
            mainLabel.text = "Выбран сегмент с инексом 1"
            mainLabel.textColor = .yellow
        case 2:
            mainLabel.text = "Выбран сегмент с инексом 2"
            mainLabel.textColor = .green
        default: break
        }
    }
    @IBAction func sliderAction(_ sender: Any) {
        mainLabel.text = String(Int(slider.value))

    }
    @IBAction func mainButtonAction(_ sender: Any) {
        
        
        guard let text = textField.text, !text.isEmpty else {
            return
        }
        mainLabel.text = text
        
    }
    
    
    @IBAction func datePickerAction(_ sender: Any) {
        let dateFormatter = DateFormatter()
        dateFormatter.dateStyle = .full
        mainLabel.text = dateFormatter.string(from: datePicker.date)
    }
    
    
}

