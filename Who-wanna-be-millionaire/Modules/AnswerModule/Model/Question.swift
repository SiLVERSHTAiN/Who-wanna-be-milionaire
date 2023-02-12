//
//  Question.swift
//  ChallengeOneCode
//
//  Created by Ян Бойко on 09.02.2023.
//

import Foundation

struct Question {
    let question: String
    let answer: [String]
    let correctAnswer: String
    
    init(question: String, answer: [String], correctAnswer: String) {
        self.question = question
        self.answer = answer
        self.correctAnswer = correctAnswer
    }
}

