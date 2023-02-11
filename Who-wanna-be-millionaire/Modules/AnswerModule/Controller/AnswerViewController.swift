//
//  AnswerViewController.swift
//  ChallengeOneCode
//
//  Created by Ян Бойко on 09.02.2023.
//

import UIKit
import AVFoundation

class AnswerViewController: UIViewController {

    var millionaireBrain = MillionaireBrain()
    var player: AVAudioPlayer!
    var timer = Timer()
    var answerView = AnswerView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        view.setupView(answerView)
        constraintViews()
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
    
    @objc func updateCounter() {
        if millionaireBrain.numberOfSeconds != 0 {
            millionaireBrain.numberOfSeconds -= 1
            let temp = "0:\(millionaireBrain.numberOfSeconds)"
            answerView.setTimerLabel(temp)
        } else {
            timer.invalidate()
            let ResultViewController = ResultViewController()
            ResultViewController.modalPresentationStyle = .fullScreen
            ResultViewController.modalTransitionStyle = .crossDissolve
            present(ResultViewController, animated: true, completion: nil)
        }
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
        
        if checkAnswer {
            let MainGameViewController = MainGameViewController()
            MainGameViewController.modalPresentationStyle = .fullScreen
            MainGameViewController.modalTransitionStyle = .crossDissolve
            present(MainGameViewController, animated: true, completion: nil)
        } else {
            let ResultViewController = ResultViewController()
            ResultViewController.modalPresentationStyle = .fullScreen
            ResultViewController.modalTransitionStyle = .crossDissolve
            present(ResultViewController, animated: true, completion: nil)
        }
    }
}

