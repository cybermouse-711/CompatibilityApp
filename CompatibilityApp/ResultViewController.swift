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
    @IBOutlet var resultProgressView: UIProgressView!
    
    //MARK: - Properties
    var yourName: String!
    var parentsName: String!
    
    //MARK: - Override Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    


}

//MARK: - Extensions
private extension ResultViewController {
    func setupUI() {
        resultNamesLabel.text = "\(yourName ?? "") and \(parentsName ?? "")"
        
        resultProgressView.transform = resultProgressView.transform.scaledBy(x: 1, y: 2)
        resultProgressView.progress = 2
        
        procentLabel.text = ""
    }
}
