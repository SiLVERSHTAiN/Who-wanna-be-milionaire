import UIKit

enum RulesResources {
    enum Image {
        static let backgroundImageName = "background"
        static let imageLogoName = "small_logo"
    }
    
    enum Text {
        static let backButtonTitleText = "Назад"
        static let rulesLabelText = "Правила"
        
        enum RoolsText {
            static let firstParagraph = "Игра \"Кто хочет стать миллионером\"? - это конкурс викторина, в котором участники должны правильно ответить на ряд вопросов, чтобы перейти на следующий уровень. Всего 15 вопросов, каждый вопрос стоит определенной суммы денег. Участники также получают три вида подсказок, чтобы помочь себе, если они застряли на конкретном вопросе."
            static let secondParagraph = "Вопросы “Кто хочет стать миллионером?” структурированы в соответствии с пятью различными уровнями, причем уровень сложности постепенно увеличивается. Каждый уровень содержит три вопроса."
            static let thirdParagraph = "Если участники неправильно отвечают на пятый вопрос вопрос, то они уходят ни с чем. Если на этот вопрос дан правильный ответ, участникам гарантируется 1000 рублей, даже если дадут неверный ответ до достижения следующей несгораемой суммы"
            static let fourthParagraph = "Если участники неправильно ответят на десятый вопрос, они уйдут с 1000 рублей. Если на этот вопрос ответили верно, игрокам гарантируется 32 000 рублей"
            static let fifthParagrapf = "Если участники ответили на все 15 вопросов, то они выигрывают в викторине и забирают главный приз в 1.000.000 рублей"
            static let sixthParagraph = "Участникам разрешается применить три подсказки, которые они могут использовать в любой момент викторины. Каждая из подсказок может быть использована только один раз."
            static let seventhParagraph = "50/50 - исключает два неправильных ответа из множественного выбора, оставляя участнику только один правильный и один неправильный вариант. Это означает, что у него есть шанс 50/50."
            static let eighthParagraph =  "Задать вопрос аудитории - залу задают тот же вопрос, что и участнику, и проводится быстрый опроc. На диаграмме показывается явное преимущество определенного варианта, эта подсказка может быть чрезвычайно полезной."
            static let ninthParagraph = "Позвоните другу - участникам разрешается сделать 30-секундный звонок другу или члену семьи и спросить, знают ли они ответ на вопрос."
            static let tenthParagraph = "Игра для интеллектуалов “Кто хочет стать миллионером?” создана энтузиастами, которые ценят всю силу умственного развития. Дерзайте и попробуйте выиграть свой первый миллион рублей."
            static let result = ("   \(firstParagraph)\n   \(secondParagraph)\n   \(thirdParagraph)\n   \(fourthParagraph)\n   \(fifthParagrapf)\n\n     \(sixthParagraph)\n   \(seventhParagraph)\n   \(eighthParagraph)\n   \(ninthParagraph)\n\n   \(tenthParagraph)")
        }
    }
    
    enum Fonts: String {
        case textAvenirFont = "Avenir Next"
        case textAvenirFontBold = "Avenir Next Bold"
        
        static func setFont(name: WelcomeConstants.Fonts, size: CGFloat) -> UIFont? {
            UIFont(name: name.rawValue, size: size)
        }
    }
    
    enum TextColor {
        static let greenColor = UIColor(red: 83/255, green: 225/250, blue: 165/255, alpha: 1.0)
    }
}
