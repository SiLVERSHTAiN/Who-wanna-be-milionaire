//
//  Res.swift
//  Who-wanna-be-millionaire
//
//  Created by Aleksandr on 11.02.2023.
//

import UIKit

enum Res {
    
    enum Image {
        static let backgroundImageName = "background"
        static let bigLogo = "big_logo"
        static let registerBackground = UIImage(named: "Register background")
    }
    
    enum Text {
        static let welcomLabelText = "Welcome"
        static let register = "Register"
        static let gameNameLabelText = "to Who Wants to be a Millionare"
        static let rulesButtonTitleText = "Правила игры"
        static let startButtonTitleText = "Начать игру"
        static let loseGame = "You losed on {attempt} attempt"
        static let playAgain = "PLAY AGAIN"
        static let lose = "LOSE"
        static let buttonBackgroundImage = "Rectangle 3"
        static let fiftyBackgroundImage = "fifty-fifty_help"
        static let peopleBackgroundImage = "group_help"
        static let phoneBackgroundImage = "telephone_help"
        static let fiftyDisableBackgroundImage = "fifty-fifty_disable"
        static let peopleDisableBackgroundImage = "group_disable"
        static let phoneDisableBackgroundImage = "telephone_disable"
        static let enterUrName = "Enter your nickname"
    }
    
    enum Fonts: String {
        case textAvenirFont = "Avenir Next"
        case textAvenirFontBold = "Avenir Next Bold"
        
        static func setFont(name: Res.Fonts, size: CGFloat) -> UIFont? {
            UIFont(name: name.rawValue, size: size)
        }
    }
    
    enum Colors {
        static let backgroundColor = UIColor.init(hexString: "95D5E3")
    }
}
