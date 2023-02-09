//
//  ResultView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

final class ResultView: UIView {
    
    // define an image view for logo
    private lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: "big_logo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // define label for "lose on attempt"
    private lazy var descriptionTitleLabel: UILabel = {
        let label = UILabel()
        label.text = "You losed on {attempt} attempt"
        label.textColor = .white
        label.numberOfLines = 0
        // label.font = UIFont(name: "Roboto", size: 24)
        label.font = .systemFont(ofSize: 24)
        label.textAlignment = .center
        label.backgroundColor = .clear
        return label
    }()
    
    // define label for word "LOSE"
    private lazy var resultTitleLabel: UILabel = {
        let label = UILabel()
        // need to change color to  #F66324
        label.text = "LOSE"
        label.textColor = UIColor.orange
        label.textAlignment = .center
        // label.textColor = UIColor.hexStringToUIColor(hex: "#F66324")
        label.numberOfLines = 0
        // label.font = UIFont(name: "Syne", size: 50)
        label.font = .systemFont(ofSize: 50)
        
        return label
        
    }()
    
    // define label button "PLAY AGAIN"
    // private lazy var playAgainButton: UIButton {
    lazy var playAgainButton: UIButton = {
        let button = UIButton()
        button.setTitle("PLAY AGAIN", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 36)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        return button
    }()
    
//    // define entity for stack view
//    private lazy var verticalStack: UIStackView = {
//        let stack = UIStackView()
//        stack.axis = .vertical
//        // stack.distribution = .fillProportionally
//        stack.spacing = 10
//        return stack
//    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
        configureAppearance()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

// set extention and immediately call this functions in Init:
extension ResultView {
    
    // add stack view and fill it with elements:
    func setupViews() {
        
        // add all elements to the view without Stack View
        setupView(logoImageView)
        setupView(descriptionTitleLabel)
        setupView(resultTitleLabel)
        setupView(playAgainButton)
        

        
    }
    
    // set constraints for stack view
    func constraintViews () {
        
        
        NSLayoutConstraint.activate([
            
            logoImageView.heightAnchor.constraint(equalToConstant: 201),
            logoImageView.widthAnchor.constraint(equalToConstant: 201),
            logoImageView.topAnchor.constraint(equalTo: topAnchor, constant: 20),
            logoImageView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            descriptionTitleLabel.topAnchor.constraint(equalTo: logoImageView.bottomAnchor, constant: 10),
            descriptionTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            descriptionTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            resultTitleLabel.topAnchor.constraint(equalTo: descriptionTitleLabel.bottomAnchor, constant: 10),
            resultTitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            resultTitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            playAgainButton.heightAnchor.constraint(equalToConstant: 100),
            playAgainButton.widthAnchor.constraint(equalToConstant: 300),
            playAgainButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -50),
            playAgainButton.centerXAnchor.constraint(equalTo: centerXAnchor)
            
        ])
    }
    
    func configureAppearance() {
        
    }
}



