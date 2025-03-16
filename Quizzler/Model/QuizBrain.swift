//
//  QuizBrain.swift
//  Quizzler
//
//  Created by Deepanshu Bajaj on 03/12/24.
//

import Foundation

struct QuizBrain {
    let quiz = [
        Question(q: "A slug's blood is green.", correctAnswer: "True"),
        Question(q: "Approximately one quarter of human bones are in the feet.", correctAnswer: "True"),
        Question(q: "The total surface area of two human lungs is approximately 70 square metres.", correctAnswer: "True"),
        Question(q: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", correctAnswer: "True"),
        Question(q: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", correctAnswer: "False"),
        Question(q: "It is illegal to pee in the Ocean in Portugal.", correctAnswer: "True"),
        Question(q: "You can lead a cow down stairs but not up stairs.", correctAnswer: "False"),
        Question(q: "Google was originally called 'Backrub'.", correctAnswer: "True"),
        Question(q: "Buzz Aldrin's mother's maiden name was 'Moon'.", correctAnswer: "True"),
        Question(q: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", correctAnswer: "False"),
        Question(q: "No piece of square dry paper can be folded in half more than 7 times.", correctAnswer: "False"),
        Question(q: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", correctAnswer: "True")
    ]
    
    var questionNumber = 0
    var score = 0
    
    mutating func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quiz[questionNumber].rightAnswer {
            score += 1
            return true
        } else {
            return false
        }
    }
    
    func getQuestionText() -> String {
        return quiz[questionNumber].text
    }
    
    func getProgress() -> Float {
        return Float(questionNumber + 1) / Float(quiz.count)
    }
    
    func getScore() -> Int {
        return score
    }
    
    func getPercentage() -> Float {
        let totalQuestions = quiz.count
        guard totalQuestions > 0 else { return 0.0 } // Prevent division by zero
        let scorePercentage = (Float(score) / Float(totalQuestions)) * 100
        return round(scorePercentage * 100) / 100  // Round to 2 decimal places
    }
    
    mutating func nextQuestion() {
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
            score = 0
        }
    }
}
