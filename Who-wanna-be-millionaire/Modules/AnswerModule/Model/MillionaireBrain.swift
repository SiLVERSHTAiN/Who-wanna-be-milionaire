//
//  MillionaireBrain.swift
//  ChallengeOneCode
//
//  Created by Ян Бойко on 09.02.2023.
//

import UIKit

class MillionaireBrain {
        
    static let shared = MillionaireBrain()
    private(set) var questionNumber = 0
    var numberOfSeconds = 30
    var fiftyFiftyHintUsed = false
    var peopleHintSsed = false
    var phoneHintUsed = false
    
    let quiz = [
        Question(
                    question: "What sort of animal is Walt Disney's Dumbo?",
                    answer: ["Deer", "Rabbit", "Elephant", "Donkey"],
                    correctAnswer: "Elephant"
                ),
                Question(
                    question: "What was the name of the Spanish waiter in the TV sitcom \"Fawlty Towers\"?",
                    answer: ["Manuel", "Pedro", "Alfonso", "Javier"],
                    correctAnswer: "Manuel"
                ),
                Question(
                    question: "Which battles took place between the Royal Houses of York and Lancaster?",
                    answer: ["Thirty Years War", "Hundred Years War", "War of the Roses", "English Civil War"],
                    correctAnswer: "War of the Roses"
                ),
                Question(
                    question: "Which former Beatle narrated the TV adventures of Thomas the Tank Engine?",
                    answer: ["John Lennon", "Paul McCartney", "George Harrison", "Ringo Starr"],
                    correctAnswer: "Ringo Starr"
                ),
                Question(
                    question: "Queen Anne was the daughter of which English Monarch?",
                    answer: ["James II", "Henry VIII", "Victoria", "William I"],
                    correctAnswer: "James II"
                ),
                Question(
                    question: "Who composed \"Rhapsody in Blue\"?",
                    answer: ["Irving Berlin", "George Gershwin", "Aaron Copland", "Cole Porter"],
                    correctAnswer: "George Gershwin"
                ),
                Question(
                    question: "What is the Celsius equivalent of 77 degrees Fahrenheit?",
                    answer: ["15", "20", "25", "30"],
                    correctAnswer: "25"
                ),
                Question(
                    question: "Suffolk Punch and Hackney are types of what?",
                    answer: ["Carriage", "Wrestling style", "Cocktail", "Horse"],
                    correctAnswer: "Horse"
                ),
                Question(
                    question: "Which Shakespeare play features the line \"Neither a borrower nor a lender be\"?",
                    answer: ["Hamlet", "Macbeth", "Othello", "The Merchant of Venice"],
                    correctAnswer: "Hamlet"
                ),
                Question(
                    question: "Which is the largest city in the USA's largest state?",
                    answer: ["Dallas", "Los Angeles", "New York", "Anchorage"],
                    correctAnswer: "Anchorage"
                ),
                Question(
                    question: "The word \"aristocracy\" literally means power in the hands of whom?",
                    answer: ["The few", "The best", "The barons", "The rich"],
                    correctAnswer: "The best"
                ),
                Question(
                    question: "Where would a \"peruke\" be worn?",
                    answer: ["Around the neck", "On the head", "Around the waist", "On the wrist"],
                    correctAnswer: "On the head"
                ),
                Question(
                    question: "In which palace was Queen Elizabeth I born?",
                    answer: ["Greenwich", "Richmond", "Hampton Court", "Kensington"],
                    correctAnswer: "Greenwich"
                ),
                Question(
                    question: "From which author's work did scientists take the word \"quark\"?",
                    answer: ["Lewis Carroll", "Edward Lear", "James Joyce", "Aldous Huxley"],
                    correctAnswer: "James Joyce"
                ),
                Question(
                    question: "Which of these islands was ruled by Britain from 1815 until 1864?",
                    answer: ["Crete", "Cyprus", "Corsica", "Corfu"],
                    correctAnswer: "Corfu"
                )
    ]
   
    func getQuestionText() -> String {
        return quiz[questionNumber].question
    }
    
    func getAnswers(_ a: UILabel, _ b: UILabel, _ c: UILabel, _ d: UILabel) {
        a.text = quiz[questionNumber].answer[0]
        b.text = quiz[questionNumber].answer[1]
        c.text = quiz[questionNumber].answer[2]
        d.text = quiz[questionNumber].answer[3]
    }
    
    func checkAnswer(_ button: UIButton) -> (UIButton, Bool) {
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
            secondAnswer = quiz[questionNumber].answer[Int.random(in: 0...3)]
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

