//
//  ResultViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

class ResultViewController: UIViewController {
    
    let checkResult = MainGameViewController()
    var millionaireBrain = MillionaireBrain.shared
    
    private lazy var backgroundImageView: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(named: Res.Image.backgroundImageName)
        image.contentMode = .scaleAspectFill
        
        return image
    }()

    var resultView = ResultView()
    
    func constraintViews () {
        
        backgroundImageView.frame = view.frame
        
        NSLayoutConstraint.activate([
            resultView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            resultView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            resultView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            resultView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
        ])
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.addSubview(backgroundImageView)
        view.setupView(resultView)
        constraintViews()
    }
    
    @objc func playAgainTapped(_ sender: UIButton) {
        millionaireBrain.fiftyFiftyHintUsed = false
        millionaireBrain.peopleHintUsed = false
        millionaireBrain.phoneHintUsed = false
        let welcomeViewController = WelcomeViewController()
        welcomeViewController.modalPresentationStyle = .fullScreen
        welcomeViewController.modalTransitionStyle = .crossDissolve
        present(welcomeViewController, animated: true, completion: nil)
    }
}
