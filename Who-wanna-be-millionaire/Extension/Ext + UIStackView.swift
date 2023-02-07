//
//  Ext + UIStackView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

extension UIStackView {
    
    // Добавление сразу массива view
    func addArrangedSubviews(_ views: [UIView]) {
        views.forEach { addArrangedSubview($0) }
    }
    
    // Конфигурация stackView
    private static func stack(subviews: [UIView], spacing: CGFloat = 0, axis: NSLayoutConstraint.Axis, alignment: Alignment = .fill, distribution: Distribution = .fill) -> UIStackView {
        let view = UIStackView(arrangedSubviews: subviews)
        view.axis = axis
        view.alignment = alignment
        view.distribution = distribution
        view.spacing = spacing
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }
}
