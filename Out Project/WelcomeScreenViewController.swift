//
//  WelcomeScreenViewController.swift
//  Out Project
//
//  Created by Grigory Don on 30.09.2022.
//

import UIKit

class WelcomeScreenViewController: UIViewController {
    
    @IBOutlet weak var welcomeLable: UILabel!
    var welcomeMessange = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        welcomeLable.text = welcomeMessange
        
    }
}
