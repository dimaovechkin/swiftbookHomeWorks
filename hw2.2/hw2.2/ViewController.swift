//
//  ViewController.swift
//  hw2.2
//
//  Created by Dmitri Ovechkin on 02.08.2023.
//

import UIKit
enum CurrentLirht {
    case green, yellow, red
    
}

class ViewController: UIViewController {
    @IBOutlet weak var firstColour: UIView!
    @IBOutlet weak var secondColour: UIView!
    @IBOutlet weak var thirdColour: UIView!
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

