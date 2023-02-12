//
//  AnswerView.swift
//  ChallengeOneCode
//
//  Created by Ян Бойко on 10.02.2023.
//

import UIKit

class AnswerView: BaseView {
    
    var millionaireBrain = MillionaireBrain.shared
    
    lazy var answerButtonsArray: [UIButton] = [firstAnswerButton, secondAnswerButton, thirdAnswerButton, fourthAnswerButton]
    lazy var answerLabelsArray: [UILabel] = [answerALabel, answerBLabel, answerCLabel, answerDLabel]
    
    let baseViewOne = UIView()
    let baseViewTwo = UIView()
    let baseViewThree = UIView()
    let baseViewFour = UIView()
    
    let backgroundImage = UIImage(named: Res.Image.backgroundImageName)
    let logoImage = UIImage(named: Res.Image.bigLogo)
    let buttonBackgroundImage = UIImage(named: Res.Text.buttonBackgroundImage)
    let fiftyBackgroundImage = UIImage(named: Res.Text.fiftyBackgroundImage)
    let peopleBackgroundImage = UIImage(named: Res.Text.peopleBackgroundImage)
    let phoneBackgroundImage = UIImage(named: Res.Text.phoneBackgroundImage)
    let fiftyDisableBackgroundImage = UIImage(named: Res.Text.fiftyDisableBackgroundImage)
    let peopleDisableBackgroundImage = UIImage(named: Res.Text.peopleDisableBackgroundImage)
    let phoneDisableBackgroundImage = UIImage(named: Res.Text.phoneDisableBackgroundImage)
    
    private lazy var backgroundImageView: UIImageView = {
        let view = UIImageView(image: backgroundImage)
        view.contentMode = .scaleToFill
        
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var logoImageView: UIImageView = {
        let view = UIImageView(image: logoImage)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var questionLabel: UILabel = {
        let view = UILabel()
        view.text = millionaireBrain.getQuestionText()
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .left
        view.numberOfLines = 0
        view.adjustsFontSizeToFitWidth = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var questionNumberLabel: UILabel = {
        let view = UILabel()
        view.text = "Question 1"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.adjustsFontSizeToFitWidth = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var timerLabel: UILabel = {
        let view = UILabel()
        view.text = "0:\(millionaireBrain.numberOfSeconds)"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .center
        view.numberOfLines = 1
        view.adjustsFontSizeToFitWidth = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func setTimerLabel(_ timer: String) {
        timerLabel.text = timer
    }
    
    private lazy var prizeLabel: UILabel = {
        let view = UILabel()
        view.text = "250 RUB"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .right
        view.numberOfLines = 1
        view.adjustsFontSizeToFitWidth = true
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var ALabel: UILabel = {
        let view = UILabel()
        view.text = "A"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .left
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var answerALabel: UILabel = {
        let view = UILabel()
        view.text = "1111"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var BLabel: UILabel = {
        let view = UILabel()
        view.text = "B"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var answerBLabel: UILabel = {
        let view = UILabel()
        view.text = "2222"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var CLabel: UILabel = {
        let view = UILabel()
        view.text = "C"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var answerCLabel: UILabel = {
        let view = UILabel()
        view.text = "3333"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var DLabel: UILabel = {
        let view = UILabel()
        view.text = "D"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var answerDLabel: UILabel = {
        let view = UILabel()
        view.text = "4444"
        view.textColor = .white
        view.font = Res.Fonts.setFont(name: .textAvenirFont, size: 24)
        view.textAlignment = .natural
        view.numberOfLines = 1
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var firstAnswerButton: UIButton = {
        let view = UIButton()
        let answer = millionaireBrain.quiz[millionaireBrain.questionNumber].answer[0]
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        view.setBackgroundImage(buttonBackgroundImage, for: .normal)
        view.setTitle(answer, for: .normal)
        print(view.currentTitle!)
        view.setTitleColor(color, for: .normal)
        view.makeSystem(view)
        view.addTarget(nil, action: #selector(AnswerViewController.answerButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var secondAnswerButton: UIButton = {
        let view = UIButton()
        let answer = millionaireBrain.quiz[millionaireBrain.questionNumber].answer[1]
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        view.setBackgroundImage(buttonBackgroundImage, for: .normal)
        view.setTitle(answer, for: .normal)
        view.setTitleColor(color, for: .normal)
        view.makeSystem(view)
        view.addTarget(nil, action: #selector(AnswerViewController.answerButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var thirdAnswerButton: UIButton = {
        let view = UIButton()
        let answer = millionaireBrain.quiz[millionaireBrain.questionNumber].answer[2]
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        view.setBackgroundImage(buttonBackgroundImage, for: .normal)
        view.setTitle(answer, for: .normal)
        view.setTitleColor(color, for: .normal)
        view.makeSystem(view)
        view.addTarget(nil, action: #selector(AnswerViewController.answerButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var fourthAnswerButton: UIButton = {
        let view = UIButton()
        let answer = millionaireBrain.quiz[millionaireBrain.questionNumber].answer[3]
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        view.setBackgroundImage(buttonBackgroundImage, for: .normal)
        view.setTitle(answer, for: .normal)
        view.setTitleColor(color, for: .normal)
        view.makeSystem(view)
        view.addTarget(nil, action: #selector(AnswerViewController.answerButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    func showFiftyFiftyHint(_ answers: [String], _ buttons: [UIButton], _ labels: [UILabel]) {
        if millionaireBrain.fiftyFiftyHintUsed {
            return
        } else {
            millionaireBrain.fiftyFiftyHintUsed = true
            let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
            var i = 0
            for button in buttons {
                if answers[0] != button.currentTitle! && answers[1] != button.currentTitle! {
                    labels[i].textColor = UIColor(cgColor: color.cgColor)
                }
                i += 1
            }
        }
    }
    
    private lazy var fiftyHintButton: UIButton = {
        let view = UIButton()
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        view.setTitle("50/50", for: .normal)
        view.setTitleColor(color, for: .normal)
        view.setBackgroundImage(fiftyBackgroundImage, for: .normal)
        view.makeSystem(view)
        view.addTarget(self, action: #selector(hintButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var peopleHintButton: UIButton = {
        let view = UIButton()
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        view.setTitle("people", for: .normal)
        view.setTitleColor(color, for: .normal)
        view.setBackgroundImage(peopleBackgroundImage, for: .normal)
        view.makeSystem(view)
        view.addTarget(self, action: #selector(hintButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var phoneHintButton: UIButton = {
        let view = UIButton()
        let color = UIColor(red: 1, green: 1, blue: 1, alpha: 0)
        view.setTitle("phone", for: .normal)
        view.setTitleColor(color, for: .normal)
        view.setBackgroundImage(phoneBackgroundImage, for: .normal)
        view.makeSystem(view)
        view.addTarget(self, action: #selector(hintButtonTapped), for: .touchUpInside)
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    @objc func hintButtonTapped(sender: UIButton) {
        
        guard let choose = sender.currentTitle else { return }
        
        switch choose {
        case "50/50":
            sender.setBackgroundImage(fiftyDisableBackgroundImage, for: .normal)
            let answers = millionaireBrain.fiftyFiftyHint()
            print(answers)
            showFiftyFiftyHint(answers, answerButtonsArray, answerLabelsArray)
        case "people":
            sender.setBackgroundImage(peopleDisableBackgroundImage, for: .normal)
            millionaireBrain.peopleHint(firstAnswerButton, secondAnswerButton, thirdAnswerButton, fourthAnswerButton, answerALabel, answerBLabel, answerCLabel, answerDLabel)
        case "phone":
            sender.setBackgroundImage(phoneDisableBackgroundImage, for: .normal)
            millionaireBrain.phoneHint(firstAnswerButton, secondAnswerButton, thirdAnswerButton, fourthAnswerButton, answerALabel, answerBLabel, answerCLabel, answerDLabel)
        default:
            return
        }
    }

    private lazy var logoQuestionStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fill
        view.spacing = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var questionPrizeStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fillEqually
        view.spacing = 0
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var answerButtonStack: UIStackView = {
        let view = UIStackView()
        view.axis = .vertical
        view.alignment = .center
        view.distribution = .fillEqually
        view.spacing = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var hintButtonStack: UIStackView = {
        let view = UIStackView()
        view.axis = .horizontal
        view.alignment = .fill
        view.distribution = .fillEqually
        view.spacing = 20
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override func setupViews() {
        backgroundColor = .blue
        setupView(backgroundImageView)
        setupView(logoQuestionStack)
        setupView(questionPrizeStack)
        setupView(answerButtonStack)
        setupView(hintButtonStack)
        
        millionaireBrain.getAnswers(answerALabel, answerBLabel, answerCLabel, answerDLabel)
        
        firstAnswerButton.addSubview(ALabel)
        firstAnswerButton.addSubview(answerALabel)
        secondAnswerButton.addSubview(BLabel)
        secondAnswerButton.addSubview(answerBLabel)
        thirdAnswerButton.addSubview(CLabel)
        thirdAnswerButton.addSubview(answerCLabel)
        fourthAnswerButton.addSubview(DLabel)
        fourthAnswerButton.addSubview(answerDLabel)
        
        baseViewOne.addSubview(firstAnswerButton)
        baseViewTwo.addSubview(secondAnswerButton)
        baseViewThree.addSubview(thirdAnswerButton)
        baseViewFour.addSubview(fourthAnswerButton)
        
        logoQuestionStack.addArrangedSubview(logoImageView)
        logoQuestionStack.addArrangedSubview(questionLabel)
        
        questionPrizeStack.addArrangedSubview(questionNumberLabel)
        questionPrizeStack.addArrangedSubview(timerLabel)
        questionPrizeStack.addArrangedSubview(prizeLabel)
        
        answerButtonStack.addArrangedSubview(baseViewOne)
        answerButtonStack.addArrangedSubview(baseViewTwo)
        answerButtonStack.addArrangedSubview(baseViewThree)
        answerButtonStack.addArrangedSubview(baseViewFour)
        
        hintButtonStack.addArrangedSubview(fiftyHintButton)
        hintButtonStack.addArrangedSubview(peopleHintButton)
        hintButtonStack.addArrangedSubview(phoneHintButton)
        
        setupConstraints()
    }
    
    func setupConstraints() {
        NSLayoutConstraint.activate([
            
            backgroundImageView.topAnchor.constraint(equalTo: topAnchor),
            backgroundImageView.bottomAnchor.constraint(equalTo: bottomAnchor),
            backgroundImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            backgroundImageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            
            logoImageView.widthAnchor.constraint(equalToConstant: 87),
            logoImageView.heightAnchor.constraint(equalToConstant: 87),
            
            logoQuestionStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 0),
            logoQuestionStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            logoQuestionStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            questionPrizeStack.topAnchor.constraint(equalTo: logoQuestionStack.bottomAnchor, constant: 20),
            questionPrizeStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            questionPrizeStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            ALabel.leadingAnchor.constraint(equalTo: firstAnswerButton.leadingAnchor, constant: 15),
            ALabel.centerYAnchor.constraint(equalTo: firstAnswerButton.centerYAnchor),
            
            answerALabel.trailingAnchor.constraint(equalTo: firstAnswerButton.trailingAnchor, constant: -15),
            answerALabel.centerYAnchor.constraint(equalTo: firstAnswerButton.centerYAnchor),
            
            BLabel.leadingAnchor.constraint(equalTo: secondAnswerButton.leadingAnchor, constant: 15),
            BLabel.centerYAnchor.constraint(equalTo: secondAnswerButton.centerYAnchor),
            
            answerBLabel.trailingAnchor.constraint(equalTo: secondAnswerButton.trailingAnchor, constant: -15),
            answerBLabel.centerYAnchor.constraint(equalTo: secondAnswerButton.centerYAnchor),
            
            CLabel.leadingAnchor.constraint(equalTo: thirdAnswerButton.leadingAnchor, constant: 15),
            CLabel.centerYAnchor.constraint(equalTo: thirdAnswerButton.centerYAnchor),
            
            answerCLabel.trailingAnchor.constraint(equalTo: thirdAnswerButton.trailingAnchor, constant: -15),
            answerCLabel.centerYAnchor.constraint(equalTo: thirdAnswerButton.centerYAnchor),
            
            DLabel.leadingAnchor.constraint(equalTo: fourthAnswerButton.leadingAnchor, constant: 15),
            DLabel.centerYAnchor.constraint(equalTo: fourthAnswerButton.centerYAnchor),
            
            answerDLabel.trailingAnchor.constraint(equalTo: fourthAnswerButton.trailingAnchor, constant: -15),
            answerDLabel.centerYAnchor.constraint(equalTo: fourthAnswerButton.centerYAnchor),
            
            firstAnswerButton.topAnchor.constraint(equalTo: baseViewOne.topAnchor),
            firstAnswerButton.bottomAnchor.constraint(equalTo: baseViewOne.bottomAnchor),
            firstAnswerButton.leadingAnchor.constraint(equalTo: baseViewOne.leadingAnchor),
            firstAnswerButton.trailingAnchor.constraint(equalTo: baseViewOne.trailingAnchor),
            
            secondAnswerButton.topAnchor.constraint(equalTo: baseViewTwo.topAnchor),
            secondAnswerButton.bottomAnchor.constraint(equalTo: baseViewTwo.bottomAnchor),
            secondAnswerButton.leadingAnchor.constraint(equalTo: baseViewTwo.leadingAnchor),
            secondAnswerButton.trailingAnchor.constraint(equalTo: baseViewTwo.trailingAnchor),
            
            thirdAnswerButton.topAnchor.constraint(equalTo: baseViewThree.topAnchor),
            thirdAnswerButton.bottomAnchor.constraint(equalTo: baseViewThree.bottomAnchor),
            thirdAnswerButton.leadingAnchor.constraint(equalTo: baseViewThree.leadingAnchor),
            thirdAnswerButton.trailingAnchor.constraint(equalTo: baseViewThree.trailingAnchor),
            
            fourthAnswerButton.topAnchor.constraint(equalTo: baseViewFour.topAnchor),
            fourthAnswerButton.bottomAnchor.constraint(equalTo: baseViewFour.bottomAnchor),
            fourthAnswerButton.leadingAnchor.constraint(equalTo: baseViewFour.leadingAnchor),
            fourthAnswerButton.trailingAnchor.constraint(equalTo: baseViewFour.trailingAnchor),
            
            answerButtonStack.topAnchor.constraint(equalTo: questionPrizeStack.bottomAnchor, constant: 40),
            answerButtonStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            answerButtonStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            
            hintButtonStack.topAnchor.constraint(lessThanOrEqualTo: answerButtonStack.bottomAnchor, constant: 100),
            hintButtonStack.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 20),
            hintButtonStack.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -20),
            hintButtonStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -40),
            hintButtonStack.heightAnchor.constraint(equalToConstant: 81)
        ])
    }
}


