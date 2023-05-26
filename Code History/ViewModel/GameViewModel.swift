//
//  GameViewModel.swift
//  Code History
//
//  Created by Ancel Guarayo on 26/5/23.
//

import Foundation

class GameViewModel: ObservableObject {
    
    @Published private var game = Game()
    
    var currentQuestion: Question {
        game.currentQuestion
    }
    
    var questionProgessText: String  {
        "\(game.currentQuestionIndex + 1) / \(game.numbreOfQuestions)"
    }
}
