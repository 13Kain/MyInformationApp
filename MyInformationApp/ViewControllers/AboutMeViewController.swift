//
//  AboutMeViewController.swift
//  MyInformationApp
//
//  Created by Никита on 11.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    let user = Person.getPersons()

    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "\(user.name) \(user.surname)"
    }
}
