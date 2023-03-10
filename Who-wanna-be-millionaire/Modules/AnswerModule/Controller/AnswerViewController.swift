//
//  AnswerViewController.swift
//  ChallengeOneCode
//
//  Created by Ян Бойко on 09.02.2023.
//

import UIKit
import AVFoundation

class AnswerViewController: UIViewController {
    
    static let shared = AnswerViewController()

    var millionaireBrain = MillionaireBrain.shared
    var player: AVAudioPlayer!
    var timer = Timer()
    var updateTimer = Timer()
    var answerView = AnswerView()
    
    var correctAnswerImage = UIImage(named: "Rectangle green")
    var waitAnswerImage = UIImage(named: "Rectangle yellow")
    var wrongAnswerImage = UIImage(named: "Rectangle red")
    
    var isAnswerRight = true
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupView(answerView)
        constraintViews()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
            playSound(soundName: "timer-sound")
            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        }
    }
    
    func constraintViews () {
        NSLayoutConstraint.activate([
            answerView.topAnchor.constraint(equalTo: view.topAnchor),
            answerView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            answerView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            answerView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        ])
    }
    
    @objc func updateTimerLabel() {
        millionaireBrain.numberOfSeconds = 30
    }
    
    @objc func updateCounter() {
        if millionaireBrain.numberOfSeconds != 0 {
            millionaireBrain.numberOfSeconds -= 1
            let temp = "0:\(millionaireBrain.numberOfSeconds)"
            answerView.setTimerLabel(temp)
        } else {
            timer.invalidate()
            
            var prize = 0
            let arr = millionaireBrain.questionArray[millionaireBrain.questionNumber - 1].sum
            let arrNumber = Int(arr.dropLast(1))
            
            guard let arrNumber else { return }
            print(arrNumber)
            switch arrNumber {
            case 0..<1000: prize = 0
            case 1000..<32000: prize = 1000
            case 32000..<1000000: prize = 32000
            case 1000000: prize = 1000000
            default: return
            }

            millionaireBrain.prize = "\(prize)р"
            
            let mainGameViewController = MainGameViewController()
            let tag = millionaireBrain.questionNumber
            switch tag {
            case 1:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemRed
            case 2:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemRed
            case 3:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemRed
            case 4:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemRed
            case 5:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemRed
            case 6:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemRed
            case 7:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemRed
            case 8:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemRed
            case 9:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemRed
            case 10:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemRed
            case 11:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemRed
            case 12:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemRed
            case 13:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemRed
            case 14:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFourteen.backgroundColor = .systemRed
            case 15:
                mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFourteen.backgroundColor = .systemGreen
                mainGameViewController.mainGameView.labelQuestionFiveteen.backgroundColor = .systemRed
            default:
                print("ERROR")
            }
            mainGameViewController.modalPresentationStyle = .fullScreen
            mainGameViewController.modalTransitionStyle = .crossDissolve
            isAnswerRight = false
            mainGameViewController.answerViewValue = isAnswerRight
            present(mainGameViewController, animated: true, completion: nil)
        }
    }
    
    @objc func takeMoney(_ button: UIButton) {
        let arr = millionaireBrain.questionArray[millionaireBrain.questionNumber - 1].sum
        
        print(arr)
        millionaireBrain.prize = arr
        timer.invalidate()
        player.stop()
        millionaireBrain.questionNumber = 1
        
        let ResultViewController = ResultViewController()
        ResultViewController.modalPresentationStyle = .fullScreen
        ResultViewController.modalTransitionStyle = .crossDissolve
        present(ResultViewController, animated: true, completion: nil)
    }
    
    func playSound(soundName: String) {
        let url = Bundle.main.url(forResource: soundName, withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
    }
    
    @objc func answerButtonTapped(_ sender: UIButton) {
        timer.invalidate()
        player.stop()
        let checkAnswer = millionaireBrain.checkAnswer(sender)
        isAnswerRight = checkAnswer.1
        print(isAnswerRight, "eto v nthode")
        
        answerView.disableButtons()
        
        if checkAnswer.1 {
            playSound(soundName: "waitForInspection")
            checkAnswer.0.setBackgroundImage(waitAnswerImage, for: .normal)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                player.stop()
                playSound(soundName: "correctAnswer")
                checkAnswer.0.setBackgroundImage(correctAnswerImage, for: .normal)
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [self] in
                player.stop()
                let mainGameViewController = MainGameViewController()
                mainGameViewController.modalPresentationStyle = .fullScreen
                mainGameViewController.modalTransitionStyle = .crossDissolve
                mainGameViewController.answerViewValue = isAnswerRight
                
                let tag = millionaireBrain.questionNumber
                switch tag {
                case 2:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                case 3:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                case 4:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                case 5:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                case 6:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                case 7:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                case 8:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                case 9:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                case 10:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                case 11:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                case 12:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                case 13:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                case 14:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemGreen
                case 15:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFourteen.backgroundColor = .systemGreen
                default:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFourteen.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFiveteen.backgroundColor = .systemYellow
                }
                
                present(mainGameViewController, animated: true, completion: nil)
            }
        } else {
            
            var prize = 0
            let arr = millionaireBrain.questionArray[millionaireBrain.questionNumber - 1].sum
            let arrNumber = Int(arr.dropLast(1))
            
            guard let arrNumber else { return }
            print(arrNumber)
            switch arrNumber {
            case 0..<1000: prize = 0
            case 1000..<32000: prize = 1000
            case 32000..<1000000: prize = 32000
            case 1000000: prize = 1000000
            default: return
            }

            millionaireBrain.prize = "\(prize)р"
            
            playSound(soundName: "waitForInspection")
            checkAnswer.0.setBackgroundImage(waitAnswerImage, for: .normal)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                player.stop()
                checkAnswer.0.setBackgroundImage(wrongAnswerImage, for: .normal)
                playSound(soundName: "wrongAnswer")
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [self] in
                player.stop()
                let mainGameViewController = MainGameViewController()
                mainGameViewController.modalPresentationStyle = .fullScreen
                mainGameViewController.modalTransitionStyle = .crossDissolve
                mainGameViewController.answerViewValue = isAnswerRight
                
                let tag = millionaireBrain.questionNumber
                switch tag {
                case 1:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemRed
                case 2:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemRed
                case 3:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemRed
                case 4:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemRed
                case 5:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemRed
                case 6:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemRed
                case 7:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemRed
                case 8:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemRed
                case 9:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemRed
                case 10:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemRed
                case 11:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemRed
                case 12:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemRed
                case 13:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemRed
                case 14:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFourteen.backgroundColor = .systemRed
                case 15:
                    mainGameViewController.mainGameView.labelQuestionOne.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwo.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThree.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFour.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFive.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionSix.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionSeven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionEight.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionNine.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTen.backgroundColor = .systemYellow
                    mainGameViewController.mainGameView.labelQuestionEleven.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionTwelve.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionThreeteen.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFourteen.backgroundColor = .systemGreen
                    mainGameViewController.mainGameView.labelQuestionFiveteen.backgroundColor = .systemRed
                default:
                    print("ERROR")
                }
                present(mainGameViewController, animated: true, completion: nil)
                
                /* - переводит на экран проигрыша
                DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [self] in
                    let ResultViewController = ResultViewController()
                    ResultViewController.modalPresentationStyle = .fullScreen
                    ResultViewController.modalTransitionStyle = .crossDissolve
                    present(ResultViewController, animated: true, completion: nil)
                }
                */
            }
        }
    }
}


