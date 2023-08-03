//
//  ViewController.swift
//  hw2.2
//
//  Created by Dmitri Ovechkin on 02.08.2023.
//

import UIKit
enum CurrentLight {
    case green, yellow, red
    
}

class ViewController: UIViewController {
    @IBOutlet weak var firstColour: UIView!
    @IBOutlet weak var secondColour: UIView!
    @IBOutlet weak var thirdColour: UIView!
    @IBOutlet weak var button: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOn: CGFloat = 1
    private let lightIsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        button.layer.cornerRadius = 10
        
        firstColour.alpha = lightIsOff
        secondColour.alpha = lightIsOff
        thirdColour.alpha = lightIsOff
    }
    
    
    override func viewWillLayoutSubviews() {
        firstColour.layer.cornerRadius = firstColour.frame.width / 2
        secondColour.layer.cornerRadius = firstColour.frame.width / 2
        thirdColour.layer.cornerRadius = firstColour.frame.width / 2
    }

    @IBAction func startButtonPressed(_ sender: Any) {
        
        button.setTitle("NEXT", for: .normal)
        
        switch currentLight {
        case .green:
            firstColour.alpha = lightIsOn
            secondColour.alpha = lightIsOff
            currentLight = .red
        case .yellow:
            firstColour.alpha = lightIsOff
            secondColour.alpha = lightIsOn
            currentLight = .green
        case .red:
            firstColour.alpha = lightIsOn
            secondColour.alpha = lightIsOff
            currentLight = .yellow
        }
    }
    
    
    
}

