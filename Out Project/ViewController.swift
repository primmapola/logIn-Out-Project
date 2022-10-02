//
//  ViewController.swift
//  Out Project
//
//  Created by Grigory Don on 30.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackOfButtons: UIStackView!
    @IBOutlet weak var loginTF: UITextField!
    @IBOutlet weak var passwordTF: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        loginTF.autocorrectionType
        passwordTF.isSecureTextEntry = true
        
//        NotificationCenter.default.addObserver(
//            self,
//            selector: #selector(updateElements(notification:)),
//            name: UIResponder.keyboardWillShowNotification,
//            object: nil)
//
//        NotificationCenter.default.addObserver(
//            self,
//            selector: #selector(updateElements(notification:)),
//            name: UIResponder.keyboardWillHideNotification,
//            object: nil)
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if loginTF.text != nil && passwordTF.text != nil {
            if loginTF.text == "alex" && passwordTF.text == "1" {
                guard let successData = segue.destination as? WelcomeScreenViewController else {return}
                guard let login = loginTF.text else { return }
                successData.welcomeMessange = "Welcome, \(login)"
            } else {
                
                let alertController = UIAlertController(title: "Wrong login or password", message: "Try again!", preferredStyle: .alert)
                let action = UIAlertAction(title: "OK", style: .cancel)
                
                alertController.addAction(action)
                self.present(alertController, animated: true, completion: nil)
                
                passwordTF.text = ""
            }
        }
       
        
    }
    
    @IBAction func loginHelpButton() {
        let alertController = UIAlertController(title: "Help", message: "Your login is alex", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }

    @IBAction func passwordHelpButton() {
        let alertController = UIAlertController(title: "Help", message: "Your password is 1", preferredStyle: .alert)
        let action = UIAlertAction(title: "OK", style: .cancel)
        
        alertController.addAction(action)
        self.present(alertController, animated: true, completion: nil)
    }
    
    @IBAction func unwind(for segue: UIStoryboardSegue) {
        loginTF.text = ""
        passwordTF.text = ""
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.view.endEditing(true)
    }
    
//    @objc func updateElements(notification: Notification) {
//        guard let userInfo = notification.userInfo as? [String: Any],
//              let keyboardFrame = (userInfo[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue else {return}
        
//        if notification.name == UIResponder.keyboardWillHideNotification {
//            stackOfButtons.content = UIEdgeInsets.zero
//        }
    }



