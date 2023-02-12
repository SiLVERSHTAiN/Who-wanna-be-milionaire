//
//  MainGameViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

protocol passQuestionNumberDelegate {
   mutating func passQuestionNumber(number: Int)
}

import UIKit

class MainGameViewController: UIViewController {
    
    let mainGameView = MainGameView()
    let questionNumber = MillionaireBrain.shared
    
    var delegate: passQuestionNumberDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .red
        setupViews()
        setConstraints()
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
            let AnswerViewController = AnswerViewController()
            AnswerViewController.modalPresentationStyle = .fullScreen
            AnswerViewController.modalTransitionStyle = .crossDissolve
            present(AnswerViewController, animated: true, completion: nil)
        }
        
        delegate?.passQuestionNumber(number: questionNumber.questionNumber)
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

