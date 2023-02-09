//
//  NickNameView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

final class NickNameView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        nickName.delegate = self
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var backgroundImage: UIImageView = {
        let background = UIImageView()
        background.image = Resources.Images.background
        return background
    }()
    
    private lazy var mainLogoImage: UIImageView = {
        let logo = UIImageView()
        logo.image = Resources.Images.gameLogo
        return logo
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = Resources.Texts.mainText
        label.textAlignment = .center
        label.font = Resources.Fonts.setFont(name: .textAvenirFont, size: 28)
        return label
    }()
    
    private lazy var nickName: CustomTextField = {
        let name = CustomTextField()
        name.returnKeyType = .done
        name.backgroundColor = .white
        name.layer.borderColor = Resources.Colors.buttonColorGray.cgColor
        name.placeholder = "Enter your Nickname"
        name.layer.cornerRadius = 15
        name.layer.borderWidth = 2
        return name
    }()
    
    private lazy var registerButton: UIButton = {
        let register = UIButton(type: .system)
        register.setBackgroundImage(Resources.Images.buttonBackgroun, for: .normal)
        register.setTitle(Resources.Texts.buttonText, for: .normal)
        register.setTitleColor(UIColor.white, for: .normal)
        register.titleLabel?.font = Resources.Fonts.setFont(name: .textAvenirFont, size: 28)
        return register
    }()
    
    static func getNickName(_ nickName: UITextField) -> String {
        guard let nickName = nickName.text else { return "" }
        return nickName
    }
}

extension NickNameView: UITextFieldDelegate {
    
    func setupViews() {
        setupView(backgroundImage)
        setupView(mainLogoImage)
        setupView(textLabel)
        setupView(nickName)
        setupView(registerButton)
    }
    
    func constraintViews () {
        
        NSLayoutConstraint.activate([
            mainLogoImage.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 50),
            mainLogoImage.widthAnchor.constraint(equalToConstant: 200),
            mainLogoImage.heightAnchor.constraint(equalTo: mainLogoImage.widthAnchor),
            mainLogoImage.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            textLabel.topAnchor.constraint(equalTo: mainLogoImage.bottomAnchor, constant: 20),
            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            nickName.topAnchor.constraint(equalTo: textLabel.bottomAnchor, constant: 20),
            nickName.heightAnchor.constraint(equalToConstant: 60),
            nickName.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 30),
            nickName.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -30),
            
            registerButton.topAnchor.constraint(equalTo: nickName.bottomAnchor, constant: 50),
            registerButton.centerXAnchor.constraint(equalTo: centerXAnchor),
            registerButton.widthAnchor.constraint(equalToConstant: 200),
            
            backgroundImage.topAnchor.constraint(equalTo: topAnchor),
            backgroundImage.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImage.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImage.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        ])
    }
    
    func configureAppearance() {
        
        backgroundColor = .white
    }
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nickName.resignFirstResponder()
    }
}
