//
//  RulesView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

final class RulesView: UIView {
    
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

extension RulesView {
    
    func setupViews() {
        
    }
    
    func constraintViews () {
        
    }
    
    func configureAppearance() {
        backgroundColor = .red
    }
}
