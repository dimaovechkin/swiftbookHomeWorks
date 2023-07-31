//
//  ViewController.swift
//  project1
//
//  Created by Dmitri Ovechkin on 29.07.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var helloWorldLabel: UILabel!
    
    @IBOutlet weak var toggleButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        helloWorldLabel.isHidden = true
        toggleButton.layer.cornerRadius = 15
        // Do any additional setup after loading the view.
    }
    @IBAction func makeButtonAction() {
        if helloWorldLabel.isHidden {
            helloWorldLabel.isHidden = false
            toggleButton.setTitle("Hide text", for: .normal)
        }  else {
            helloWorldLabel.isHidden = true
            toggleButton.setTitle("Show text", for: .normal)

        }
    }
    

}

