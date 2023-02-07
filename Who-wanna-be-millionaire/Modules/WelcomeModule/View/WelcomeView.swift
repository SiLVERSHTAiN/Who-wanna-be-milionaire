//
//  WelcomeView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

final class WelcomeView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupViews()
        constraintViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private lazy var labelText: UILabel = {
        let label = UILabel()
        label.text = "Hello"
        label.font = UIFont(name: "Kefa", size: 45)
        label.textAlignment = .center
        return label
    }()
    
}

extension WelcomeView {
    
    func setupViews() {
        setupView(labelText)
        
    }
    
    func constraintViews () {
        NSLayoutConstraint.activate([
            labelText.centerXAnchor.constraint(equalTo: centerXAnchor),
            labelText.centerYAnchor.constraint(equalTo: centerYAnchor)
        ])
    }
}
