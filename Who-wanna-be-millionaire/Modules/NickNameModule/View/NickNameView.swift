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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var backgroundImage: UIImageView = {
        let background = UIImageView()
        background.image = UIImage(named: Res.Image.backgroundImageName) 
        return background
    }()
    
    private lazy var mainLogoImage: UIImageView = {
        let logo = UIImageView()
        logo.image = UIImage(named: Res.Image.bigLogo)
        return logo
    }()
    
    private lazy var textLabel: UILabel = {
        let label = UILabel()
        label.textColor = .white
        label.text = Res.Text.enterUrName
        label.textAlignment = .center
        label.font = Res.Fonts.setFont(name: .textAvenirFont, size: 28)
        return label
    }()
    
    private(set) lazy var nickName: CustomTextField = {
        let name = CustomTextField()
        name.returnKeyType = .done
        name.backgroundColor = .white
        name.layer.borderColor = UIColor.systemGray.cgColor
        name.placeholder = Res.Text.enterUrName
        name.layer.cornerRadius = 15
        name.layer.borderWidth = 2
        return name
    }()
    
    private lazy var registerButton: UIButton = {
        let register = UIButton(type: .system)
        register.setBackgroundImage(Res.Image.registerBackground, for: .normal)
        register.setTitle(Res.Text.register, for: .normal)
        register.setTitleColor(UIColor.white, for: .normal)
        register.titleLabel?.font = Res.Fonts.setFont(name: .textAvenirFont, size: 28)
        register.addTarget(nil, action: #selector(NickNameViewController.registerButtonTapped), for: .touchUpInside)
        return register
    }()
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
  
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        nickName.resignFirstResponder()
    }
}
