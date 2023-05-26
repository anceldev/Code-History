//
//  Question.swift
//  Code History
//
//  Created by Ancel Guarayo on 3/5/23.
//

import Foundation

struct Question: Hashable{
    var questionText: String
    var possibleAnswers: [String]
    var correctAnswerIndex: Int
    
    static var allQuestions = [
        Question(questionText: "Who invented the World Wide Web?", possibleAnswers: ["Steve Jobs", "Linus Torvalds", "Bill Gates", "Tim Berners-Lee"], correctAnswerIndex: 3),
        Question(questionText: "What was the first object oriented programming languaje", possibleAnswers: ["Simula", "Python", "Swift", "C"], correctAnswerIndex: 0)
    ]
}
