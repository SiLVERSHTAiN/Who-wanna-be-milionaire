//
//  MainGameView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

final class MainGameView: UIView {
    
    private lazy var backgroundImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        return imageView
        
    }()
    
    private lazy var gameLogo: UIImageView = {
        let imageView = UIImageView()
        imageView.frame = CGRect(x: 0, y: 0, width: 82, height: 66)
        imageView.image = UIImage(named: "small_logo")
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    private lazy var labelQuestionOne : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 1                        100 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private lazy var labelQuestionTwo : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 2                        200 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private lazy var labelQuestionThree : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 3                        300 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private lazy var labelQuestionFour : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 4                        500 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private lazy var labelQuestionFive : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 5                      1000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.20, green: 0.38, blue: 0.51, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionSix : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 6                      2000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionSeven : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 7                      4000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionEight : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 8                      8000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionNine : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 9                    16000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private lazy var labelQuestionTen : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 10                  32000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.20, green: 0.38, blue: 0.51, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionEleven : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 11                  64000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionTwelve : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 12                125000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionThreeteen : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 13                250000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionFourteen : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 14                500000 RUB"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.51, green: 0.37, blue: 0.73, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private var labelQuestionFiveteen : UILabel = {
        let label = UILabel()
        label.text = "Вопрос 15                   1 Миллион"
        label.font = UIFont(name: "Avenir Next Bold", size: 20)
        label.textAlignment = .center
        label.numberOfLines = 0
        label.textColor = .white
        label.backgroundColor = UIColor(red: 0.78, green: 0.70, blue: 0.43, alpha: 1.00)
        label.layer.cornerRadius = 16
        label.layer.masksToBounds = true
        return label
        
    }()
    
    private lazy var stack : UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 8
        return stack
    }()
    
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
extension MainGameView {
    
    func setupViews() {
        setupView(backgroundImageView)
        setupView(stack)
        setupView(gameLogo)
        //        [labelQuestionFiveteen, labelQuestionFourteen, labelQuestionThreeteen, labelQuestionTwelve, labelQuestionEleven, labelQuestionTen, labelQuestionNine, labelQuestionEight, labelQuestionSeven, labelQuestionSix, labelQuestionFive, labelQuestionFour, labelQuestionThree, labelQuestionTwo, labelQuestionOne].forEach(stack.addArrangedSubview)
        
        stack.addArrangedSubviews([labelQuestionFiveteen, labelQuestionFourteen, labelQuestionThreeteen, labelQuestionTwelve, labelQuestionEleven, labelQuestionTen, labelQuestionNine, labelQuestionEight, labelQuestionSeven, labelQuestionSix, labelQuestionFive, labelQuestionFour, labelQuestionThree, labelQuestionTwo, labelQuestionOne])
        
    }
    
    
    
    
    func constraintViews () {
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            
            
            gameLogo.centerXAnchor.constraint(equalTo: centerXAnchor),
            gameLogo.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            gameLogo.bottomAnchor.constraint(equalTo: stack.topAnchor, constant: -8),
            
            
            stack.centerXAnchor.constraint(equalTo: centerXAnchor),
            stack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 42),
            stack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -43),
            stack.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -13),
        ])
        
    }
}
