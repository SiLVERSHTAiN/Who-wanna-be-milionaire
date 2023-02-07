//
//  WelcomeViewController.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    let welcomeView = WelcomeView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(welcomeView)
        configure()
    }
    
}

extension WelcomeViewController {
    
    func configure(){
        
        NSLayoutConstraint.activate([
            welcomeView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50),
            welcomeView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50),
            welcomeView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            welcomeView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            
        ])
    }
}
