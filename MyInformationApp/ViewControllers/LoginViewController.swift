//
//  ViewController.swift
//  MyInformationApp
//
//  Created by Никита on 11.03.2022.
//

import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var loginTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    private let login = "admin"
    private let password = "admin"
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let greetingVC = segue.destination as? GreetingViewController else { return }
        greetingVC.user = login
    }
    
    @IBAction func loginButtonPressed() {
        guard loginTextField.text == login, passwordTextField.text == password else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, try again",
                textField: passwordTextField
            )
            return
        }
    }
    
    @IBAction func showAuthorizationData(_ sender: UIButton) {
        sender.tag == 1 ? showAlert(title: "Hack me", message: "Your name is \(login)") : showAlert(title: "Hack me", message: "Your password is \(password)")
    }
    
    @IBAction func unwind(for unwindSegue: UIStoryboardSegue) {
        loginTextField.text = ""
        passwordTextField.text = ""
    }
}

extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "Okay", style: .default) { _ in
            textField?.text = ""
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

extension LoginViewController: UITextViewDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }
}
