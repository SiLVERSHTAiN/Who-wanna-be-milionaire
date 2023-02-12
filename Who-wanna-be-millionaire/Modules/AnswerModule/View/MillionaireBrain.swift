//
//  MillionaireBrain.swift
//  ChallengeOneCode
//
//  Created by Ян Бойко on 09.02.2023.
//

import UIKit

struct MillionaireBrain {
    
    var questionNumber = 0
    var numberOfSeconds = 30
    var fiftyFiftyHintUsed = false
    var peopleHintSsed = false
    var phoneHintUsed = false
    
    let quiz = [
        Question(q: "Как называют беспилотный летательный аппарат?", a: ["Дрон", "Фаэтон", "Махаон", "Десептикон"], correctAnswer: "Дрон"),
        Question(q: "В какой игре не используют мяч?", a: ["Волейбол", "Бейсбол", "Теннис", "Керлинг"], correctAnswer: "Керлинг"),
        Question(q: "Что в сказках было семимильным?", a: ["Ковер", "Одежда", "Сапоги", "Мотоцикл"], correctAnswer: "Ковер")
    ]
   
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getAnswers(_ a: UILabel, _ b: UILabel, _ c: UILabel, _ d: UILabel) {
        a.text = quiz[questionNumber].answers[0]
        b.text = quiz[questionNumber].answers[1]
        c.text = quiz[questionNumber].answers[2]
        d.text = quiz[questionNumber].answers[3]
    }
    
    mutating func checkAnswer(_ button: UIButton) -> (UIButton, Bool) {
        let title = button.currentTitle ?? "Error"
        switch title {
        case quiz[questionNumber].correctAnswer:
            print("Ответ верный")
            if questionNumber < quiz.count {
                questionNumber += 1
            }
            return (button, true)
        default:
            print("Ответ не верный")
            return (button, false)
        }
    }
    
    func fiftyFiftyHint() -> [String] {
        let correctAnswer = quiz[questionNumber].correctAnswer
        var secondAnswer = quiz[questionNumber].correctAnswer
        
        while secondAnswer == correctAnswer {
            secondAnswer = quiz[questionNumber].answers[Int.random(in: 0...3)]
            print(secondAnswer)
        }
        
        return [correctAnswer, secondAnswer]
    }
    
    func peopleHint(
            _ firstButton: UIButton,
            _ secondButton: UIButton,
            _ thirdButton: UIButton,
            _ fourthButton: UIButton,
            _ answerALabel: UILabel,
            _ answerBLabel: UILabel,
            _ answerCLabel: UILabel,
            _ answerDLabel: UILabel
    )
    {
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        let correctAnswer = quiz[questionNumber].correctAnswer
        let answersArray: [String] = [correctAnswer, correctAnswer, correctAnswer, correctAnswer, correctAnswer, correctAnswer, correctAnswer]
        let randomAnswer = answersArray[Int.random(in: 0...6)]
        
        switch randomAnswer {
        case firstButton.currentTitle!:
            answerBLabel.textColor = UIColor(cgColor: color.cgColor)
            answerCLabel.textColor = UIColor(cgColor: color.cgColor)
            answerDLabel.textColor = UIColor(cgColor: color.cgColor)
        case secondButton.currentTitle!:
            answerALabel.textColor = UIColor(cgColor: color.cgColor)
            answerCLabel.textColor = UIColor(cgColor: color.cgColor)
            answerDLabel.textColor = UIColor(cgColor: color.cgColor)
        case thirdButton.currentTitle!:
            answerALabel.textColor = UIColor(cgColor: color.cgColor)
            answerBLabel.textColor = UIColor(cgColor: color.cgColor)
            answerDLabel.textColor = UIColor(cgColor: color.cgColor)
        case fourthButton.currentTitle!:
            answerALabel.textColor = UIColor(cgColor: color.cgColor)
            answerBLabel.textColor = UIColor(cgColor: color.cgColor)
            answerCLabel.textColor = UIColor(cgColor: color.cgColor)
        default:
            return
        }
    }
    
    func phoneHint(
            _ firstButton: UIButton,
            _ secondButton: UIButton,
            _ thirdButton: UIButton,
            _ fourthButton: UIButton,
            _ answerALabel: UILabel,
            _ answerBLabel: UILabel,
            _ answerCLabel: UILabel,
            _ answerDLabel: UILabel
    )
    {
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        let correctAnswer = quiz[questionNumber].correctAnswer
        let answersArray: [String] = [correctAnswer, correctAnswer, correctAnswer, correctAnswer, correctAnswer, correctAnswer, correctAnswer]
        let randomAnswer = answersArray[Int.random(in: 0...6)]
        
        switch randomAnswer {
        case firstButton.currentTitle!:
            answerBLabel.textColor = UIColor(cgColor: color.cgColor)
            answerCLabel.textColor = UIColor(cgColor: color.cgColor)
            answerDLabel.textColor = UIColor(cgColor: color.cgColor)
        case secondButton.currentTitle!:
            answerALabel.textColor = UIColor(cgColor: color.cgColor)
            answerCLabel.textColor = UIColor(cgColor: color.cgColor)
            answerDLabel.textColor = UIColor(cgColor: color.cgColor)
        case thirdButton.currentTitle!:
            answerALabel.textColor = UIColor(cgColor: color.cgColor)
            answerBLabel.textColor = UIColor(cgColor: color.cgColor)
            answerDLabel.textColor = UIColor(cgColor: color.cgColor)
        case fourthButton.currentTitle!:
            answerALabel.textColor = UIColor(cgColor: color.cgColor)
            answerBLabel.textColor = UIColor(cgColor: color.cgColor)
            answerCLabel.textColor = UIColor(cgColor: color.cgColor)
        default:
            return
        }
    }
}

