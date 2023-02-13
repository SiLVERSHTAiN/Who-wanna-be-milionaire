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
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupView(answerView)
        constraintViews()
//        DispatchQueue.main.asyncAfter(deadline: .now() + 1) { [self] in
//            playSound(soundName: "timer-sound")
//            timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
//        }
    }
    
    override func viewWillAppear(_ animated: Bool) {
//        updateTimer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimerLabel), userInfo: nil, repeats: false)
        
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
            let MainGameViewController = MainGameViewController()
            MainGameViewController.modalPresentationStyle = .fullScreen
            MainGameViewController.modalTransitionStyle = .crossDissolve
            present(MainGameViewController, animated: true, completion: nil)
        }
    }
    
    
    @objc func takeMoney(_ button: UIButton) {
        var arr = millionaireBrain.questionArray[millionaireBrain.questionNumber - 1].sum
        print(arr)
        millionaireBrain.prize = arr
        timer.invalidate()
        player.stop()
        
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
                let MainGameViewController = MainGameViewController()
                MainGameViewController.modalPresentationStyle = .fullScreen
                MainGameViewController.modalTransitionStyle = .crossDissolve
                present(MainGameViewController, animated: true, completion: nil)
            }
        } else {
            playSound(soundName: "waitForInspection")
            checkAnswer.0.setBackgroundImage(waitAnswerImage, for: .normal)
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 5) { [self] in
                player.stop()
                checkAnswer.0.setBackgroundImage(wrongAnswerImage, for: .normal)
                playSound(soundName: "wrongAnswer")
            }
            
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 10) { [self] in
                let MainGameViewController = MainGameViewController()
                MainGameViewController.modalPresentationStyle = .fullScreen
                MainGameViewController.modalTransitionStyle = .crossDissolve
                present(MainGameViewController, animated: true, completion: nil)
            }
        }
    }
}


