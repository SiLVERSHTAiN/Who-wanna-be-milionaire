//
//  WelcomeConstants.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 12.02.2023.
//

import UIKit

enum WelcomeConstants {
    
    enum Image {
        static let backgroundImageName = "background"
        static let welcomeLogoName = "big_logo"
    }
    
    enum Text {
        static let welcomLabelText = "Welcome"
        static let register = "Регистрация"
        static let gameNameLabelText = "to Who Wants to be a Millionare"
        static let rulesButtonTitleText = "Правила игры"
        static let startButtonTitleText = "Начать игру"
    }
    
    enum Fonts: String {
        case textAvenirFont = "Avenir Next"
        case textAvenirFontBold = "Avenir Next Bold"
        
        static func setFont(name: WelcomeConstants.Fonts, size: CGFloat) -> UIFont? {
            UIFont(name: name.rawValue, size: size)
        }
    }
}
