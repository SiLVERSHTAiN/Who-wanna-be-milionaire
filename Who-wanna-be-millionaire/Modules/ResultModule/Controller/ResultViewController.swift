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
        let image = UIImageView()
        image.image = UIImage(named: "background")
        image.contentMode = .scaleAspectFill
        
        return image
    }()

    
    // property of View
    var resultView = ResultView()
    
    
    // set constraints between SuperView and View (stackView):
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
    
}
