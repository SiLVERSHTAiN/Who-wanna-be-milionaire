//
//  MainGameViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

class MainGameViewController: UIViewController {
    
    let mainGameView = MainGameView()
    let updateTimer = MillionaireBrain.shared
    private lazy var answerViewController = AnswerViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupViews()
        setConstraints()
        
        print(answerViewController.isAnswerRight)
        
        // Тут я пытался с помощью переменной isAnswerRight проверять правильный ли ответ на вопрос,
        // и выводить нужный экран, но почему-то переменная не меняет своего значения, как инициализировал true,
        // так и осталась тру, хотя в должна изменится в методе answerButtonTapped
        
        if answerViewController.isAnswerRight {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                let AnswerViewController = AnswerViewController()
                AnswerViewController.modalPresentationStyle = .fullScreen
                AnswerViewController.modalTransitionStyle = .crossDissolve
                
                present(AnswerViewController, animated: true, completion: nil)
            }
        } else {
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                let ResultViewController = ResultViewController()
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

