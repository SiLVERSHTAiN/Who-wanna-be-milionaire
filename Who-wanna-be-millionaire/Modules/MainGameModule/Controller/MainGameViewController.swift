//
//  MainGameViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

class MainGameViewController: UIViewController {
    
    static let shared = MainGameViewController()
    let mainGameView = MainGameView()
    let updateTimer = MillionaireBrain.shared
    let answerViewController = AnswerViewController()
    var answerViewValue: Bool?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupViews()
        setConstraints()
        
        print(answerViewValue!)

        if answerViewValue! {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                answerViewController.modalPresentationStyle = .fullScreen
                answerViewController.modalTransitionStyle = .crossDissolve
                
                present(answerViewController, animated: true, completion: nil)
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                let ResultViewController = ResultViewController()
                updateTimer.questionNumber = 1
                ResultViewController.modalPresentationStyle = .fullScreen
                ResultViewController.modalTransitionStyle = .crossDissolve
                present(ResultViewController, animated: true, completion: nil)
            }
        }
    }
    
    override func viewWillAppear (_ animated: Bool) {
        updateTimer.numberOfSeconds = 30
    }
}
extension MainGameViewController {
    
    func setupViews() {
        view.setupView(mainGameView)
    }
    
    func setConstraints(){
        NSLayoutConstraint.activate([
            mainGameView.topAnchor.constraint(equalTo: view.topAnchor),
            mainGameView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            mainGameView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            mainGameView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}

