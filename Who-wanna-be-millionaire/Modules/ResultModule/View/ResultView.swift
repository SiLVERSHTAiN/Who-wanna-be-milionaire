//
//  ResultView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

final class ResultView: UIView {
    
    // define an image view for background of the superView
    private lazy var backgroundImageView: UIImageView = {
        let image = UIImageView(frame: .zero)
        image.image = UIImage(named: "background")
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    // define an image view for logo
    private lazy var labelImageView: UIImageView = {
        let image = UIImageView(frame: CGRect(x: 100, y: 100, width: 201, height: 201))
        image.image = UIImage(named: "big_logo")
        image.contentMode = .scaleAspectFill
        return image
    }()
    
    // define label for "lose on attempt"
    private lazy var attemptLabel: UILabel = {
        let label = UILabel()
        label.text = "You losed on {attempt} attempt"
        label.textColor = .white
        label.numberOfLines = 0
        label.font = UIFont(name: "Roboto", size: 24)
        label.textAlignment = .center
        label.backgroundColor = .clear
        return label
    }()
    
    // define label for word "LOSE"
    private lazy var loseLabel: UILabel = {
        let label = UILabel()
        // need to change color to  #F66324
        label.text = "LOSE"
        label.textColor = UIColor.orange
        label.numberOfLines = 0
        // label.font = UIFont(name: "Syne")
        label.font = UIFont(name: "Syne", size: 50)
        return label
        
    }()
    
    // define label button "PLAY AGAIN"
    // private lazy var playAgainButton: UIButton {
    lazy var playAgainButton: UIButton = {
        let button = UIButton()
        button.setTitle("PLAY AGAIN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        // should set backgroundColor as #34B83A
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        // button.addTarget(<#T##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        // button.makeSystem(button) - ???
        return button
    }()
    
    // define entity for stack view
    private lazy var verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 10
        return stack
    }()
    
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
        
        // Добавление stackView на view
        setupView(verticalStack)
        
        // Способ как можно добавить все view в stackView
        verticalStack.addArrangedSubviews([backgroundImageView, labelImageView, attemptLabel, loseLabel, playAgainButton])
        
    }
    
    // set constraints for stack view
    func constraintViews () {
        
        NSLayoutConstraint.activate([
            
            // constraints for logo image:
            labelImageView.heightAnchor.constraint(equalTo: labelImageView.widthAnchor),
            // labelImageView.widthAnchor.constraint(equalToConstant: frame.width/2.5),
            labelImageView.topAnchor.constraint(equalTo: topAnchor, constant: 50),
            // labelImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            labelImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50),
            labelImageView.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50),
//            labelImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            // constraints for attempt label:
            attemptLabel.topAnchor.constraint(equalTo: labelImageView.bottomAnchor),
            attemptLabel.heightAnchor.constraint(equalToConstant: 42),
            attemptLabel.widthAnchor.constraint(equalToConstant: 345),
            // attemptLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            // attemptLabel.topAnchor.constraint(equalTo: labelImageView.bottomAnchor, constant: 50),
            
            // constraints for lose label:
            loseLabel.topAnchor.constraint(equalTo: attemptLabel.bottomAnchor),
            loseLabel.heightAnchor.constraint(equalToConstant: 87),
            loseLabel.widthAnchor.constraint(equalToConstant: 282),
            // loseLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            // loseLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            // loseLabel.topAnchor.constraint(equalTo: attemptLabel.bottomAnchor, constant: 50),
            
            
            
            // constraints for "play again" button:
            playAgainButton.bottomAnchor.constraint(equalTo: bottomAnchor),
            playAgainButton.heightAnchor.constraint(equalToConstant: 100),
            playAgainButton.widthAnchor.constraint(equalToConstant: frame.width/2),
            // playAgainButton.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            
            
            
        // constraints for the background image view:
        backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
        backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
        backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
        backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
        // constraints for stack view:
        verticalStack.topAnchor.constraint(equalTo: topAnchor),
        verticalStack.leadingAnchor.constraint(equalTo: leadingAnchor),
        verticalStack.trailingAnchor.constraint(equalTo: trailingAnchor),
        verticalStack.bottomAnchor.constraint(equalTo: bottomAnchor)
        
        ])
    }
    
    func configureAppearance() {
        backgroundColor = .green
    }
}
