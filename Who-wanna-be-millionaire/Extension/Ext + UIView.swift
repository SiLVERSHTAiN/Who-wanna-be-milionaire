//
//  Ext + UIView.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 07.02.2023.
//

import UIKit

extension UIView {
    
    //    добавить моргание кнопки, по аналогии с системными
    func makeSystem(_ button: UIButton) {
        button.addTarget(self, action: #selector(handleIn), for: [
            .touchDown,
            .touchDragInside
        ])
        
        button.addTarget(self, action: #selector(handleOut), for: [
            .touchUpInside,
            .touchDragOutside,
            .touchUpOutside,
            .touchDragExit,
            .touchCancel
        ])
    }
    
    @objc func handleIn() {
        UIView.animate(withDuration: 0.15) { self.alpha = 0.55 }
    }
    
    @objc func handleOut() {
        UIView.animate(withDuration: 0.15) { self.alpha = 1 }
    }
    
    func setupView(_ view: UIView) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
    }
    
    func addSubviews(_ views: UIView...) {
        views.forEach {
            addSubview($0)
            translatesAutoresizingMaskIntoConstraints = false
        }
    }
}
