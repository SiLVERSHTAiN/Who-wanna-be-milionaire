//
//  ResultViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

class ResultViewController: UIViewController {

    
    // property of View
    var resultView = ResultView()
    
    
    // set constraints between SuperView and View (stackView):
    func constraintViews () {
        NSLayoutConstraint.activate([
            resultView.topAnchor.constraint(equalTo: view.topAnchor),
            resultView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            resultView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            resultView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupView(resultView)
        constraintViews()
    
    }
    
}


//// change background color:
//view.backgroundColor = .green
//
//
//// add stack view to the super view:
//view.setupView(verticalStack)
//
//// add all our elements to the stack view:
//verticalStack.addArrangedSubviews([backgroundImageView, labelImageView, attemptLabel, loseLabel, playAgainButton])
//
//setupConstraints()
