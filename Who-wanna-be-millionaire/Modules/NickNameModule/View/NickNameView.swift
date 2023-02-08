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
        label.text = Resources.Texts.mainText
        label.textAlignment = .center
        label.font = Resources.Fonts.setFont(name: .textAvenirFont, size: 28)
        return label
    }()
    
    private lazy var nickName: UITextField = {
        let name = UITextField()
        return name
    }()
    
    private lazy var registerButton: UIButton = {
        let register = UIButton()
        register.setTitle(Resources.Texts.buttonText, for: .normal)
        register.makeSystem(register)
        return register
    }()
    
//    private lazy var stackView: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        stack.distribution = .fill
//        stack.spacing = 10
//        return stack
//    }()
    
    private var stackView = UIStackView(.stack
}

extension NickNameView {
    
    func setupViews() {
        setupView(stackView)
    }
    
    func constraintViews () {
        
    }
    
    func configureAppearance() {
        
        backgroundColor = .red
    }
}
