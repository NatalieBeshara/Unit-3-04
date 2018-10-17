
// Created on: 16-Oct-2018
// Created by: Natalie Beshara
// Created for: ICS3U
// This program is tells you if a certain year is a leap year

// this will be commented out when code moved to Xcode
import PlaygroundSupport


import UIKit

class ViewController : UIViewController {
    // this is the main view controller, that will show the UIKit elements
    
    // properties
    let instructionsLabel = UILabel()
    let yearTextField = UITextField()
    let submitButton = UIButton()
    let answerLabel = UILabel()
    let cheatingLabel = UILabel()
    
    
    override func viewDidLoad() {
        // UI
        super.viewDidLoad()
        
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        self.view = view
        
        instructionsLabel.text = "Enter a year and we will tell you if it's a leap year."
        instructionsLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(instructionsLabel)
        instructionsLabel.translatesAutoresizingMaskIntoConstraints = false
        instructionsLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 20).isActive = true
        instructionsLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        
        yearTextField.borderStyle = UITextBorderStyle.roundedRect
        yearTextField.placeholder = "   "
        view.addSubview(yearTextField)
        yearTextField.translatesAutoresizingMaskIntoConstraints = false
        yearTextField.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        yearTextField.bottomAnchor.constraint(equalTo: instructionsLabel.topAnchor, constant: 80).isActive = true
        
        submitButton.setTitle("Check", for: UIControlState.normal)
        submitButton.setTitleColor(.blue, for: .normal)
        submitButton.addTarget(self, action: #selector(calculateLeapYear), for: .touchUpInside)
        view.addSubview(submitButton)
        submitButton.translatesAutoresizingMaskIntoConstraints = false
        submitButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        submitButton.topAnchor.constraint(equalTo: yearTextField.bottomAnchor, constant: 20).isActive = true
        
        answerLabel.text = nil
        answerLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        view.addSubview(answerLabel)
        answerLabel.translatesAutoresizingMaskIntoConstraints = false
        answerLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        answerLabel.topAnchor.constraint(equalTo: submitButton.bottomAnchor, constant: 20).isActive = true
        
        //cheatingLabel.text = String("Answer: \(NUMBER_TO_GUESS)")
        //cheatingLabel.textColor = #colorLiteral(red: 0.0, green: 0.0, blue: 0.0, alpha: 1.0)
        //view.addSubview(cheatingLabel)
        //cheatingLabel.translatesAutoresizingMaskIntoConstraints = false
        //cheatingLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 70).isActive = true
        //cheatingLabel.bottomAnchor.constraint(equalTo: numberTextField.topAnchor, constant: 27).isActive = true
    }
    @objc func calculateLeapYear() {
        //  
        
        var year: Int = Int(yearTextField.text!)!
        
        var  leapYear = year%4
            
        if leapYear == 0 {
            var leapYear = year%100
            
            if leapYear == 0 {
                var leapYear = year%400
                
                if leapYear == 0 {
                    answerLabel.text = "Yes, it is a leap year."
                }
                else {
                    answerLabel.text = "No, it is not a leap year."
                }
            }
            else {
                answerLabel.text = "Yes, it is a leap year."
            }
        }
        else {
            answerLabel.text = "No, it is not a leap year."
        }
    }
    
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

// this will be commented out when code moved to Xcode
PlaygroundPage.current.liveView = ViewController()
