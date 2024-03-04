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
    
    //MARK: - Override Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultVC = segue.destination as? ResultViewController else { return }
        resultVC.yourName = yourNameTF.text ?? ""
        resultVC.parentsName = parentsNameTF.text ?? ""
    }
    
    //MARK: - @IBAction
    @IBAction func resultButton() {
        
    }
    
}

