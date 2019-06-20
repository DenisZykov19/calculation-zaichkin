//
//  CalControllerViewController.swift
//  calc
//
//  Created by WSR on 6/20/19.
//  Copyright © 2019 WSR. All rights reserved.
//

import UIKit

class CalControllerViewController: UIViewController {

    @IBOutlet weak var result: UILabel!
    
    var firstValue = 0.0
    var secondValue = 0.0
    var operation = ""

    @IBOutlet var clean: [UIButton]!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    //action для цифр
    @IBAction func action(_ sender: UIButton) {
        //константа для цифры
        //берем ее из свойства title вызвавшей этот action кнопки
        let digit = sender.titleLabel?.text
        
        switch digit {
            case "0":
                result.text = "0"
            case "1":
                result.text = "1"
            case "2":
                result.text = "2"
            case "3":
                result.text = "3"
            case "4":
                result.text = "4"
            case "5":
                result.text = "5"
            case "6":
                result.text = "6"
            case "7":
                result.text = "7"
            case "8":
                result.text = "8"
            case "9":
                result.text = "9"
            case "÷":
                firstValue = Double(result.text!) as! Double
                operation = "÷"
            case "x":
              firstValue = Double(result.text!) as! Double
                operation = "x"
            case "-":
              firstValue = Double(result.text!) as! Double
                operation = "-"
            case "+":
             firstValue = Double(result.text!) as! Double
                operation = "+"
            case "%":
             firstValue = Double(result.text!) as! Double
                operation = "%"
            case "C":
            firstValue = Double(result.text!) as! Double
                operation = "c"
            self.firstValue = 0.0
            self.secondValue = 0.0
            self.result.text = "0"

            case "+/-":
            firstValue = Double(result.text!) as! Double
            let result = -firstValue
            self.result.text = String(result)

            case "=":
            operation(oper: operation)
            
        default:
            break
        }

        
    }
    func operation(oper: String) {
        secondValue = Double(self.result.text!) as! Double
        if oper == "+" {
            let result = firstValue + secondValue
            self.result.text = String(result)
        }
        if oper == "-" {
            let result = firstValue - secondValue
            self.result.text = String(result)
        }
        if oper == "÷" {
            let result = firstValue / secondValue
            self.result.text = String(result)
        }
        if oper == "x" {
            let result = firstValue * secondValue
            self.result.text = String(result)
        }
        if oper == "%" {
            let result = firstValue * 100
            self.result.text = String(result)
        }
    }



}
