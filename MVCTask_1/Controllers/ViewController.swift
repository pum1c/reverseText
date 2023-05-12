//
//  ViewController.swift
//  MVCTask_1
//
//  Created by Вадим Амбарцумян on 06.05.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let textReverser = TextReverser()
    private enum ButtonState {
        case reverse, clear
    }
    private var buttonState: ButtonState = ButtonState.reverse
    
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var textField: UITextField!
    @IBOutlet weak var resultLable: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }
    
    private func setupView() {
        self.navigationItem.title = "Reverse words"
        button.layer.cornerRadius = 14
        button.backgroundColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 0.6)
        button.isUserInteractionEnabled = false
        
        let bottomLine = CALayer()
        bottomLine.frame = CGRect(x: 0, y: textField.frame.height - 1, width: textField.frame.width, height: 1)
        bottomLine.backgroundColor = UIColor.gray.cgColor
        textField.layer.addSublayer(bottomLine)
        textField.addTarget(self, action: #selector(textFieldButtonChange(textField:)), for: .editingChanged)
    }
    
    @objc func textFieldButtonChange(textField: UITextField) {
        if !(textField.text?.isEmpty ?? true) {
            button.backgroundColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 1)
            button.isUserInteractionEnabled = true
        } else {
            button.backgroundColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 0.6)
            button.isUserInteractionEnabled = false
        }
    }
    @IBAction func buttonTouched(_ sender: Any) {
        switch buttonState{
        case .reverse:
            resultLable.text = textReverser.reverseText(text: textField.text ?? "")
                button.setTitle("Clear", for: .normal)
                buttonState = .clear
           
        case .clear:
            button.setTitle("Reverse", for: .normal)
            resultLable.text = ""
            textField.text = ""
            button.backgroundColor = UIColor(red: 0, green: 0.478, blue: 1, alpha: 0.6)
            buttonState = .reverse
            textFieldButtonChange(textField: textField)
        }
    }
}
