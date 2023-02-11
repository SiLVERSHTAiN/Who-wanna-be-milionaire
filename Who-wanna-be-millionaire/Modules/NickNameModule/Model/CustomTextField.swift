//
//  CustomTextField.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 09.02.2023.
//

import UIKit

class CustomTextField: UITextField {

    override func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.init(x: 10, y: 0, width: bounds.width, height: bounds.height)
    }
    
    override func textRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.init(x: 10, y: 0, width: bounds.width, height: bounds.height)
    }
    
    override func editingRect(forBounds bounds: CGRect) -> CGRect {
        return CGRect.init(x: 10, y: 0, width: bounds.width, height: bounds.height)
    }
}
