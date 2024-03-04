//
//  ResultViewController.swift
//  CompatibilityApp
//
//  Created by Elizaveta Medvedeva on 04.03.24.
//

import UIKit

//MARK: - ResultViewController
class ResultViewController: UIViewController {
    
    //MARK: - @IBOutlet
    @IBOutlet var resultNamesLabel: UILabel!
    @IBOutlet var procentLabel: UILabel!
    @IBOutlet var resultPregressView: UIStackView!
    
    //MARK: - Properties
    var yourName: String!
    var parentsName: String!
    
    //MARK: - Override Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultNamesLabel.text = "\(yourName) and \(parentsName)."
    }
    


}
