//
//  NickNameViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

class NickNameViewController: UIViewController {
    
    let nickNameView = NickNameView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        constraintViews()
        setupKeybordHidding()
        
    }
}

extension NickNameViewController {
    
    func setupViews() {
        view.setupView(nickNameView)
    }
    
    func constraintViews () {
        
        NSLayoutConstraint.activate([
            nickNameView.topAnchor.constraint(equalTo: view.topAnchor),
            nickNameView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            nickNameView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            nickNameView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    private func wrongFormatAlert() {
        let alert = UIAlertController(title: "Wrong format!",
                                      message: "Please enter your name",
                                      preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        alert.addAction(okAction)
        present(alert, animated: true)
    }
    
    private func setupKeybordHidding() {
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillShow),
            name: UIResponder.keyboardWillShowNotification,
            object: nil
        )
        NotificationCenter.default.addObserver(
            self,
            selector: #selector(keyboardWillHide),
            name: UIResponder.keyboardWillHideNotification,
            object: nil
        )
    }
    
    @objc func keyboardWillShow(notification: NSNotification) {
        if let keyboardSize = (notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue)?.cgRectValue {
            if self.view.frame.origin.y == 0 {
                self.view.frame.origin.y -= keyboardSize.height - 250
            }
        }
    }
    
    @objc func keyboardWillHide(notification: NSNotification) {
        if self.view.frame.origin.y != 0 {
            self.view.frame.origin.y = 0
        }
    }
    
    @objc func buttonTapped(_ sender: UIButton) {
        guard let nickName = nickNameView.nickName.text, !(nickName.isEmpty) else {
            wrongFormatAlert()
            return
        }
        
        
    }
}
