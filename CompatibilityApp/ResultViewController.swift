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
    var partnersName: String!
    
    //MARK: - Override Metods
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    //MARK: - Private Metods
    private func findValue(for name: String) -> Int {
        var count = 0
        
        for character in name.lowercased() {
            switch character {
            case "a", "i", "j", "q", "y":
                count += 1
            case "b", "k", "r":
                count += 2
            case "c", "g", "l", "s":
                count += 3
            case "d", "m", "t":
                count += 4
            case "e", "h", "n", "x":
                count += 5
            case "u", "v", "w":
                count += 6
            case "o", "z":
                count += 7
            case "f", "p":
                count += 8
            default :
                count += 0
            }
        }
        return count
    }
    
    private func findResult() -> Int {
        var result = 0
        
        let yourName = findValue(for: yourName)
        let partnersName = findValue(for: partnersName)
        let absDifference = abs(yourName - partnersName)
        
        switch absDifference {
        case 0, 1, 2:
            result = 100
        case 3, 4:
            result = 65
        case 5:
            result = 50
        case 6:
            result = 40
        default:
            result = 30
        }
        return result
    }
}

//MARK: - Extensions
private extension ResultViewController {
    func setupUI() {
        let result = findResult()
        
        resultNamesLabel.text = "\(yourName ?? "") and \(partnersName ?? "")"
        
        resultProgressView.transform = resultProgressView.transform.scaledBy(x: 1, y: 2)
        resultProgressView.progress = Float(result) / 100
        
        procentLabel.text = "\(result.formatted()) %"
    }
}
