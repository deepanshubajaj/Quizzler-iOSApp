//
//  Question.swift
//  Quizzler
//
//  Created by Deepanshu Bajaj on 03/12/24.
//

import Foundation

struct Question {
    let text: String
    let answers: [String] = ["True", "False"] 
    let rightAnswer: String
    
    init(q: String, correctAnswer: String) {
        text = q
        rightAnswer = correctAnswer
    }
}
