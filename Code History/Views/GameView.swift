//
//  ContentView.swift
//  Code History
//
//  Created by Ancel Guarayo on 27/4/23.
//

import SwiftUI

struct GameView: View {
    
    let question = Question(questionText: "What was the first omputer bug?", possibleAnswers: ["Ant", "Beetle", "Moth", "Fly"], correctAnswerIndex: 2)
    
    @State var mainColor = GameColor.main
    
    var body: some View {
        
        ZStack{
            mainColor.ignoresSafeArea(edges: .bottom) // blank to ignore top and bottom
            VStack{
                Text("1 / 10")
                    .font(.callout)
                    .multilineTextAlignment(.leading)
                    .padding()
                Text(question.questionText)
                    .font(.largeTitle)
                    .bold()
                    .multilineTextAlignment(.leading)
                Spacer()
                HStack{
                    ForEach(0..<question.possibleAnswers.count){ answerIndex in
                        // Define the view that will be returned for each index
                        Button(action: {
                            print("tapped on option with text: \(question.possibleAnswers[answerIndex])")
                            mainColor = answerIndex == question.correctAnswerIndex ? GameColor.correctGuess : GameColor.incorrectGuess
                        }, label: {
                            ChoiceTextView(choiceText: question.possibleAnswers[answerIndex])
                        })
                    }
                }
            }
        }
        .foregroundColor(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        GameView()
    }
}
