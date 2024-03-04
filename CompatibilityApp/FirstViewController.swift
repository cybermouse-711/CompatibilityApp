//
//  FirstViewController.swift
//  CompatibilityApp
//
//  Created by Elizaveta Medvedeva on 04.03.24.
//

import UIKit

//MARK: - FirstViewController
class FirstViewController: UIViewController {

    //MARK: - @IBOutlet
    @IBOutlet var yourNameTF: UITextField!
    @IBOutlet var parentsNameTF: UITextField!
    
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.yourName = yourNameTF.text
        resultVC.parentsName = parentsNameTF.text
    }
    
    //MARK: - @IBAction
    @IBAction func resultButton() {
        guard let yourName = yourNameTF.text, let parentsName = parentsNameTF.text else { return }
        if yourName.isEmpty || parentsName.isEmpty {
            showAlert(
                title: "Names are missing",
                message: "Please enter both names ♥︎"
            )
            return
        }
        
        performSegue(withIdentifier: "goResult", sender: nil)
    }
    
}

//MARK: - UITextFieldDelegate
extension FirstViewController: UITextFieldDelegate {
    
}

//MARK: - AlertController
private extension FirstViewController {
    func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}
