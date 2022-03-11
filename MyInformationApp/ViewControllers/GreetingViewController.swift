//
//  GreetingViewController.swift
//  MyInformationApp
//
//  Created by Никита on 11.03.2022.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    var user = "who?"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        greetingLabel.text = "Welcome, \(user)!"
    }
}
