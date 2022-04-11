//
//  HomeViewController.swift
//  CodeWarsTesting
//
//  Created by Максим Неверовский on 08.04.2022.
//

import UIKit
import CoreData


class HomeViewController: UIViewController {
    
    @IBOutlet weak var arrayTextField: UITextField!
    @IBOutlet weak var timesTextField: UITextField!
    @IBOutlet weak var answerArrayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        answerArrayLabel.isHidden = true
    }
    
    @IBAction func goFunc(_ sender: Any) {
        let StringRecordedArr = arrayTextField.text!.components(separatedBy: " ")
        var secondList: [Int] = []
        
        for product in StringRecordedArr {
            let a = Int(product)
            if (a != nil){
                secondList.append(a!)
            }
        }
        
        let timesValue: Int? = {
            guard let string = timesTextField?.text, let integer = Int(string) else {
                return nil
            }
            return integer
        }()
        
        let answer = CodeWarsTask().foldArray(arr: secondList, times: timesValue!)
        let results = ResultCoreDataManager().fetchResults()
        answerArrayLabel.isHidden = false
        answerArrayLabel.text = "\(answer)"
        
        if results!.count > 0{
            ResultCoreDataManager().updateResult(answer: "\(answer)")
        }else{
            ResultCoreDataManager().createResult(answer: "\(answer)")
        }
    }
}
