//
//  NickNameModel.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 08.02.2023.
//

import UIKit

enum Resources {
    
    enum Images {
        static let background = UIImage(named: "background_gold")
        static let gameLogo = UIImage(named: "medium_logo")
        static let buttonBackgroun = UIImage(named: "Rectangle 3")
    }
    
    enum Texts {
        static let buttonText = "Register"
        static let mainText = "Enter your nickname"
    }
    
    enum Colors {
        static let buttonColorGray = UIColor(hexString: "#95D5E3")
    }
    
    enum Fonts: String {
        case textAvenirFont = "Avenir Next"
        case textAvenirFontBold = "Avenir Next Bold"
        
        static func setFont(name: Resources.Fonts, size: CGFloat) -> UIFont {
            UIFont(name: name.rawValue, size: size) ?? UIFont()
        }
    }
    
}
