//
//  ResultView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

final class ResultView: UIView {
    
    private lazy var logoImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: Res.Image.bigLogo)
        image.contentMode = .scaleAspectFill
        return image
    }()

    private lazy var descriptionTitleLabel: UILabel = {
        let label = UILabel()
        label.text = Res.Text.loseGame
        label.textColor = .white
        label.numberOfLines = 0
        label.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        label.textAlignment = .center
        label.backgroundColor = .clear
        return label
    }()
    
    private lazy var resultTitleLabel: UILabel = {
        let label = UILabel()
        label.text = Res.Text.lose
        label.textColor = UIColor.orange
        label.textColor = .init(hexString: "#F66324")
        label.textAlignment = .center
        label.numberOfLines = 0
        label.font = Res.Fonts.setFont(name: .textAvenirFont, size: 50)
        return label
    }()
    
    lazy var playAgainButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle(Res.Text.playAgain, for: .normal)
        button.titleLabel?.font = Res.Fonts.setFont(name: .textAvenirFont, size: 36)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .init(hexString: "#34B83A")
        button.layer.cornerRadius = 20
        return button
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

extension ResultView {
    
    func setupViews() {
        setupView(logoImageView)
        setupView(descriptionTitleLabel)
        setupView(resultTitleLabel)
        setupView(playAgainButton)
    }
    
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



