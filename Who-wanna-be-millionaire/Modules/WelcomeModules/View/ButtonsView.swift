//
//  ButtonsView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 12.02.2023.
//

import UIKit

class ButtonsView: UIView {
    
    // Added undeline
    private lazy var attrs = [
        NSAttributedString.Key.font : WelcomeConstants.Fonts.setFont(name: .textAvenirFontBold, size: 32) ?? .systemFont(ofSize: 32),
        NSAttributedString.Key.foregroundColor : UIColor(red: 83/255, green: 225/250, blue: 165/255, alpha: 1.0),
        NSAttributedString.Key.underlineStyle : 1] as [NSAttributedString.Key : Any]

    private lazy var startAttributedString = NSMutableAttributedString(string: "")
    private lazy var roolsAttributedString = NSMutableAttributedString(string: "")
    private lazy var registerAttributedString = NSMutableAttributedString(string: "")
    
    lazy var rulesButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonTitleStr = NSMutableAttributedString(string: WelcomeConstants.Text.rulesButtonTitleText, attributes:attrs)
        roolsAttributedString.append(buttonTitleStr)
        button.setAttributedTitle(roolsAttributedString, for: .normal)
        return button
    }()
    
    lazy var registerButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonTitleStr = NSMutableAttributedString(string: WelcomeConstants.Text.register, attributes:attrs)
        registerAttributedString.append(buttonTitleStr)
        button.setAttributedTitle(registerAttributedString, for: .normal)
        return button
    }()
    
    lazy var startGameButton: UIButton = {
        let button = UIButton(type: .system)
        let buttonTitleStr = NSMutableAttributedString(string: WelcomeConstants.Text.startButtonTitleText, attributes:attrs)
        startAttributedString.append(buttonTitleStr)
        button.setAttributedTitle(startAttributedString, for: .normal)
        return button
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
         
        setupViews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension ButtonsView {
    
    func setupViews() {
        setupView(rulesButton)
        setupView(registerButton)
        setupView(startGameButton)
    }
    
    func setConstraints() {
        NSLayoutConstraint.activate([
            startGameButton.topAnchor.constraint(equalTo: topAnchor),
            startGameButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            registerButton.topAnchor.constraint(equalTo: startGameButton.bottomAnchor, constant: 6),
            
            rulesButton.topAnchor.constraint(equalTo: registerButton.bottomAnchor, constant: 6),
            rulesButton.centerXAnchor.constraint(equalTo: centerXAnchor),
        ])
    }
}
