//
//  ChoiceTextView.swift
//  Code History
//
//  Created by Ancel Guarayo on 3/5/23.
//

import SwiftUI

struct ChoiceTextView: View {
    
    let choiceText: String
    let accentColor = GameColor.accent
    
    var body: some View {
        Text(choiceText)
            .font(.body)
            .multilineTextAlignment(.center)
            .padding()
            .border(accentColor, width: 4)
    }
}

struct ChoiceTextView_Previews: PreviewProvider {
    static var previews: some View {
        ChoiceTextView(choiceText: "Choice Text")
    }
}
