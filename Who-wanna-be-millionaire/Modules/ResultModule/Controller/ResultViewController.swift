//
//  ResultViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
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
        label.textColor = UIColor.orange
        label.numberOfLines = 0
        label.font = UIFont(name: "Syne", size: 50)
        return label
        
    }()
    
    // define label button "PLAY AGAIN"
    // private lazy var playAgainButton: UIButton {
    var playAgainButton: UIButton {
        let button = UIButton()
        button.setTitle("PLAY AGAIN", for: .normal)
        button.setTitleColor(.white, for: .normal)
        // should set backgroundColor as #34B83A
        button.backgroundColor = .green
        button.layer.cornerRadius = 20
        // button.addTarget(<#T##Any?#>, action: <#T##Selector#>, for: <#T##UIControl.Event#>)
        // button.makeSystem(button) - ???
        return button
    }
    
    // define entity for stack view
    private lazy var verticalStack: UIStackView = {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillProportionally
        stack.spacing = 10
        return stack
    }()
    
    // set constraints for the elements in stack view:
    func getConstraints() {
        NSLayoutConstraint.activate([
            
            
            // constraints for logo image:
            labelImageView.heightAnchor.constraint(equalToConstant: 201),
            labelImageView.widthAnchor.constraint(equalToConstant: 201),
//            labelImageView.topAnchor.constraint(equalTo: view.topAnchor),
//            labelImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            labelImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            labelImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
            // constraints for attempt label:
            attemptLabel.heightAnchor.constraint(equalToConstant: 42),
            attemptLabel.widthAnchor.constraint(equalToConstant: 345),
            // attemptLabel.topAnchor.constraint(equalTo: labelImageView.bottomAnchor, constant: 50),
            
            // constraints for lose label:
            loseLabel.heightAnchor.constraint(equalToConstant: 87),
            loseLabel.widthAnchor.constraint(equalToConstant: 282),
            // loseLabel.topAnchor.constraint(equalTo: attemptLabel.bottomAnchor, constant: 50),
            
            
            
            // constraints for "play again" button:
//            playAgainButton.heightAnchor.constraint(equalToConstant: 100),
//            playAgainButton.widthAnchor.constraint(equalToConstant: 300),
            
            
            
            
            // constraints for the background image view:
//            backgroundImageView.topAnchor.constraint(equalTo: view.topAnchor),
//            backgroundImageView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            backgroundImageView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
//            backgroundImageView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            
            
            
        
            // constraints for the stack view:
            verticalStack.topAnchor.constraint(equalTo: view.topAnchor),
            verticalStack.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            verticalStack.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            verticalStack.bottomAnchor.constraint(equalTo: view.bottomAnchor)
    
            
    
        
        
        ])
    }
    
    
//    override func constraintViews () {
//        NSLayoutConstraint.activate([
//
//            textLabel.topAnchor.constraint(equalTo: topAnchor),
//            textLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
//            textLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
//            textLabel.bottomAnchor.constraint(equalTo: pinkButton.topAnchor),
//
//            pinkButton.centerXAnchor.constraint(equalTo: centerXAnchor),
//            pinkButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
//            pinkButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
//            pinkButton.heightAnchor.constraint(equalToConstant: 50),
//
//            purpuleButton.centerXAnchor.constraint(equalTo: centerXAnchor),
//            purpuleButton.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 100),
//            purpuleButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -100),
//            purpuleButton.heightAnchor.constraint(equalToConstant: 50),
//            purpuleButton.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -30),
//
//            imageView.topAnchor.constraint(equalTo: topAnchor),
//            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
//            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
//            imageView.bottomAnchor.constraint(equalTo: bottomAnchor),
//
//            verticStack.topAnchor.constraint(equalTo: topAnchor),
//            verticStack.leadingAnchor.constraint(equalTo: leadingAnchor),
//            verticStack.trailingAnchor.constraint(equalTo: trailingAnchor),
//            verticStack.bottomAnchor.constraint(equalTo: bottomAnchor),
//        ])
//    }
    
    


    override func viewDidLoad() {
        super.viewDidLoad()
        
        // change background color:
        view.backgroundColor = .green
        
        
        // add stack view to the super view:
        view.setupView(verticalStack)
        
        // add all our elements to the stack view:
        verticalStack.addArrangedSubviews([backgroundImageView, labelImageView, attemptLabel, loseLabel, playAgainButton])
        
        getConstraints()
    }
    
}

